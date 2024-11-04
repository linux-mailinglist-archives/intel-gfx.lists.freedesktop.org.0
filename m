Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 963F79BB169
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 11:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A7C10E0DB;
	Mon,  4 Nov 2024 10:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E29F10E0DB;
 Mon,  4 Nov 2024 10:43:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0173837334274472624=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_Add_support_for_3_VDSC_engi?=
 =?utf-8?q?nes_12_slices_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Nov 2024 10:43:44 -0000
Message-ID: <173071702449.1390867.10977583106894897687@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
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

--===============0173837334274472624==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for 3 VDSC engines 12 slices (rev7)
URL   : https://patchwork.freedesktop.org/series/139934/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15608_full -> Patchwork_139934v7_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_139934v7_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139934v7_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 12)
------------------------------

  Additional (2): shard-snb-0 shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139934v7_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [ABORT][1] ([i915#9820]) -> ([PASS][2], [DMESG-WARN][3])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_async_flips@crc@pipe-a-dp-4:
    - {shard-dg2-9}:      NOTRUN -> [FAIL][4] +5 other tests fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-9/igt@kms_async_flips@crc@pipe-a-dp-4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15608_full and Patchwork_139934v7_full:

### New IGT tests (1) ###

  * igt@api_intel_bb@misplaced-blitter:
    - Statuses : 13 pass(s)
    - Exec time: [0.01, 0.03] s

  

Known issues
------------

  Here are the changes found in Patchwork_139934v7_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#11078])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> ([SKIP][6], [SKIP][7]) ([i915#11078])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@most-busy-idle-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][8] ([i915#8414]) +6 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@drm_fdinfo@most-busy-idle-check-all@ccs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> ([SKIP][9], [SKIP][10]) ([i915#8414]) +7 other tests ( 2 skip )
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#3281])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][12] -> ([INCOMPLETE][13], [INCOMPLETE][14]) ([i915#7297])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-7/igt@gem_ccs@suspend-resume.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_ccs@suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#9323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][16] -> ([INCOMPLETE][17], [PASS][18]) ([i915#12392] / [i915#7297])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][19] -> [INCOMPLETE][20] ([i915#12392] / [i915#7297])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#7697])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#9310])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_compute@compute-square.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> ([SKIP][23], [SKIP][24]) ([i915#8562])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_create@create-ext-set-pat.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_create@create-ext-set-pat.html
    - shard-rkl:          NOTRUN -> ([SKIP][25], [SKIP][26]) ([i915#8562])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_create@create-ext-set-pat.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_create@create-ext-set-pat.html
    - shard-tglu:         NOTRUN -> ([SKIP][27], [SKIP][28]) ([i915#8562])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_create@create-ext-set-pat.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-mtlp:         [PASS][29] -> ([FAIL][30], [PASS][31]) ([i915#12031])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> ([SKIP][32], [SKIP][33]) ([i915#1099])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb1/igt@gem_ctx_persistence@legacy-engines-persistence.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#280])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> ([ABORT][35], [ABORT][36]) ([i915#10030] / [i915#7975] / [i915#8213])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_eio@hibernate.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_eio@hibernate.html
    - shard-rkl:          NOTRUN -> ([ABORT][37], [ABORT][38]) ([i915#7975] / [i915#8213])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_eio@hibernate.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][39] -> ([FAIL][40], [FAIL][41]) ([i915#12543] / [i915#5784])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-12/igt@gem_eio@reset-stress.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@gem_eio@reset-stress.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-12/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][42] ([i915#5784])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_big@single:
    - shard-tglu:         [PASS][43] -> ([PASS][44], [ABORT][45]) ([i915#11713])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-2/igt@gem_exec_big@single.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@gem_exec_big@single.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-5/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> ([SKIP][46], [SKIP][47]) ([i915#6334]) +2 other tests ( 2 skip )
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_exec_capture@capture-invisible@lmem0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          NOTRUN -> ([SKIP][48], [SKIP][49]) ([i915#6334]) +1 other test ( 2 skip )
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_exec_capture@capture-invisible@smem0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-tglu:         NOTRUN -> ([SKIP][50], [SKIP][51]) ([i915#6334]) +1 other test ( 2 skip )
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_exec_capture@capture-invisible@smem0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-none:
    - shard-tglu-1:       NOTRUN -> [FAIL][52] ([i915#2842]) +9 other tests fail
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> ([FAIL][53], [FAIL][54]) ([i915#2842]) +1 other test ( 2 fail )
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3539])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3539] / [i915#4852])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg2:          NOTRUN -> ([SKIP][57], [SKIP][58]) ([i915#3539])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_exec_fair@basic-pace-solo.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          NOTRUN -> ([PASS][59], [FAIL][60]) ([i915#2842]) +1 other test ( 1 fail, 1 pass )
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][61] -> ([PASS][62], [FAIL][63]) ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#5107])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][65] +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3281]) +4 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#3281]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          NOTRUN -> ([SKIP][68], [SKIP][69]) ([i915#3281]) +3 other tests ( 2 skip )
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> ([SKIP][70], [SKIP][71]) ([i915#3281]) +7 other tests ( 2 skip )
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_exec_reloc@basic-write-read-active.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_reloc@basic-write-wc:
    - shard-mtlp:         NOTRUN -> ([SKIP][72], [SKIP][73]) ([i915#3281]) +2 other tests ( 2 skip )
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@gem_exec_reloc@basic-write-wc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_exec_reloc@basic-write-wc.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][74] -> ([INCOMPLETE][75], [PASS][76]) ([i915#11441]) +1 other test ( 1 incomplete, 1 pass )
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          NOTRUN -> [ABORT][77] ([i915#7975] / [i915#8213]) +1 other test abort
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-snb:          NOTRUN -> [INCOMPLETE][78] ([i915#12683])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb2/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-mtlp:         NOTRUN -> ([SKIP][79], [SKIP][80]) ([i915#4613])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#4613])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#4613]) +3 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> ([SKIP][83], [SKIP][84]) ([i915#4613]) +1 other test ( 2 skip )
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_lmem_swapping@verify.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_lmem_swapping@verify.html
    - shard-tglu:         NOTRUN -> ([SKIP][85], [SKIP][86]) ([i915#4613]) +2 other tests ( 2 skip )
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_lmem_swapping@verify.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_lmem_swapping@verify.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3282])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-4/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#284])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_media_vme.html

  * igt@gem_mmap@short-mmap:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#4083])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4077]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4083])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> ([SKIP][92], [SKIP][93]) ([i915#4083]) +1 other test ( 2 skip )
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_mmap_wc@bad-offset.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][94], [SKIP][95]) ([i915#4083]) +2 other tests ( 2 skip )
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_pread@exhaustion:
    - shard-dg2:          NOTRUN -> ([SKIP][96], [SKIP][97]) ([i915#3282]) +1 other test ( 2 skip )
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_pread@exhaustion.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_pread@exhaustion.html
    - shard-rkl:          NOTRUN -> ([SKIP][98], [SKIP][99]) ([i915#3282]) +2 other tests ( 2 skip )
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_pread@exhaustion.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@gem_pread@exhaustion.html
    - shard-tglu-1:       NOTRUN -> [WARN][100] ([i915#2658])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4270]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> ([SKIP][102], [SKIP][103]) ([i915#4270]) +1 other test ( 2 skip )
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
    - shard-rkl:          NOTRUN -> ([SKIP][104], [SKIP][105]) ([i915#4270])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#4270]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#4270])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#4270]) +2 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-tglu:         NOTRUN -> ([SKIP][109], [SKIP][110]) ([i915#4270]) +1 other test ( 2 skip )
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_pxp@reject-modify-context-protection-off-3.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> ([SKIP][111], [SKIP][112]) ([i915#5190] / [i915#8428]) +2 other tests ( 2 skip )
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#5190] / [i915#8428])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> ([SKIP][114], [SKIP][115]) ([i915#4079])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_render_tiled_blits@basic.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-mtlp:         NOTRUN -> ([SKIP][116], [SKIP][117]) ([i915#4079])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_set_tiling_vs_pwrite.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#3282])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4077]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_tiling_max_stride:
    - shard-dg2:          NOTRUN -> ([SKIP][120], [SKIP][121]) ([i915#4077]) +8 other tests ( 2 skip )
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_tiling_max_stride.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_tiling_max_stride.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> ([SKIP][122], [SKIP][123]) ([i915#3297])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-rkl:          NOTRUN -> ([SKIP][124], [SKIP][125]) ([i915#3297])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_userptr_blits@create-destroy-unsync.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-tglu:         NOTRUN -> ([SKIP][126], [SKIP][127]) ([i915#3297]) +1 other test ( 2 skip )
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_userptr_blits@create-destroy-unsync.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#3297])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#3297])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#2856])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-tglu:         NOTRUN -> ([SKIP][131], [SKIP][132]) ([i915#2527] / [i915#2856])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gen9_exec_parse@bb-secure.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#2527] / [i915#2856])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> ([SKIP][134], [SKIP][135]) ([i915#2856]) +1 other test ( 2 skip )
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gen9_exec_parse@secure-batches.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html
    - shard-rkl:          NOTRUN -> ([SKIP][136], [SKIP][137]) ([i915#2527]) +1 other test ( 2 skip )
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@gen9_exec_parse@secure-batches.html
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#2527] / [i915#2856]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@load:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#6227])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu:         NOTRUN -> ([SKIP][140], [SKIP][141]) ([i915#8399])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@i915_pm_freq_api@freq-suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#6590]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          NOTRUN -> ([SKIP][143], [SKIP][144]) +9 other tests ( 2 skip )
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu-1:       NOTRUN -> [WARN][145] ([i915#2681]) +1 other test warn
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          [PASS][146] -> ([FAIL][147], [FAIL][148]) ([i915#12548] / [i915#3591])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [PASS][149] -> ([FAIL][150], [PASS][151]) ([i915#12548] / [i915#3591])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][152] -> ([PASS][153], [FAIL][154]) ([i915#3591]) +1 other test ( 1 fail, 1 pass )
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          ([PASS][155], [PASS][156], [PASS][157]) -> ([PASS][158], [FAIL][159]) ([i915#12308])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@i915_pm_rps@engine-order.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@i915_pm_rps@engine-order.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@i915_pm_rps@engine-order.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@i915_pm_rps@engine-order.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk5/igt@i915_pm_rps@engine-order.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#5723])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][161] ([i915#9311]) +1 other test dmesg-warn
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@i915_selftest@mock@memory_region.html
    - shard-dg1:          NOTRUN -> [DMESG-WARN][162] ([i915#9311]) +1 other test dmesg-warn
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#4077])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@i915_suspend@fence-restore-untiled.html
    - shard-mtlp:         NOTRUN -> ([SKIP][164], [SKIP][165]) ([i915#4077]) +1 other test ( 2 skip )
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-2/igt@i915_suspend@fence-restore-untiled.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@i915_suspend@fence-restore-untiled.html

  * igt@intel_hwmon@hwmon-read:
    - shard-tglu-1:       NOTRUN -> [SKIP][166] ([i915#7707])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> ([SKIP][167], [SKIP][168]) ([i915#4212])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#8709]) +7 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#8709]) +7 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_atomic_transition@modeset-transition-fencing:
    - shard-glk:          ([PASS][171], [PASS][172], [PASS][173]) -> ([FAIL][174], [PASS][175]) ([i915#12238])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_atomic_transition@modeset-transition-fencing.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html

  * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
    - shard-glk:          ([PASS][176], [PASS][177], [PASS][178]) -> ([FAIL][179], [PASS][180]) ([i915#11859])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          [PASS][181] -> ([FAIL][182], [PASS][183]) ([i915#5956]) +1 other test ( 1 fail, 1 pass )
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#5286]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#5286]) +2 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> ([SKIP][186], [SKIP][187]) ([i915#5286]) +1 other test ( 2 skip )
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
    - shard-rkl:          NOTRUN -> ([SKIP][188], [SKIP][189]) ([i915#5286])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#5286]) +4 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> ([SKIP][191], [SKIP][192]) ([i915#3638])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#5190] / [i915#9197]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#3638])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> ([SKIP][195], [SKIP][196]) ([i915#4538] / [i915#5190]) +4 other tests ( 2 skip )
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#4538])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][198] +11 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][199] +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][200], [SKIP][201]) ([i915#6095]) +4 other tests ( 2 skip )
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> ([SKIP][202], [SKIP][203]) ([i915#6095]) +36 other tests ( 2 skip )
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([SKIP][204], [SKIP][205]) ([i915#6095]) +34 other tests ( 2 skip )
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> ([SKIP][206], [SKIP][207]) +36 other tests ( 2 skip )
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk1/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#10307] / [i915#6095]) +202 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#6095]) +95 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#6095]) +69 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#6095]) +76 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> ([SKIP][212], [SKIP][213]) ([i915#12313])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#6095]) +19 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][215], [SKIP][216]) ([i915#6095]) +19 other tests ( 2 skip )
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-4.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-4.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-mtlp:         NOTRUN -> ([SKIP][218], [SKIP][219]) ([i915#12313])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][220], [SKIP][221]) ([i915#10307] / [i915#6095]) +33 other tests ( 2 skip )
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-6/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu-1:       NOTRUN -> [SKIP][222] ([i915#3742]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg2:          NOTRUN -> ([SKIP][223], [SKIP][224]) ([i915#4087])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_cdclk@plane-scaling.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_cdclk@plane-scaling.html
    - shard-rkl:          NOTRUN -> ([SKIP][225], [SKIP][226]) ([i915#3742])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_cdclk@plane-scaling.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#4087]) +7 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#7828]) +9 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg2:          NOTRUN -> ([SKIP][229], [SKIP][230]) +5 other tests ( 2 skip )
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-mtlp:         NOTRUN -> ([SKIP][231], [SKIP][232]) ([i915#7828])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#7828]) +2 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-dg2:          NOTRUN -> ([SKIP][234], [SKIP][235]) ([i915#7828]) +5 other tests ( 2 skip )
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_chamelium_edid@hdmi-mode-timings.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-tglu:         NOTRUN -> ([SKIP][236], [SKIP][237]) ([i915#7828]) +4 other tests ( 2 skip )
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> ([SKIP][238], [SKIP][239]) ([i915#7828]) +4 other tests ( 2 skip )
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#7828]) +2 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@legacy-gamma-reset:
    - shard-dg2:          [PASS][241] -> ([SKIP][242], [PASS][243]) ([i915#12655])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_color@legacy-gamma-reset.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_color@legacy-gamma-reset.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][244] ([i915#7173])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#3116])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][246] ([i915#3116] / [i915#3299]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> ([SKIP][247], [SKIP][248]) ([i915#9424]) +1 other test ( 2 skip )
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_content_protection@mei-interface.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_content_protection@mei-interface.html
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#8063])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_content_protection@mei-interface.html
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#8063] / [i915#9433])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-mtlp:         NOTRUN -> ([SKIP][251], [SKIP][252]) ([i915#3555] / [i915#6944] / [i915#9424])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_content_protection@type1.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          NOTRUN -> ([SKIP][253], [SKIP][254]) ([i915#11453] / [i915#3359])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html
    - shard-rkl:          NOTRUN -> ([SKIP][255], [SKIP][256]) ([i915#11453] / [i915#3359])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][257] ([i915#11453] / [i915#3359]) +2 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#9197]) +8 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#3555]) +3 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#11453] / [i915#3359])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          ([PASS][261], [PASS][262], [PASS][263]) -> ([FAIL][264], [PASS][265]) ([i915#72])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#4103])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> ([SKIP][267], [SKIP][268]) ([i915#4103])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-tglu:         NOTRUN -> ([SKIP][269], [SKIP][270]) ([i915#4103])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-dg2:          NOTRUN -> ([SKIP][271], [SKIP][272]) ([i915#4103] / [i915#4213])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#9809])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([PASS][274], [PASS][275]) -> ([FAIL][276], [FAIL][277]) ([i915#2346])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-snb:          [PASS][278] -> ([FAIL][279], [PASS][280]) ([i915#2346])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu-1:       NOTRUN -> [SKIP][281] ([i915#9067])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#4103])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#4103])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [PASS][284] -> ([SKIP][285], [SKIP][286]) ([i915#3555])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#3804])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][288] -> ([SKIP][289], [SKIP][290]) ([i915#12402])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         NOTRUN -> ([SKIP][291], [SKIP][292]) ([i915#3555] / [i915#3840])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_dsc@dsc-basic.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][293] ([i915#3555] / [i915#3840])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> [SKIP][294] ([i915#1839])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][295] ([i915#1839])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_feature_discovery@display-4x.html
    - shard-tglu-1:       NOTRUN -> [SKIP][296] ([i915#1839])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#9337])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> ([SKIP][298], [SKIP][299]) ([i915#5354]) +16 other tests ( 2 skip )
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_flip@2x-absolute-wf_vblank.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank.html
    - shard-tglu:         NOTRUN -> ([SKIP][300], [SKIP][301]) ([i915#3637] / [i915#3966])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip@2x-absolute-wf_vblank.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#9934])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@kms_flip@2x-blocking-wf_vblank.html
    - shard-mtlp:         NOTRUN -> ([SKIP][303], [SKIP][304]) ([i915#3637]) +1 other test ( 2 skip )
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-2/igt@kms_flip@2x-blocking-wf_vblank.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][305] -> ([FAIL][306], [FAIL][307]) ([i915#2122]) +1 other test ( 2 fail )
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb6/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb4/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb5/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-tglu:         NOTRUN -> [SKIP][308] ([i915#3637])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-tglu:         NOTRUN -> ([SKIP][309], [SKIP][310]) ([i915#3637]) +3 other tests ( 2 skip )
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][311] ([i915#3637]) +7 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][312] ([i915#3637] / [i915#3966])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-dg1:          [PASS][313] -> ([FAIL][314], [FAIL][315]) ([i915#12517] / [i915#2122])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp3:
    - shard-dg2:          NOTRUN -> [FAIL][316] ([i915#2122])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp3.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3:
    - shard-dg1:          NOTRUN -> [FAIL][317] ([i915#12517]) +1 other test fail
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:
    - shard-dg1:          [PASS][318] -> [FAIL][319] ([i915#12431])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a4:
    - shard-dg1:          [PASS][320] -> [FAIL][321] ([i915#2122])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a4.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a4.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-dg2:          [PASS][322] -> ([PASS][323], [FAIL][324]) ([i915#79])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_flip@flip-vs-expired-vblank.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_flip@flip-vs-expired-vblank.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][325] ([i915#79])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg2:          NOTRUN -> ([INCOMPLETE][326], [INCOMPLETE][327]) ([i915#4839] / [i915#6113])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][328] ([i915#4839] / [i915#6113])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-mtlp:         NOTRUN -> ([INCOMPLETE][329], [INCOMPLETE][330]) ([i915#6113])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-glk:          NOTRUN -> ([INCOMPLETE][331], [INCOMPLETE][332]) ([i915#4839])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [PASS][333] -> ([INCOMPLETE][334], [PASS][335]) ([i915#4839]) +1 other test ( 1 incomplete, 1 pass )
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][336] ([i915#4839] / [i915#6113]) +1 other test incomplete
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-mtlp:         NOTRUN -> ([INCOMPLETE][337], [PASS][338]) ([i915#6113])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][339] ([i915#6113])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][340] ([i915#10056] / [i915#6113])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-tglu:         [PASS][341] -> ([PASS][342], [FAIL][343]) ([i915#2122]) +1 other test ( 1 fail, 1 pass )
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][344] ([i915#3555])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
    - shard-dg1:          [PASS][345] -> [FAIL][346] ([i915#12469])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-valid-mode:
    - shard-dg1:          [PASS][347] -> [FAIL][348] ([i915#11859])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-valid-mode.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-tglu:         NOTRUN -> ([SKIP][349], [SKIP][350]) ([i915#2672] / [i915#3555]) +1 other test ( 2 skip )
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
    - shard-dg2:          NOTRUN -> ([SKIP][351], [SKIP][352]) ([i915#2672] / [i915#3555])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          NOTRUN -> ([SKIP][353], [SKIP][354]) ([i915#2672] / [i915#3555] / [i915#5190])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
    - shard-rkl:          NOTRUN -> [SKIP][355] ([i915#2672] / [i915#3555]) +2 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][356] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][357] ([i915#2672]) +2 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-dg2:          [PASS][358] -> ([SKIP][359], [PASS][360]) ([i915#3555])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][361] ([i915#2672] / [i915#3555]) +5 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][362] ([i915#2587] / [i915#2672]) +5 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> ([SKIP][363], [SKIP][364]) ([i915#2672] / [i915#3555]) +1 other test ( 2 skip )
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> ([SKIP][365], [SKIP][366]) ([i915#2672]) +1 other test ( 2 skip )
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
    - shard-tglu:         NOTRUN -> ([SKIP][367], [SKIP][368]) ([i915#2587] / [i915#2672]) +1 other test ( 2 skip )
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
    - shard-dg2:          [PASS][369] -> [SKIP][370] ([i915#3555]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][371], [SKIP][372]) ([i915#2672]) +5 other tests ( 2 skip )
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][373] ([i915#2672]) +2 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-dg2:          [PASS][374] -> [SKIP][375] ([i915#5354]) +1 other test skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][376] ([i915#8708])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> ([SKIP][377], [SKIP][378]) +25 other tests ( 2 skip )
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][379], [SKIP][380]) ([i915#5354] / [i915#8708])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-dg2:          [PASS][381] -> ([PASS][382], [FAIL][383]) ([i915#6880]) +1 other test ( 1 fail, 1 pass )
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][384] -> ([PASS][385], [SKIP][386]) ([i915#5354])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#5354]) +9 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][388] ([i915#8708])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][389], [SKIP][390]) ([i915#8708]) +7 other tests ( 2 skip )
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][391] ([i915#8708])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][392] ([i915#3458])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
    - shard-glk:          NOTRUN -> [SKIP][393] +11 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][394] ([i915#1825]) +10 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
    - shard-mtlp:         NOTRUN -> [SKIP][395] ([i915#1825]) +2 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> ([SKIP][396], [SKIP][397]) ([i915#3458]) +7 other tests ( 2 skip )
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
    - shard-rkl:          NOTRUN -> ([SKIP][398], [SKIP][399]) ([i915#3023]) +6 other tests ( 2 skip )
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][400] ([i915#3023]) +7 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> ([SKIP][401], [SKIP][402]) ([i915#1825]) +9 other tests ( 2 skip )
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> ([SKIP][403], [SKIP][404]) ([i915#1825])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> ([SKIP][405], [SKIP][406]) +36 other tests ( 2 skip )
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> ([SKIP][407], [SKIP][408]) ([i915#3555] / [i915#8228])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_hdr@bpc-switch-dpms.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_hdr@bpc-switch-dpms.html
    - shard-tglu:         NOTRUN -> ([SKIP][409], [SKIP][410]) ([i915#3555] / [i915#8228])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_hdr@bpc-switch-dpms.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> ([SKIP][411], [PASS][412]) ([i915#3555] / [i915#8228])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_hdr@static-toggle.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_hdr@static-toggle.html
    - shard-rkl:          NOTRUN -> ([SKIP][413], [SKIP][414]) ([i915#3555] / [i915#8228]) +1 other test ( 2 skip )
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_hdr@static-toggle.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_hdr@static-toggle.html
    - shard-tglu-1:       NOTRUN -> [SKIP][415] ([i915#3555] / [i915#8228]) +1 other test skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][416] ([i915#10656])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][417] ([i915#12394])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_joiner@basic-force-ultra-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][418] ([i915#12394])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][419] ([i915#12394])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_lease@atomic-implicit-crtc:
    - shard-dg2:          [PASS][420] -> [SKIP][421] ([i915#9197]) +8 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_lease@atomic-implicit-crtc.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_lease@atomic-implicit-crtc.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-tglu-1:       NOTRUN -> [SKIP][422] +75 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg2:          [PASS][423] -> ([PASS][424], [SKIP][425]) ([i915#9197]) +7 other tests ( 1 pass, 1 skip )
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          [PASS][426] -> [SKIP][427] ([i915#9581])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane@planar-pixel-format-settings.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [PASS][428] -> [SKIP][429] ([i915#7294])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][430] ([i915#3555]) +1 other test skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][431] ([i915#3555] / [i915#8806])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_plane_multiple@tiling-y.html
    - shard-dg2:          NOTRUN -> ([SKIP][432], [SKIP][433]) ([i915#8806])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_plane_multiple@tiling-y.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> ([SKIP][434], [SKIP][435]) ([i915#9809]) +1 other test ( 2 skip )
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][436] ([i915#8292])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-3.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][437] ([i915#8292]) +1 other test fail
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][438] ([i915#8292]) +1 other test fail
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][439] ([i915#8292])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][440] ([i915#12247]) +8 other tests skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-dg2:          [PASS][441] -> ([PASS][442], [SKIP][443]) ([i915#3555] / [i915#8152] / [i915#9423])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-dg2:          [PASS][444] -> ([SKIP][445], [PASS][446]) ([i915#12247]) +2 other tests ( 1 pass, 1 skip )
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:
    - shard-dg2:          [PASS][447] -> ([SKIP][448], [PASS][449]) ([i915#8152])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [PASS][450] -> [SKIP][451] ([i915#8152] / [i915#9423])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
    - shard-dg2:          [PASS][452] -> [SKIP][453] ([i915#12247]) +5 other tests skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][454] -> [SKIP][455] ([i915#8152])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][456] ([i915#12247] / [i915#6953])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
    - shard-tglu-1:       NOTRUN -> [SKIP][457] ([i915#12247] / [i915#6953])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][458] ([i915#12247]) +8 other tests skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][459] ([i915#12247]) +1 other test skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          [PASS][460] -> [SKIP][461] ([i915#6953] / [i915#8152] / [i915#9423])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [PASS][462] -> [SKIP][463] ([i915#12247] / [i915#8152])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> ([SKIP][464], [SKIP][465]) ([i915#12247] / [i915#3555] / [i915#9423])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_plane_scali

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/index.html

--===============0173837334274472624==
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
<tr><td><b>Series:</b></td><td>Add support for 3 VDSC engines 12 slices (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139934/">https://patchwork.freedesktop.org/series/139934/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15608_full -&gt; Patchwork_139934v7_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_139934v7_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139934v7_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 12)</h2>
<p>Additional (2): shard-snb-0 shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139934v7_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload-with-fault-injection:<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a>)</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_async_flips@crc@pipe-a-dp-4:<ul>
<li>{shard-dg2-9}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-9/igt@kms_async_flips@crc@pipe-a-dp-4.html">FAIL</a> +5 other tests fail</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15608_full and Patchwork_139934v7_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@api_intel_bb@misplaced-blitter:<ul>
<li>Statuses : 13 pass(s)</li>
<li>Exec time: [0.01, 0.03] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139934v7_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a>) ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@drm_fdinfo@most-busy-idle-check-all@ccs0.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html">SKIP</a>) ([i915#8414]) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-7/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a>) ([i915#7297])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a>) ([i915#12392] / [i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_compute@compute-square.html">SKIP</a> ([i915#9310])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_create@create-ext-set-pat.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_create@create-ext-set-pat.html">SKIP</a>) ([i915#8562])</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_create@create-ext-set-pat.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_create@create-ext-set-pat.html">SKIP</a>) ([i915#8562])</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_create@create-ext-set-pat.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_create@create-ext-set-pat.html">SKIP</a>) ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html">PASS</a>) ([i915#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb1/igt@gem_ctx_persistence@legacy-engines-persistence.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html">SKIP</a>) ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_eio@hibernate.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_eio@hibernate.html">ABORT</a>) ([i915#10030] / [i915#7975] / [i915#8213])</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_eio@hibernate.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@gem_eio@hibernate.html">ABORT</a>) ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@gem_eio@reset-stress.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a>) ([i915#12543] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-2/igt@gem_exec_big@single.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@gem_exec_big@single.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-5/igt@gem_exec_big@single.html">ABORT</a>) ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a>) ([i915#6334]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a>) ([i915#6334]) +1 other test ( 2 skip )</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a>) ([i915#6334]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_exec_fair@basic-none.html">FAIL</a> ([i915#2842]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a>) ([i915#2842]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_fair@basic-pace.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_exec_fair@basic-pace-solo.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_exec_fair@basic-pace-solo.html">SKIP</a>) ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a>) ([i915#2842]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>) ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_params@secure-non-master.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@gem_exec_reloc@basic-wc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_exec_reloc@basic-write-read.html">SKIP</a>) ([i915#3281]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a>) ([i915#3281]) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@gem_exec_reloc@basic-write-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_exec_reloc@basic-write-wc.html">SKIP</a>) ([i915#3281]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html">PASS</a>) ([i915#11441]) +1 other test ( 1 incomplete, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb2/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">INCOMPLETE</a> ([i915#12683])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a>) ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_lmem_swapping@verify.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_lmem_swapping@verify.html">SKIP</a>) ([i915#4613]) +1 other test ( 2 skip )</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_lmem_swapping@verify.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_lmem_swapping@verify.html">SKIP</a>) ([i915#4613]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-4/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_mmap_wc@bad-object.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@gem_mmap_wc@bad-offset.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html">SKIP</a>) ([i915#4083]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a>) ([i915#4083]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gem_pread@exhaustion.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_pread@exhaustion.html">SKIP</a>) ([i915#3282]) +1 other test ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_pread@exhaustion.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@gem_pread@exhaustion.html">SKIP</a>) ([i915#3282]) +2 other tests ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a>) ([i915#4270]) +1 other test ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a>) ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_pxp@reject-modify-context-protection-off-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-off-3.html">SKIP</a>) ([i915#4270]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a>) ([i915#5190] / [i915#8428]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">SKIP</a> ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_render_tiled_blits@basic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@gem_render_tiled_blits@basic.html">SKIP</a>) ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@gem_set_tiling_vs_pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@gem_set_tiling_vs_pwrite.html">SKIP</a>) ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gem_tiled_swapping@non-threaded.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiling_max_stride:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_tiling_max_stride.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_tiling_max_stride.html">SKIP</a>) ([i915#4077]) +8 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a>) ([i915#3297])</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a>) ([i915#3297])</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a>) ([i915#3297]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@gen9_exec_parse@bb-secure.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@gen9_exec_parse@bb-secure.html">SKIP</a>) ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@gen9_exec_parse@secure-batches.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html">SKIP</a>) ([i915#2856]) +1 other test ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@gen9_exec_parse@secure-batches.html">SKIP</a>) ([i915#2527]) +1 other test ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a>) ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a>) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>) ([i915#12548] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a>) ([i915#12548] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a>) ([i915#3591]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@i915_pm_rps@engine-order.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@i915_pm_rps@engine-order.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@i915_pm_rps@engine-order.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@i915_pm_rps@engine-order.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk5/igt@i915_pm_rps@engine-order.html">FAIL</a>) ([i915#12308])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> ([i915#4077])</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-2/igt@i915_suspend@fence-restore-untiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@i915_suspend@fence-restore-untiled.html">SKIP</a>) ([i915#4077]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@intel_hwmon@hwmon-read.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a>) ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_atomic_transition@modeset-transition-fencing.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html">PASS</a>) ([i915#12238])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">PASS</a>) ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html">PASS</a>) ([i915#5956]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a>) ([i915#5286]) +1 other test ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a>) ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a>) ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a>) ([i915#4538] / [i915#5190]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html">SKIP</a>) ([i915#6095]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>) ([i915#6095]) +36 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a>) ([i915#6095]) +34 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk1/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>) +36 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +202 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +95 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +69 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +76 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a>) ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-19/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-4.html">SKIP</a>) ([i915#6095]) +19 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a>) ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-6/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a>) ([i915#10307] / [i915#6095]) +33 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_cdclk@plane-scaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_cdclk@plane-scaling.html">SKIP</a>) ([i915#4087])</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_cdclk@plane-scaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_cdclk@plane-scaling.html">SKIP</a>) ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html">SKIP</a> ([i915#4087]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html">SKIP</a> ([i915#7828]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_chamelium_color@ctm-max.html">SKIP</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a>) ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a>) ([i915#7828]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a>) ([i915#7828]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>) ([i915#7828]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_color@legacy-gamma-reset.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_color@legacy-gamma-reset.html">PASS</a>) ([i915#12655])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_content_protection@mei-interface.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_content_protection@mei-interface.html">SKIP</a>) ([i915#9424]) +1 other test ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#8063])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#8063] / [i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_content_protection@type1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_content_protection@type1.html">SKIP</a>) ([i915#3555] / [i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a>) ([i915#11453] / [i915#3359])</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a>) ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#9197]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a>) ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a>) ([i915#4103])</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a>) ([i915#4103])</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a>) ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>) ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a>) ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a>) ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a>) ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_dsc@dsc-basic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_dsc@dsc-basic.html">SKIP</a>) ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a>) ([i915#5354]) +16 other tests ( 2 skip )</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a>) ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> ([i915#9934])</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-2/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a>) ([i915#3637]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb6/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb4/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb5/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html">FAIL</a>) ([i915#2122]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a>) ([i915#3637]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#3637]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a>) ([i915#12517] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp3.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3.html">FAIL</a> ([i915#12517]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html">FAIL</a> ([i915#12431])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a4.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a>) ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a3.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a>) ([i915#4839] / [i915#6113])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#4839] / [i915#6113])</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a>) ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a>) ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a>) ([i915#4839]) +1 other test ( 1 incomplete, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html">INCOMPLETE</a> ([i915#4839] / [i915#6113]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">PASS</a>) ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html">INCOMPLETE</a> ([i915#10056] / [i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">FAIL</a>) ([i915#2122]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">FAIL</a> ([i915#12469])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-valid-mode.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-valid-mode.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a>) ([i915#2672] / [i915#3555]) +1 other test ( 2 skip )</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a>) ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a>) ([i915#2672] / [i915#3555] / [i915#5190])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">PASS</a>) ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a>) ([i915#2672] / [i915#3555]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2672]) +1 other test ( 2 skip )</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2587] / [i915#2672]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2672]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>) +25 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html">SKIP</a>) ([i915#5354] / [i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">FAIL</a>) ([i915#6880]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a>) ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) ([i915#8708]) +7 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +10 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a>) ([i915#3458]) +7 other tests ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a>) ([i915#3023]) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#3023]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>) ([i915#1825]) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a>) ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html">SKIP</a>) +36 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>) ([i915#3555] / [i915#8228])</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>) ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_hdr@static-toggle.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_hdr@static-toggle.html">PASS</a>) ([i915#3555] / [i915#8228])</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-2/igt@kms_hdr@static-toggle.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-4/igt@kms_hdr@static-toggle.html">SKIP</a>) ([i915#3555] / [i915#8228]) +1 other test ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_lease@atomic-implicit-crtc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_lease@atomic-implicit-crtc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_lease@atomic-implicit-crtc.html">SKIP</a> ([i915#9197]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html">SKIP</a> +75 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a>) ([i915#9197]) +7 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane@planar-pixel-format-settings.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> ([i915#9581])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-5/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_plane_multiple@tiling-y.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html">SKIP</a>) ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-mtlp-1/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a>) ([i915#9809]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a>) ([i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">PASS</a>) ([i915#12247]) +2 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">PASS</a>) ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139934v7/shard-dg2-8/igt@kms_plane_scali">SKIP</a>) ([i915#12247] / [i915#3555] / [i915#9423])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0173837334274472624==--
