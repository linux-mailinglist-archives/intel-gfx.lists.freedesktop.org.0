Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EA17C59AC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 18:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7EA10E9DC;
	Wed, 11 Oct 2023 16:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72A9810E9CA;
 Wed, 11 Oct 2023 16:56:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6901BAADE3;
 Wed, 11 Oct 2023 16:56:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0154131589596251212=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Wed, 11 Oct 2023 16:56:54 -0000
Message-ID: <169704341437.26514.14026199322242450664@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230913225714.877627-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230913225714.877627-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/1=5D_drm/i915/pxp=3A_Add_drm=5Fdbgs?=
 =?utf-8?q?_for_critical_PXP_events=2E_=28rev2=29?=
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

--===============0154131589596251212==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/1] drm/i915/pxp: Add drm_dbgs for critical PXP events. (rev2)
URL   : https://patchwork.freedesktop.org/series/123656/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13737_full -> Patchwork_123656v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

New tests
---------

  New tests have been introduced between CI_DRM_13737_full and Patchwork_123656v2_full:

### New IGT tests (5) ###

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - Statuses : 1 timeout(s)
    - Exec time: [0.0] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-b-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-c-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_123656v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#8293]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk9/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk9/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#8411])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#7701])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#8414]) +20 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@drm_fdinfo@busy@ccs0.html

  * igt@drm_fdinfo@virtual-busy-idle-all:
    - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#8414])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@drm_fdinfo@virtual-busy-idle-all.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3281]) +13 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#9323])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#7697])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#8555])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#8555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#8555])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#280])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#280])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@create-ext:
    - shard-mtlp:         [PASS][63] -> [ABORT][64] ([i915#9262])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-6/igt@gem_eio@create-ext.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-4/igt@gem_eio@create-ext.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][65] -> [ABORT][66] ([i915#7975] / [i915#8213] / [i915#8398])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-tglu-2/igt@gem_eio@hibernate.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-tglu-10/igt@gem_eio@hibernate.html
    - shard-dg2:          NOTRUN -> [ABORT][67] ([i915#7975] / [i915#8213])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg2:          NOTRUN -> [FAIL][68] ([i915#5784])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][69] -> [FAIL][70] ([i915#5784])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-17/igt@gem_eio@reset-stress.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-17/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#4525]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4812]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3539]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#2842])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-rkl:          NOTRUN -> [FAIL][76] ([i915#2842])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][77] -> [FAIL][78] ([i915#2842])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3539] / [i915#4852]) +4 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#3539] / [i915#4852])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([fdo#109283])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3281]) +14 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#3281]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4860]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#4860])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4860])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4613]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#4613]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk7/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#4613]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#284])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#4077]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@gem_mmap_gtt@big-bo-tiledy.html

  * igt@gem_mmap_gtt@medium-copy:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#4077])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_mmap_gtt@medium-copy.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4083]) +4 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_mmap_wc@close.html
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#4083]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_mmap_wc@close.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3282]) +5 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#3282])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3282]) +4 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#4270])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#4270]) +2 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4270]) +2 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4079])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_render_tiled_blits@basic.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4879])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3297]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3323])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3297])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3297] / [i915#4880])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@mmap-offset-banned@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#3297])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_userptr_blits@mmap-offset-banned@gtt.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#3297])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([fdo#109289]) +4 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([fdo#109289]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#2856]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@gen9_exec_parse@allowed-single.html
    - shard-glk:          [PASS][112] -> [INCOMPLETE][113] ([i915#5566])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#2527]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#2527])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][116] -> [ABORT][117] ([i915#8489] / [i915#8668])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#8399])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg1:          [PASS][119] -> [SKIP][120] ([i915#1397])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-17/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#1397])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4077]) +9 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#1397]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][124] -> [SKIP][125] ([i915#1397])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([fdo#109506])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4387])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#6245])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][129] ([i915#9311])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk7/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5190]) +11 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#8502] / [i915#8709]) +11 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][132] ([i915#8247]) +3 other tests fail
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#1769] / [i915#3555])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#4538] / [i915#5286])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#5286]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([fdo#111614]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#3638])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][139] -> [FAIL][140] ([i915#3743]) +1 other test fail
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([fdo#110723]) +4 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4538] / [i915#5190]) +2 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#4538])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([fdo#111615])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([fdo#111615])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#2705]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_big_joiner@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#2705])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#3886]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk7/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3886] / [i915#5354] / [i915#6095]) +3 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#5354] / [i915#6095]) +12 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3689] / [i915#5354]) +23 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#3734] / [i915#5354] / [i915#6095]) +2 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#5354] / [i915#6095]) +4 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#3886] / [i915#5354] / [i915#6095])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3689] / [i915#3886] / [i915#5354]) +5 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#5354]) +28 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#3689] / [i915#5354] / [i915#6095]) +4 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#5354] / [i915#6095]) +5 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#3742])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([fdo#111827])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@degamma:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([fdo#111827]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-glk:          NOTRUN -> [SKIP][163] ([fdo#109271]) +47 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk7/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#7828]) +9 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@kms_chamelium_hpd@dp-hpd-storm.html
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#7828]) +7 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@hdmi-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#7828]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hpd.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#7828]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3555]) +4 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#6944])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4 (NEW):
    - shard-dg2:          NOTRUN -> [TIMEOUT][170] ([i915#7173])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#3299]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#3299])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#7118])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@kms_content_protection@srm.html
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#7118]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#3359])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3359]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#4103])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#111767] / [fdo#111825]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#4103] / [i915#4213])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][181] -> [DMESG-WARN][182] ([i915#2017])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all-pipes.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#9227])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#9226] / [i915#9261]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3555] / [i915#3840]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#3555] / [i915#3840])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([fdo#111825]) +11 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([fdo#109274]) +7 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#3637]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#8381])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#2672]) +2 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#2672]) +2 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#2587] / [i915#2672])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         [PASS][194] -> [ABORT][195] ([i915#9414]) +1 other test abort
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([fdo#109285] / [i915#4098])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#5274])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_force_connector_basic@prune-stale-modes.html
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#5274])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#8708]) +4 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#1825]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#8708]) +17 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg2:          [PASS][202] -> [FAIL][203] ([fdo#103375]) +1 other test fail
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#3458]) +3 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3458]) +17 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#8708]) +5 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([fdo#111825]) +7 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([fdo#111825] / [i915#1825]) +40 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#5354]) +47 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3023]) +20 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#3555] / [i915#8228]) +2 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@kms_hdr@bpc-switch.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#4070] / [i915#4816])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#6301])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([fdo#109289]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - shard-apl:          [PASS][215] -> [ABORT][216] ([i915#180])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][217] ([fdo#109271]) +6 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-snb6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#5176] / [i915#9423]) +3 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-14/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#5235]) +19 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#5235]) +5 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#5235]) +11 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#6524])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#658])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#658])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([fdo#111068] / [i915#658])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#658]) +2 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#1072] / [i915#4078]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#1072]) +6 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#1072]) +6 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#5461] / [i915#658])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#4235]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([fdo#111615] / [i915#5289])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-rkl:          [PASS][233] -> [INCOMPLETE][234] ([i915#8875])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-rkl-1/igt@kms_rotation_crc@sprite-rotation-270.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#3555]) +2 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#3555] / [i915#4098])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#8623])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#8623])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [PASS][239] -> [FAIL][240] ([i915#9196]) +1 other test fail
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@kms_vblank@pipe-c-ts-continuation-modeset-hang:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#4070] / [i915#6768]) +1 other test skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_vblank@pipe-c-ts-continuation-modeset-hang.html

  * igt@kms_vblank@pipe-d-query-busy-hang:
    - shard-dg1:          [PASS][242] -> [DMESG-WARN][243] ([i915#4423])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-17/igt@kms_vblank@pipe-d-query-busy-hang.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_vblank@pipe-d-query-busy-hang.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#4070] / [i915#533] / [i915#6768]) +3 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#2437])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_writeback@writeback-fb-id.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][246] -> [FAIL][247] ([i915#4349])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-rkl-7/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#5608] / [i915#8516])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#8516])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [CRASH][250] ([i915#9351])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([fdo#109295] / [i915#3291] / [i915#3708])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#3291] / [i915#3708])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#3708] / [i915#4077])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#3708])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@prime_vgem@fence-read-hang.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([fdo#109307])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_get_bo_offset@create-get-offsets:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#2575]) +3 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@v3d/v3d_get_bo_offset@create-get-offsets.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([fdo#109315]) +10 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_csd@bad-extension:
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#2575]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@v3d/v3d_submit_csd@bad-extension.html

  * igt@v3d/v3d_submit_csd@bad-pad:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#2575]) +11 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@v3d/v3d_submit_csd@bad-pad.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable-twice:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#7711])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@vc4/vc4_purgeable_bo@mark-purgeable-twice.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#7711]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#7711]) +5 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@vc4/vc4_tiling@set-get.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#7711]) +8 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][264] ([i915#7742]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ctx_persistence@engines-persistence@vcs0:
    - shard-mtlp:         [ABORT][266] ([i915#9262]) -> [PASS][267] +1 other test pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-4/igt@gem_ctx_persistence@engines-persistence@vcs0.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@gem_ctx_persistence@engines-persistence@vcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-mtlp:         [DMESG-FAIL][268] ([i915#8962]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][270] ([i915#9275]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][272] ([i915#5493]) -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][274] ([i915#8617]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][276] ([i915#3591]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][278] ([i915#1397]) -> [PASS][279]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-dg1:          [SKIP][280] ([i915#1397]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][282] ([i915#5138]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [FAIL][284] ([fdo#103375]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][286] ([i915#9196]) -> [PASS][287]
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-mtlp:         [FAIL][288] ([i915#4349]) -> [PASS][289] +1 other test pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-mtlp-8/igt@perf_pmu@busy-double-start@rcs0.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-6/igt@perf_pmu@busy-double-start@rcs0.html

  
#### Warnings ####

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-dg1:          [SKIP][290] ([i915#3689] / [i915#5354] / [i915#6095]) -> [SKIP][291] ([i915#3689] / [i915#4423] / [i915#5354] / [i915#6095])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-17/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_content_protection@legacy:
    - shard-dg1:          [SKIP][292] ([i915#7116]) -> [SKIP][293] ([i915#4423] / [i915#7116])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-17/igt@kms_content_protection@legacy.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][294] ([i915#7118] / [i915#7162]) -> [SKIP][295] ([i915#7118])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg2-11/igt@kms_content_protection@type1.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_content_protection@type1.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][296] ([fdo#110189] / [i915#3955]) -> [SKIP][297] ([i915#3955])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][298] ([i915#8708]) -> [SKIP][299] ([i915#4423] / [i915#8708])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg1:          [FAIL][300] ([i915#6806]) -> [DMESG-FAIL][301] ([i915#4423])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-dg1-17/igt@perf_pmu@frequency@gt0.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@perf_pmu@frequency@gt0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9298]: https://gitlab.freedesktop.org/drm/intel/issues/9298
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423


Build changes
-------------

  * Linux: CI_DRM_13737 -> Patchwork_123656v2

  CI-20190529: 20190529
  CI_DRM_13737: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123656v2: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/index.html

--===============0154131589596251212==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/1] drm/i915/pxp: =
Add drm_dbgs for critical PXP events. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/123656/">https://patchwork.freedesktop.org/series/123656/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_123656v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13737_full -&gt; Patchwork_123656v=
2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13737_full and Patchwork_1=
23656v2_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 timeout(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-b-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-c-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123656v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13737/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13737/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13737/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13737/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13737/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13737/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13737/shard-glk5/boot.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3737/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13737/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13737/shard-glk9/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_123656v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-g=
lk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_123656v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v=
2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_123656v2/shard-glk3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_123656v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_123656v2/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_123656v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_123656v2/shard-glk7/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_123656v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_123656v2/shard-glk8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_123656v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk9/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_123656v2/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-glk9/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@drm_fdinfo@busy@ccs0.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8414"=
>i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@drm_fdinfo@virtual-busy-i=
dle-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@gem_bad_reloc@negative-rel=
oc-lut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3281">i915#3281</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_ctx_persistence@heart=
beat-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8555">i915#8555</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8555">i915#8555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@create-ext:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-6/igt@gem_eio@create-ext.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mt=
lp-4/igt@gem_eio@create-ext.html">ABORT</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13737/shard-tglu-2/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-tglu=
-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8398">i915#8398</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@gem_eio@hibernate.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i9=
15#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/82=
13">i915#8213</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@gem_eio@kms.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#578=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-=
dg1-17/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4525">i915#4525</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_exec_fair@basic-pace.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13737/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123=
656v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_exec_fair@basic-pace-sh=
are@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13737/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
23656v2/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_exec_flush@basic-wb-p=
ro-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4852">i915#4852</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_exec_flush@basic-wb-r=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
281">i915#3281</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_exec_reloc@basic-writ=
e-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
860">i915#4860</a>) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
860">i915#4860</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@gem_lmem_swapping@heavy-v=
erify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-glk7/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@gem_mmap_gtt@big-bo-tiled=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_mmap_gtt@medium-copy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i9=
15#4083</a>) +4 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i9=
15#4083</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@gem_partial_pwrite_pread@=
writes-after-reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_pxp@protected-raw-src=
-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gem_render_tiled_blits@ba=
sic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@gem_unfence_active_buffers=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_userptr_blits@invalid-=
mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-banned@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_userptr_blits@mmap-of=
fset-banned@gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@gen7_exec_parse@bitmasks.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@gen9_exec_parse@allowed-sin=
gle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13737/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2=
/shard-glk4/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</=
p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@gen9_exec_parse@bb-secure.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_123656v2/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8489">i915#8489</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123=
656v2/shard-dg1-17/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@i915_pm_rpm@dpms-non-lpsp=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@i915_pm_rpm@fences-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
77">i915#4077</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
397">i915#1397</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
23656v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@i915_pm_rpm@modeset-pc8-re=
sidency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@i915_query@hwconfig_table.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-glk7/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_addfb_basic@addfb25-y-=
tiled-small-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5190">i915#5190</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-m=
c_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) =
+11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_big_fb@4-tiled-32bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_big_fb@linear-16bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_big_fb@linear-64bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_123656v2/shard-tglu-3/igt@kms_big_fb@y-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2705">i915#2705</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_big_joiner@basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705=
">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-glk7/igt@kms_ccs@pipe-a-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_ccs@pipe-a-missing-ccs=
-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_ccs@pipe-a-random-ccs=
-data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-f=
ormat-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +12 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary=
-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3734">i915#3734</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_ccs@pipe-b-crc-primar=
y-rotation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_ccs@pipe-c-bad-aux-st=
ride-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_ccs@pipe-c-random-ccs-=
data-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5354">i915#5354</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_ccs@pipe-d-crc-primar=
y-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_ccs@pipe-d-crc-primar=
y-rotation-180-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +5 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_chamelium_color@ctm-g=
reen-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-glk7/igt@kms_chamelium_edid@dp-edid-=
change-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@kms_chamelium_hpd@dp-hpd-st=
orm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7828">i915#7828</a>) +9 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-st=
orm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7828">i915#7828</a>) +7 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hp=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_content_protection@at=
omic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4 (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_content_protection@at=
omic@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@kms_content_protection@srm.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7118">i915#7118</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_content_protection@srm.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7118">i915#7118</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#421=
3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all-pipes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_123656v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_flip@2x-plain-flip-int=
erruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111825">fdo#111825</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a>) +7 other t=
ests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 other tes=
t skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bp=
p-4tile-upscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-mtlp-8/igt@kms=
_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-m=
ode.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9414">i915#9414</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_force_connector_basic@=
prune-stale-modes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_force_connector_basic@=
prune-stale-modes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5274">i915#5274</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/8708">i915#8708</a>) +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +17 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
123656v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html">FAIL</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#10=
3375</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +17 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +40 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +47 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3023">i915#3023</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@kms_pipe_b_c_ivb@disable-=
pipe-b-enable-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_123656v2/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-=
c-dp-1.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-snb6/igt@kms_plane_scaling@plane-sca=
ler-with-clipping-clamping-rotation@pipe-a-vga-1.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +6 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-14/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_psr2_sf@cursor-plane-=
move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_psr@psr2_cursor_plane=
_onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4078">i915#4078</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_psr@psr2_primary_blt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
072">i915#1072</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@kms_psr@psr2_sprite_plane=
_move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1072">i915#1072</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5461">i915#5461</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@kms_rotation_crc@bad-pixel=
-format.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-rkl-1/igt@kms_rotation_crc@sprite-rotation-270.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
123656v2/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-270.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8875">i=
915#8875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_setmode@invalid-clone-=
single-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_123656v2/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak=
@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-modeset-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_vblank@pipe-c-ts-conti=
nuation-modeset-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6768">i915#6768</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-busy-hang:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-17/igt@kms_vblank@pipe-d-query-busy-hang.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
3656v2/shard-dg1-12/igt@kms_vblank@pipe-d-query-busy-hang.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#=
4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@kms_vblank@pipe-d-ts-conti=
nuation-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/533">i915#533</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/6768">i915#6768</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-4/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-rkl-7/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_123656v2/shard-rkl-4/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i91=
5#4349</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-7/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608"=
>i915#5608</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@perf_pmu@rc6@other-idle-g=
t0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-1/igt@prime_mmap@test_aperture_l=
imit@test_aperture_limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/9351">i915#9351</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/32=
91">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-11/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@prime_vgem@fence-read-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109307">fdo#109307</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_bo_offset@create-get-offsets:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@v3d/v3d_get_bo_offset@cre=
ate-get-offsets.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-2/igt@v3d/v3d_perfmon@get-values=
-valid-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109315">fdo#109315</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-extension:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@v3d/v3d_submit_csd@bad-ex=
tension.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-pad:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@v3d/v3d_submit_csd@bad-pad=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2575">i915#2575</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable-twice:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@vc4/vc4_purgeable_bo@mark=
-purgeable-twice.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-2/igt@vc4/vc4_tiling@get-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-dg2-5/igt@vc4/vc4_tiling@set-get.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/771=
1">i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-rkl-6/igt@vc4/vc4_wait_seqno@bad-seq=
no-1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +8 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i91=
5#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_123656v2/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-4/igt@gem_ctx_persistence@engines-persistence@vcs0=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9262">i915#9262</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_123656v2/shard-mtlp-2/igt@gem_ctx_persistence@engines-persi=
stence@vcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-wb=
.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8962">i915#8962</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_123656v2/shard-mtlp-1/igt@gem_exec_flush@basic-batch-k=
ernel-default-wb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9275">i9=
15#9275</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_123656v2/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i91=
5#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_123656v2/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8617">i915#8617</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_123656v2/shard-dg2-10/igt@i915_module_load@reload-with=
-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i=
915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_123656v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/=
shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1236=
56v2/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123656v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123=
656v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_123656v2/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-mtlp-8/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_123656v2/shard-mtlp-6/igt@perf_pmu@busy-double-start@rcs0.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-17/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_ti=
led_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_ccs@=
pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#=
5354</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6095"=
>i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-17/igt@kms_content_protection@legacy.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7116">i915#711=
6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
123656v2/shard-dg1-12/igt@kms_content_protection@legacy.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7116">i915#71=
16</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7162">i91=
5#7162</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_123656v2/shard-dg2-7/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12365=
6v2/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-=
spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/shard-dg1-12/igt@kms_frontbuf=
fer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#870=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13737/shard-dg1-17/igt@perf_pmu@frequency@gt0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6806">i915#6806</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v=
2/shard-dg1-12/igt@perf_pmu@frequency@gt0.html">DMESG-FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13737 -&gt; Patchwork_123656v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13737: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123656v2: c768959add20d28639e5bfa4cea2544aab51879e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0154131589596251212==--
