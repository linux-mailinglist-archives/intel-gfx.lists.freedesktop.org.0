Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A10883A016
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 04:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C92810F1B9;
	Wed, 24 Jan 2024 03:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B8410E918;
 Wed, 24 Jan 2024 03:31:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8868882778715954820=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/i915=3A_Add_Display_Por?=
 =?utf-8?q?t_tunnel_BW_allocation_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 24 Jan 2024 03:31:58 -0000
Message-ID: <170606711846.684313.408108782495128652@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240123102850.390126-1-imre.deak@intel.com>
In-Reply-To: <20240123102850.390126-1-imre.deak@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8868882778715954820==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add Display Port tunnel BW allocation support
URL   : https://patchwork.freedesktop.org/series/129082/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14166_full -> Patchwork_129082v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/index.html

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

New tests
---------

  New tests have been introduced between CI_DRM_14166_full and Patchwork_129082v1_full:

### New IGT tests (27) ###

  * igt@gem_exec_schedule@noreorder-corked@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [1.10, 1.13] s

  * igt@gem_exec_schedule@noreorder-priority@bcs0:
    - Statuses : 5 pass(s)
    - Exec time: [1.11, 1.13] s

  * igt@gem_exec_schedule@noreorder@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.05] s

  * igt@gem_exercise_blt@fast-copy-emit@linear-lmem0-lmem0-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.06, 0.09] s

  * igt@gem_exercise_blt@fast-copy-emit@linear-lmem0-smem-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.06, 0.09] s

  * igt@gem_exercise_blt@fast-copy-emit@linear-smem-lmem0-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exercise_blt@fast-copy-emit@tile4-lmem0-lmem0-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.06, 0.10] s

  * igt@gem_exercise_blt@fast-copy-emit@tile4-lmem0-smem-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.06, 0.10] s

  * igt@gem_exercise_blt@fast-copy-emit@tile4-smem-lmem0-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exercise_blt@fast-copy-emit@tile64-lmem0-lmem0-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.06, 0.10] s

  * igt@gem_exercise_blt@fast-copy-emit@tile64-lmem0-smem-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.06, 0.10] s

  * igt@gem_exercise_blt@fast-copy-emit@tile64-smem-lmem0-emit:
    - Statuses : 2 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exercise_blt@fast-copy-emit@ymajor-lmem0-lmem0-emit:
    - Statuses : 1 pass(s)
    - Exec time: [0.06] s

  * igt@gem_exercise_blt@fast-copy-emit@ymajor-lmem0-smem-emit:
    - Statuses : 1 pass(s)
    - Exec time: [0.06] s

  * igt@gem_exercise_blt@fast-copy-emit@ymajor-smem-lmem0-emit:
    - Statuses : 1 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exercise_blt@fast-copy-emit@ymajor-smem-smem-emit:
    - Statuses : 3 pass(s)
    - Exec time: [0.01, 0.02] s

  * igt@gem_exercise_blt@fast-copy@linear-lmem0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@gem_exercise_blt@fast-copy@linear-lmem0-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@gem_exercise_blt@fast-copy@linear-smem-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exercise_blt@fast-copy@tile4-lmem0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@gem_exercise_blt@fast-copy@tile4-lmem0-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@gem_exercise_blt@fast-copy@tile4-smem-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exercise_blt@fast-copy@tile64-lmem0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@gem_exercise_blt@fast-copy@tile64-lmem0-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@gem_exercise_blt@fast-copy@tile64-smem-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.01] s

  * igt@gem_exercise_blt@fast-copy@yfmajor-smem-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@gem_exercise_blt@fast-copy@ymajor-smem-smem:
    - Statuses : 3 pass(s)
    - Exec time: [0.02, 0.04] s

  

