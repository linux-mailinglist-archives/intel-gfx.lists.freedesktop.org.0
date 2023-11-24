Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A147F77CF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 16:29:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882FB10E806;
	Fri, 24 Nov 2023 15:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42C2F10E802;
 Fri, 24 Nov 2023 15:29:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3870DAADD7;
 Fri, 24 Nov 2023 15:29:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3497377357071171701=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Date: Fri, 24 Nov 2023 15:29:24 -0000
Message-ID: <170083976418.13022.12235707727694820846@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRFAg?=
 =?utf-8?q?DSC_min/max_src_bpc_fixes_=28rev5=29?=
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

--===============3497377357071171701==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DP DSC min/max src bpc fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/125571/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13913_full -> Patchwork_125571v5_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/index.html

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-tglu0 

New tests
---------

  New tests have been introduced between CI_DRM_13913_full and Patchwork_125571v5_full:

### New IGT tests (4) ###

  * igt@kms_cdclk@mode-transition@pipe-a-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cdclk@mode-transition@pipe-c-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_125571v5_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [FAIL][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#8293]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#8414]) +7 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#8414]) +20 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-7/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#4873])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_caching@reads.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#9323])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#6335])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#1099])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-snb2/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#8555])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8555]) +2 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#280])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#280]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#4771])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_exec_balancer@bonded-pair.html
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4771])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-7/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#6334]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_fair@basic-none:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#4473] / [i915#4771]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3539]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3539] / [i915#4852]) +5 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#3281]) +3 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3281]) +12 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4537] / [i915#4812])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@preempt-user:
    - shard-snb:          NOTRUN -> [SKIP][70] ([fdo#109271]) +61 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-snb2/igt@gem_exec_schedule@preempt-user.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][71] -> [ABORT][72] ([i915#7975] / [i915#8213])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-tglu-8/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4860]) +4 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4860])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk2/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4613]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap@basic:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4083]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4077]) +5 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_wc@write:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4083]) +4 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_mmap_wc@write.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3282]) +10 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#3282])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#4270])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4270]) +5 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#8428]) +3 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4079])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4079])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4885])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4885]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_spin_batch@spin-all-new:
    - shard-dg2:          NOTRUN -> [FAIL][89] ([i915#5889])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_spin_batch@spin-all-new.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4077]) +15 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3323])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3297]) +7 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#3297]) +3 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#3297] / [i915#4958])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][95] ([i915#3318])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#2856]) +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#2856]) +6 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271]) +64 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk4/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][99] ([i915#9311])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@sysfs-reader:
    - shard-mtlp:         [PASS][100] -> [ABORT][101] ([i915#9414])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-4/igt@i915_suspend@sysfs-reader.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#4212])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4212]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][104] ([i915#8247]) +3 other tests fail
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg1-12/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#1769] / [i915#3555])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][106] -> [FAIL][107] ([i915#5138]) +1 other test fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([fdo#111614]) +2 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([fdo#111614]) +4 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][110] -> [FAIL][111] ([i915#3743]) +1 other test fail
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#5190]) +17 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#6187])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4538] / [i915#5190]) +8 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([fdo#111615]) +4 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2 (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#7213]) +3 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4087]) +3 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([fdo#111827]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([fdo#111827])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#7828]) +14 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#7828]) +5 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#7118]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#3299])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3299]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#6944])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#3555] / [i915#8814])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3359]) +3 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([fdo#109274] / [i915#5354]) +7 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@single-bo@all-pipes:
    - shard-mtlp:         [PASS][129] -> [DMESG-WARN][130] ([i915#2017])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pipes.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3555]) +7 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#8812])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#3555] / [i915#3840])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3469])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4881])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-7/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#8381])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#3637]) +4 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([fdo#109274]) +8 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#8381])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#2672]) +3 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#2672]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#2672] / [i915#3555])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([fdo#109285])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#5460])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#5354]) +40 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#1825]) +22 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#3458]) +20 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8708]) +27 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#8708]) +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#6118])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3555] / [i915#8228]) +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_hdr@static-toggle.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#4816])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#4816])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([fdo#109289])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([fdo#109289]) +3 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3555] / [i915#8821])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#8806])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#6953])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][159] ([i915#8292])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#5235]) +15 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#5235]) +19 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#5235]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#3555] / [i915#5235])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-edp-1.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#6524] / [i915#6805]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_prime@basic-modeset-hybrid.html
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#6524])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#9683]) +4 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#9681]) +2 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#5289])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#4235] / [i915#5190]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#4235]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#4235]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#3555] / [i915#4098])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#8623])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_tiled_display@basic-test-pattern.html
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#8623])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][175] -> [FAIL][176] ([i915#9196]) +1 other test fail
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@flip-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#3555] / [i915#8808])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#2437]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_writeback@writeback-check-output.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#2436])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#7387])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@perf@global-sseu-config.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#2434])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@perf@mi-rpc.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][182] ([i915#7484])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][183] -> [FAIL][184] ([i915#4349])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][185] ([i915#5793])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3291] / [i915#3708]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#3708]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@prime_vgem@fence-write-hang.html

  * igt@v3d/v3d_submit_cl@single-out-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#2575]) +6 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@v3d/v3d_submit_cl@single-out-sync.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#2575]) +16 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_tiling@get-bad-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#7711]) +9 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@vc4/vc4_tiling@get-bad-modifier.html

  * igt@vc4/vc4_wait_bo@used-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#7711]) +4 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@vc4/vc4_wait_bo@used-bo.html

  
#### Possible fixes ####

  * igt@gem_eio@hibernate:
    - shard-dg2:          [ABORT][192] ([i915#7975] / [i915#8213]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-dg2-2/igt@gem_eio@hibernate.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-internal-immediate:
    - shard-mtlp:         [ABORT][194] ([i915#9414]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-4/igt@gem_eio@in-flight-internal-immediate.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_eio@in-flight-internal-immediate.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][196] ([i915#2842]) -> [PASS][197] +1 other test pass
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][198] ([i915#2842]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-tglu-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][200] ([i915#8797] / [i915#9275]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][202] ([i915#5493]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_workarounds@reset:
    - shard-mtlp:         [ABORT][204] ([i915#9262]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-4/igt@gem_workarounds@reset.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_workarounds@reset.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [INCOMPLETE][206] ([i915#5566]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][208] ([i915#7790]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-snb2/igt@i915_pm_rps@reset.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-snb2/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][210] ([i915#5138]) -> [PASS][211] +1 other test pass
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][212] ([i915#3743]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][214] ([i915#2346]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * {igt@kms_pm_dc@dc9-dpms}:
    - shard-tglu:         [SKIP][216] ([i915#4281]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html

  * {igt@kms_pm_rpm@modeset-non-lpsp}:
    - shard-dg2:          [SKIP][218] ([i915#9519]) -> [PASS][219] +1 other test pass
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][220] ([i915#9196]) -> [PASS][221] +1 other test pass
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@kms_async_flips@crc@pipe-b-edp-1:
    - shard-mtlp:         [DMESG-FAIL][222] ([i915#8561]) -> [FAIL][223] ([i915#8247])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-4/igt@kms_async_flips@crc@pipe-b-edp-1.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_async_flips@crc@pipe-b-edp-1.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][224] ([i915#8247]) -> [DMESG-FAIL][225] ([i915#8561]) +1 other test dmesg-fail
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-mtlp-4/igt@kms_async_flips@crc@pipe-d-edp-1.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
  [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8797]: https://gitlab.freedesktop.org/drm/intel/issues/8797
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9298]: https://gitlab.freedesktop.org/drm/intel/issues/9298
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9681]: https://gitlab.freedesktop.org/drm/intel/issues/9681
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688


Build changes
-------------

  * Linux: CI_DRM_13913 -> Patchwork_125571v5
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_13913: e0a66c36703db267b371d7c26f68c6c9de2ff36a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7597: 380983dbd9bb2f7eea5e917e8fed0569bfe8cf9c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125571v5: e0a66c36703db267b371d7c26f68c6c9de2ff36a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/index.html

--===============3497377357071171701==
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
<tr><td><b>Series:</b></td><td>DP DSC min/max src bpc fixes (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125571/">https://patchwork.freedesktop.org/series/125571/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125571v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13913_full -&gt; Patchwork_125571v=
5_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v=
5/index.html</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-tglu0 </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13913_full and Patchwork_1=
25571v5_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125571v5_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13913/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13913/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13913/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13913/shard-glk7/boot.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13913/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13913/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13913/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3913/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13913/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13913/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13913/shard-glk1/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125571v5/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-g=
lk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125571v5/shard-glk8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v=
5/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125571v5/shard-glk7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125571v5/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125571v5/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125571v5/shard-glk5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125571v5/shard-glk4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125571v5/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125571v5/shard-glk3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125571v5/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125571v5/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/shard-glk1/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@drm_fdinfo@all-busy-check=
-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8414">i915#8414</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-7/igt@drm_fdinfo@busy-idle@bcs0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8414">i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_caching@reads.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4873">i=
915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-snb2/igt@gem_ctx_persistence@file.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_ctx_persistence@heart=
beat-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8555">i915#8555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_exec_balancer@bonded-p=
air.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-dg2-7/igt@gem_exec_balancer@bonded-pa=
ir.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4771">i915#4771</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_exec_fair@basic-none.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4771">i915#4771</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@gem_exec_fair@basic-sync.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4852">i915#4852</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-=
cpu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@gem_exec_reloc@basic-wc-c=
pu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-user:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-snb2/igt@gem_exec_schedule@preempt-u=
ser.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-tglu-8/igt@gem_exec_suspend@basic-s4-devices@smem.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125571v5/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975"=
>i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@gem_fence_thrash@bo-write-=
verify-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4860">i915#4860</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-glk2/igt@gem_lmem_swapping@massive-r=
andom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_mmap@basic.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i915=
#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_mmap_wc@write.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i=
915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3282">i915#3282</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_partial_pwrite_pread@=
writes-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_pxp@create-regular-co=
ntext-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_render_copy@yf-tiled-=
ccs-to-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_set_tiling_vs_blt@til=
ed-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@gem_softpin@evict-snoop.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4885">i915#4885</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-all-new:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_spin_batch@spin-all-n=
ew.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/5889">i915#5889</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@gem_tiled_swapping@non-thr=
eaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-glk4/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@gem_userptr_blits@readonl=
y-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-glk4/igt@i915_pm_rpm@gem-execbuf-str=
ess-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +64 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-4/igt@i915_suspend@sysfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/s=
hard-mtlp-5/igt@i915_suspend@sysfs-reader.html">ABORT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_addfb_basic@addfb25-f=
ramebuffer-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4212">i915#4212</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg1-12/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125571v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5138">i915#5138</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_big_fb@linear-16bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125571v5/shard-tglu-7/igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other =
test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-si=
ze-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5190">i915#5190</a>) +17 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6187">i915#6187</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2 (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-2/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_cdclk@plane-scaling@p=
ipe-b-dp-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_chamelium_color@ctm-l=
imited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_chamelium_frames@dp-fr=
ame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hp=
d-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_content_protection@ue=
vent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pipes.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125571v5/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/201=
7">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i9=
15#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-7/igt@kms_fence_pin_leak.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i=
915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_flip@2x-flip-vs-suspe=
nd-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3637">i915#3637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +40 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +22 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8708">i915#8708</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_getfb@getfb-reject-ccs=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6118">i915#6118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8228">i915#8228</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4816">i915#4816</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-dg2-7/igt@kms_multipipe_modeset@basic=
-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4816">i915#4816</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_pipe_b_c_ivb@disable-=
pipe-b-enable-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_pipe_b_c_ivb@from-pipe=
-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg1-12/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-75@pipe-c-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-75@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_prime@basic-modeset-hyb=
rid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/6805">i915#6805</a>) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6524">i915#6524</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/9683">i915#9683</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@kms_psr@psr2_cursor_mmap_g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9681">i915#9681</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-mtlp-2/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8623">i915#8623</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125571v5/shard-dg2-6/igt@kms_tiled_display@basic-tes=
t-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8623">i915#8623</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125571v5/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak=
@pipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_vrr@flip-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
808">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@perf@global-sseu-config.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/73=
87">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-11/igt@perf@non-zero-reason@0-rc=
s0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1255=
71v5/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/579=
3">i915#5793</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-3/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-10/igt@prime_vgem@fence-write-ha=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@single-out-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-5/igt@v3d/v3d_submit_cl@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@v3d/v3d_submit_csd@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-dg2-5/igt@vc4/vc4_tiling@get-bad-mod=
ifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7711">i915#7711</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@vc4/vc4_wait_bo@used-bo.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
711">i915#7711</a>) +4 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-dg2-2/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571=
v5/shard-dg2-11/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-immediate:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-4/igt@gem_eio@in-flight-internal-immediate.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">=
i915#9414</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125571v5/shard-mtlp-8/igt@gem_eio@in-flight-internal-immediate.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125571v5/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-tglu-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125571v5/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8797">i9=
15#8797</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92=
75">i915#9275</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125571v5/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i9=
15#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125571v5/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@reset:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-4/igt@gem_workarounds@reset.html">ABORT</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v=
5/shard-mtlp-5/igt@gem_workarounds@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-glk9/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125571v5/shard-glk2/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-snb2/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5=
/shard-snb2/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125571v5/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125571v5/shard-tglu-3/igt@kms_big_fb@y-tiled=
-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125571v5/shard-glk4/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc9-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v5/=
shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5571v5/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 other =
test pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125571v5/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-d-edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_async_flips@crc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-4/igt@kms_async_flips@crc@pipe-b-edp-1.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561"=
>i915#8561</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125571v5/shard-mtlp-8/igt@kms_async_flips@crc@pipe-b-edp-1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i=
915#8247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13913/shard-mtlp-4/igt@kms_async_flips@crc@pipe-d-edp-1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#=
8247</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125571v5/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561">i=
915#8561</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13913 -&gt; Patchwork_125571v5</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13913: e0a66c36703db267b371d7c26f68c6c9de2ff36a @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7597: 380983dbd9bb2f7eea5e917e8fed0569bfe8cf9c @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125571v5: e0a66c36703db267b371d7c26f68c6c9de2ff36a @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3497377357071171701==--