Known issues
------------

  Here are the changes found in Patchwork_129082v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [FAIL][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) ([i915#8293]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-7/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-7/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-6/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-6/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-5/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#8411])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#8411]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#7701])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][52] ([i915#10140])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit.html

  * igt@drm_fdinfo@busy@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#8414]) +11 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@drm_fdinfo@busy@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#7697]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#9323])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7697])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][57] -> [FAIL][58] ([i915#6268])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-tglu:         [PASS][59] -> [FAIL][60] ([i915#6268])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([fdo#109314])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#280])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][63] -> [ABORT][64] ([i915#10030] / [i915#7975] / [i915#8213])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-5/igt@gem_eio@hibernate.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-10/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg1:          [PASS][65] -> [FAIL][66] ([i915#5784])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg1-18/igt@gem_eio@kms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-15/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4812]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#6344])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-dg1:          [PASS][69] -> [TIMEOUT][70] ([i915#3778])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg1-12/igt@gem_exec_endless@dispatch@vcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-15/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3539] / [i915#4852]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-rkl:          [PASS][72] -> [FAIL][73] ([i915#2842])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][74] ([i915#2876])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
    - shard-tglu:         [PASS][75] -> [FAIL][76] ([i915#2842])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          NOTRUN -> [FAIL][77] ([i915#2842]) +2 other tests fail
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([fdo#109283] / [i915#5107])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html
    - shard-tglu:         NOTRUN -> [SKIP][79] ([fdo#109283])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([fdo#112283])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([fdo#112283])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#3281])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3281]) +10 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3281]) +5 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][85] ([i915#7975] / [i915#8213])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][86] ([i915#7975] / [i915#8213])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4860])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@gem_fence_thrash@bo-copy.html
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#4860])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#4613]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#4613])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-glk8/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#4613]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#4565])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4077]) +9 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4083]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@gem_mmap_wc@bad-size.html
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#4083])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@gem_mmap_wc@bad-size.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3282]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3282]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][98] ([i915#2658])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-glk8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#4270]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4270]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#4270])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4079])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([fdo#109312])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3297]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3297]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3297] / [i915#4880])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3297] / [i915#4958])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@gem_userptr_blits@sd-probe.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([fdo#109289]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#2527] / [i915#2856]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#2856]) +2 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#2527]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#6227])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          NOTRUN -> [WARN][113] ([i915#7356])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([fdo#109289])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [PASS][115] -> [FAIL][116] ([i915#3591])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][117] ([i915#9311])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4212])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#8709]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#8709]) +7 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#8709]) +11 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#1769] / [i915#3555])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][123] -> [FAIL][124] ([i915#5138])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#5286]) +3 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([fdo#111615] / [i915#5286]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#111614]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([fdo#111614] / [i915#3638])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][129] -> [FAIL][130] ([i915#3743])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([fdo#111614]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#5190]) +13 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4538] / [i915#5190]) +2 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([fdo#111615])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([fdo#110723]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([fdo#111615]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#2705])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#2705])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#5354] / [i915#6095]) +18 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#5354]) +86 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#5354] / [i915#6095]) +12 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-4-tiled-mtl-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#5354] / [i915#6095])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_ccs@pipe-c-bad-pixel-format-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#5354]) +18 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#7828])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-tglu:         NOTRUN -> [SKIP][145] ([fdo#111827])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([fdo#111827])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#7828]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#7828]) +9 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#7828]) +3 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#3299])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#7118])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#6944] / [i915#9424])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#6944] / [i915#7116] / [i915#7118])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#3555]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3359]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-256x85:
    - shard-snb:          NOTRUN -> [SKIP][156] ([fdo#109271]) +73 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-snb2/igt@kms_cursor_crc@cursor-rapid-movement-256x85.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3359])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#3555]) +6 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#3555])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([fdo#109274]) +2 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([fdo#111825]) +5 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#9067])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#4103] / [i915#4213]) +2 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#4103])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#9833])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#9227])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#9723])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#8588])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#3840])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#3555] / [i915#3840])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#1839])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#1839])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#9337])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#658])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_feature_discovery@psr2.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#4881])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([fdo#109274] / [fdo#111767])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([fdo#109274]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([fdo#109274] / [i915#3637]) +3 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#2672]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#2672]) +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#2587] / [i915#2672]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#5274])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [FAIL][184] ([i915#6880])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][185] -> [SKIP][186] ([fdo#109271]) +9 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#5439])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3023]) +12 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([fdo#111825]) +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#8708]) +19 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#9766])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#10070])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([fdo#110189]) +5 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-glk:          NOTRUN -> [SKIP][194] ([fdo#109271]) +47 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-glk8/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#3458]) +14 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([fdo#111825] / [i915#1825]) +19 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([fdo#109280]) +17 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#3458])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#6118])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#3555] / [i915#8228])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#3555] / [i915#8228])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#4816])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#6301])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([fdo#109289]) +4 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#3555]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([fdo#109274] / [i915#5354] / [i915#9423])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9423]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#9423]) +19 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#9423]) +3 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#9423]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#5235]) +15 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#5235]) +5 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#5235] / [i915#9423]) +11 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#9685]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#5978])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_pm_dc@dc6-dpms.html
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#3361])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#9519])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][218] -> [SKIP][219] ([i915#9519])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([fdo#109293] / [fdo#109506])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#6524])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#9683]) +3 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-dg1:          NOTRUN -> [SKIP][223] ([fdo#111068] / [i915#9683])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#9685])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#4235])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([fdo#111615] / [i915#5289])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][227] ([i915#10143])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][228] ([i915#10143])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab:
    - shard-glk:          [PASS][229] -> [DMESG-WARN][230] ([i915#10143]) +1 other test dmesg-warn
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-glk3/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888:
    - shard-dg1:          [PASS][231] -> [DMESG-WARN][232] ([i915#10143])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html

  * igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][233] ([i915#5465]) +3 other tests fail
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-snb7/igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-snb:          [PASS][234] -> [FAIL][235] ([i915#9196])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-snb1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [PASS][236] -> [FAIL][237] ([i915#9196]) +2 other tests fail
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [PASS][238] -> [FAIL][239] ([i915#9196]) +1 other test fail
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#9906])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_writeback@writeback-check-output:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#2437])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#2437] / [i915#9412])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#2434])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@perf@mi-rpc.html

  * igt@perf_pmu@most-busy-check-all@rcs0:
    - shard-rkl:          [PASS][244] -> [FAIL][245] ([i915#4349])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-7/igt@perf_pmu@most-busy-check-all@rcs0.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-5/igt@perf_pmu@most-busy-check-all@rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#8516])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_udl:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([fdo#109291])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#3708])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([fdo#109295] / [i915#3291] / [i915#3708])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#3291] / [i915#3708])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][251] ([fdo#109295] / [fdo#111656])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#9917])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#9917])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-tglu:         NOTRUN -> [FAIL][254] ([i915#9779])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#4818])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_job_submission@threaded-job-submission:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#2575]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@v3d/v3d_job_submission@threaded-job-submission.html

  * igt@v3d/v3d_submit_cl@bad-bo:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#2575]) +11 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@v3d/v3d_submit_cl@bad-bo.html

  * igt@v3d/v3d_submit_cl@bad-extension:
    - shard-tglu:         NOTRUN -> [SKIP][258] ([fdo#109315] / [i915#2575]) +5 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@v3d/v3d_submit_cl@bad-extension.html

  * igt@v3d/v3d_submit_cl@single-in-sync:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([fdo#109315]) +7 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@v3d/v3d_submit_cl@single-in-sync.html

  * igt@vc4/vc4_perfmon@create-perfmon-invalid-events:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#7711]) +8 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@vc4/vc4_perfmon@create-perfmon-invalid-events.html

  * igt@vc4/vc4_tiling@get-bad-flags:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#7711]) +2 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@vc4/vc4_tiling@get-bad-flags.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#2575]) +2 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][263] ([i915#7742]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-tglu:         [ABORT][265] -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-9/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][267] ([i915#5784]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg1-13/igt@gem_eio@reset-stress.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-16/igt@gem_eio@reset-stress.html

  * igt@gem_eio@suspend:
    - shard-tglu:         [ABORT][269] ([i915#10030]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-9/igt@gem_eio@suspend.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@gem_eio@suspend.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [FAIL][271] ([i915#2842]) -> [PASS][272] +2 other tests pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-7/igt@gem_exec_fair@basic-none@vecs0.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][273] ([i915#2842]) -> [PASS][274] +1 other test pass
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_selftest@live@hangcheck:
    - shard-dg1:          [ABORT][275] ([i915#9413]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg1-16/igt@i915_selftest@live@hangcheck.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][277] ([i915#5138]) -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][279] ([i915#3743]) -> [PASS][280] +1 other test pass
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [SKIP][281] ([fdo#109271]) -> [PASS][282] +4 other tests pass
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [SKIP][283] ([i915#9519]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-rkl:          [ABORT][285] ([i915#8875]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-270.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-glk:          [DMESG-WARN][287] ([i915#10143]) -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-glk3/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [FAIL][289] ([i915#4349]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-mtlp-4/igt@perf_pmu@busy-double-start@ccs0.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-mtlp-2/igt@perf_pmu@busy-double-start@ccs0.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][291] ([i915#10131] / [i915#9820]) -> [ABORT][292] ([i915#10131] / [i915#9697])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][293] ([i915#9424]) -> [SKIP][294] ([i915#9433])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg1-17/igt@kms_content_protection@mei-interface.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-13/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-snb:          [SKIP][295] ([fdo#109271]) -> [INCOMPLETE][296] ([i915#8816])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-snb2/igt@kms_content_protection@uevent.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-snb7/igt@kms_content_protection@uevent.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][297] ([fdo#110189] / [i915#3955]) -> [SKIP][298] ([i915#3955])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][299] ([i915#4281]) -> [SKIP][300] ([i915#3361])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
    - shard-tglu:         [FAIL][301] ([i915#10136]) -> [DMESG-FAIL][302] ([i915#10143])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-tglu-8/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
    - shard-glk:          [DMESG-FAIL][303] ([i915#10143]) -> [FAIL][304] ([i915#10136])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-glk3/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [INCOMPLETE][305] ([i915#5493]) -> [CRASH][306] ([i915#9351])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
  [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10136]: https://gitlab.freedesktop.org/drm/intel/issues/10136
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10140]: https://gitlab.freedesktop.org/drm/intel/issues/10140
  [i915#10143]: https://gitlab.freedesktop.org/drm/intel/issues/10143
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9697]: https://gitlab.freedesktop.org/drm/intel/issues/9697
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/intel/issues/9766
  [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917


Build changes
-------------

  * Linux: CI_DRM_14166 -> Patchwork_129082v1

  CI-20190529: 20190529
  CI_DRM_14166: fc6b7c6ee7d786e6ed48425a2ce0e674906e4e5c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7690: aa45298ff675abbe6bf8f04ae186e2388c35f03a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129082v1: fc6b7c6ee7d786e6ed48425a2ce0e674906e4e5c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/index.html

--===============8868882778715954820==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add Display Port tunnel BW allocat=
ion support</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/129082/">https://patchwork.freedesktop.org/series/129082/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129082v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129082v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14166_full -&gt; Patchwork_129082v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v=
1/index.html</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14166_full and Patchwork_1=
29082v1_full:</p>
<h3>New IGT tests (27)</h3>
<ul>
<li>
<p>igt@gem_exec_schedule@noreorder-corked@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.10, 1.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-priority@bcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [1.11, 1.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@linear-lmem0-lmem0-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.06, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@linear-lmem0-smem-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.06, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@linear-smem-lmem0-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@tile4-lmem0-lmem0-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.06, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@tile4-lmem0-smem-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.06, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@tile4-smem-lmem0-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@tile64-lmem0-lmem0-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.06, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@tile64-lmem0-smem-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.06, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@tile64-smem-lmem0-emit:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@ymajor-lmem0-lmem0-emit:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@ymajor-lmem0-smem-emit:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@ymajor-smem-lmem0-emit:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy-emit@ymajor-smem-smem-emit:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.01, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@linear-lmem0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@linear-lmem0-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@linear-smem-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@tile4-lmem0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@tile4-lmem0-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@tile4-smem-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@tile64-lmem0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@tile64-lmem0-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@tile64-smem-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@yfmajor-smem-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exercise_blt@fast-copy@ymajor-smem-smem:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.02, 0.04] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129082v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14166/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14166/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14166/shard-rkl-6/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-6/boot.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_141=
66/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14166/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14166/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14166/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14166/shard-rkl-2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1416=
6/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14166/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shard-rkl-1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14166/shar=
d-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14166/shard-rkl-1/boot.html">PASS</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129082v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/sh=
ard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129082v1/shard-rkl-6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129082v1/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-r=
kl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_129082v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-5/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1290=
82v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129082v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1=
/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129082v1/shard-rkl-3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129082v1/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shar=
d-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_129082v1/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/boot.html=
">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@api_intel_bb@object-reloc=
-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@drm_buddy@drm_buddy@drm_te=
st_buddy_alloc_limit.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/10140">i915#10140</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@drm_fdinfo@busy@rcs0.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8414"=
>i915#8414</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/93=
23">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082=
v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12908=
2v1/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-5/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tgl=
u-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/10030">i915#10030</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg1-18/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-15/ig=
t@gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg1-12/igt@gem_exec_endless@dispatch@vcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12908=
2v1/shard-dg1-15/igt@gem_exec_endless@dispatch@vcs0.html">TIMEOUT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>)=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_exec_fair@basic-none-=
rrul.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4852">i915#4852</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9082v1/shard-rkl-7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_exec_fair@basic-pace@r=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2876">i915#2876</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082=
v1/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_exec_fair@basic-pace@v=
ecs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2842">i915#2842</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109283">fdo#109283</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5107">i915#5107</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_exec_params@secure-no=
n-master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gem_exec_params@secure-no=
n-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-=
read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
860">i915#4860</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-glk8/igt@gem_lmem_swapping@parallel-=
random-engines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_lmem_swapping@random-e=
ngines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4077">i915#4077</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@gem_mmap_wc@bad-size.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083"=
>i915#4083</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@gem_mmap_wc@bad-size.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083=
">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-glk8/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@gem_pxp@create-valid-prote=
cted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@gem_pxp@protected-raw-src=
-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gen7_exec_parse@batch-with=
out-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@gen9_exec_parse@bb-start-=
far.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@gen9_exec_parse@secure-ba=
tches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@i915_module_load@load.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/622=
7">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@i915_module_load@reload-w=
ith-fault-injection.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7356">i915#7356</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@i915_pm_rc6_residency@med=
ia-rc6-accuracy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129082v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591"=
>i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-4/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-13/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129082v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#51=
38</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_big_fb@linear-8bpp-rot=
ate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129082v1/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +13 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_big_joiner@invalid-mo=
deset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_ccs@pipe-b-bad-aux-st=
ride-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6095">i915#6095</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +86 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +12 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_ccs@pipe-c-bad-pixel-=
format-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_ccs@pipe-d-crc-primary=
-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +18 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-ed=
id-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_chamelium_hpd@hdmi-hp=
d-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_content_protection@me=
i-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-256x85:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-snb2/igt@kms_cursor_crc@cursor-rapid=
-movement-256x85.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +6 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_cursor_legacy@2x-long=
-flip-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-=
vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +2 other tests skip=
</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_feature_discovery@psr=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_fence_pin_leak.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i=
915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@kms_flip@2x-plain-flip-ts=
-check-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_force_connector_basic@=
prune-stale-modes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-1p-offscren-pri-shrfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_129082v1/shard-snb2/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +9 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +12 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +19 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
lane-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/10070">i915#10070</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +5 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-glk8/igt@kms_frontbuffer_tracking@ps=
r-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3458">i915#3458</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +19 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +17 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_getfb@getfb-reject-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6118">i915#6118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_pipe_b_c_ivb@from-pip=
e-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109289">fdo#109289</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@kms_plane_multiple@tiling-=
4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) =
+3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-h=
dmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-18/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1=
9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b-hd=
mi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-h=
dmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-13/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-1/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9=
423</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5978">i=
915#5978</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_pm_dc@dc6-dpms.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3361">=
i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset=
-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9082v1/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_pm_rpm@pc8-residency.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9683">i915#9683</a>) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@kms_rotation_crc@primary-=
rotation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">DMESG-FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915=
#10143</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_sw=
ab:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_swab.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-glk3/igt@kms_selftest@drm_f=
ormat_helper@drm_format_helper_test-drm_test_fb_swab.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#1014=
3</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xr=
gb8888_to_abgr8888:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_xrgb8888_to_abgr8888.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg1-15/ig=
t@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb888=
8_to_abgr8888.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/10143">i915#10143</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-snb7/igt@kms_setmode@basic@pipe-a-vg=
a-1-pipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5465">i915#5465</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-snb1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi=
-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_129082v1/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pip=
e-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129082v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-d-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_129082v1/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak=
@pipe-d-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-6/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-7/igt@perf_pmu@most-busy-check-all@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129=
082v1/shard-rkl-5/igt@perf_pmu@most-busy-check-all@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>=
)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8516=
">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@prime_udl.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#10929=
1</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@prime_vgem@basic-fence-fli=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291=
">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09295">fdo#109295</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111656">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-5/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@syncobj_wait@invalid-wait=
-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9779">i915#9779</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4818">i915#4818</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@threaded-job-submission:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg1-19/igt@v3d/v3d_job_submission@th=
readed-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-10/igt@v3d/v3d_submit_cl@bad-bo.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2575">i915#2575</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-extension:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@v3d/v3d_submit_cl@bad-ext=
ension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2575">i915#2575</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@single-in-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-3/igt@v3d/v3d_submit_cl@single-i=
n-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109315">fdo#109315</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-perfmon-invalid-events:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-dg2-6/igt@vc4/vc4_perfmon@create-per=
fmon-invalid-events.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7711">i915#7711</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-flags:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-rkl-2/igt@vc4/vc4_tiling@get-bad-fla=
gs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-tglu-6/igt@vc4/vc4_wait_seqno@bad-se=
qno-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i91=
5#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129082v1/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-9/igt@gem_ctx_isolation@preservation-s3@vecs0.html=
">ABORT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129082v1/shard-tglu-6/igt@gem_ctx_isolation@preservation-s3@vecs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/=
shard-dg1-16/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-9/igt@gem_eio@suspend.html">ABORT</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/10030">i915#10030</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/sh=
ard-tglu-5/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129082v1/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> +2 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129082v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg1-16/igt@i915_selftest@live@hangcheck.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#941=
3</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129082v1/shard-dg1-19/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129082v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu-4/igt@kms_big_fb@x-tiled=
-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +1 other test pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-snb7/igt@kms_frontbuffer_tr=
acking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +4 other tests =
pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082=
v1/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-270.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8875">=
i915#8875</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129082v1/shard-rkl-3/igt@kms_rotation_crc@primary-rotation-270.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/10143">i915#10143</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-glk3/=
igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_=
offset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-mtlp-4/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_129082v1/shard-mtlp-2/igt@perf_pmu@busy-double-start@ccs0.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9820">i915#9820</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129082v1/shard-mtlp-1/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/10131">i915#10131</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/9697">i915#9697</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg1-17/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9424">i=
915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_129082v1/shard-dg1-13/igt@kms_content_protection@mei-interface.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9433"=
>i915#9433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-snb2/igt@kms_content_protection@uevent.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129082v1/shard-snb7/igt@kms_content_protection@uevent.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915#8816=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12908=
2v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/sha=
rd-rkl-1/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-tglu-8/igt@kms_selftest@drm_format_helper@drm_format_he=
lper_test-drm_test_fb_build_fourcc_list.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/10136">i915#10136</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-tglu=
-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/10143">i915#10143</a>)</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_build_fourcc_list.html">DMESG-FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v1/shard-=
glk3/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_=
build_fourcc_list.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/10136">i915#10136</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14166/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_129082v1/shard-dg2-5/igt@prime_mmap@test_ape=
rture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/9351">i915#9351</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14166 -&gt; Patchwork_129082v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14166: fc6b7c6ee7d786e6ed48425a2ce0e674906e4e5c @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7690: aa45298ff675abbe6bf8f04ae186e2388c35f03a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129082v1: fc6b7c6ee7d786e6ed48425a2ce0e674906e4e5c @ git://anon=
git.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8868882778715954820==--
