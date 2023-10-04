Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F290D7B75A9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 02:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6398210E324;
	Wed,  4 Oct 2023 00:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 88A7F10E324;
 Wed,  4 Oct 2023 00:09:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7ECBDAADEF;
 Wed,  4 Oct 2023 00:09:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4692916850466440101=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 04 Oct 2023 00:09:45 -0000
Message-ID: <169637818547.7834.6385984334362491086@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Start_cleaning_up_the_DPLL_ID_mess_=28rev3=29?=
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

--===============4692916850466440101==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Start cleaning up the DPLL ID mess (rev3)
URL   : https://patchwork.freedesktop.org/series/108827/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13706_full -> Patchwork_108827v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108827v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108827v3_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108827v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_108827v3_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [FAIL][50], [PASS][51], [PASS][52]) ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk9/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk9/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk9/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk9/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk5/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#8411])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#7701])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#7701])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#8414]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [PASS][57] -> [FAIL][58] ([i915#7742]) +1 other test fail
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#3555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#7697])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_close_race@multigpu-basic-process.html
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#7697])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_persistence@engines-persistence@vcs0:
    - shard-mtlp:         [PASS][62] -> [ABORT][63] ([i915#9262])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-2/igt@gem_ctx_persistence@engines-persistence@vcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-4/igt@gem_ctx_persistence@engines-persistence@vcs0.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#8555])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-many.html
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#8555])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][66] -> [FAIL][67] ([i915#5784]) +1 other test fail
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg1-19/igt@gem_eio@reset-stress.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4036])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#4036])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][70] -> [FAIL][71] ([i915#2842])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#4473] / [i915#4771])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][73] -> [FAIL][74] ([i915#2842])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#5107])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([fdo#112283])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#3281]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3281])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#3281]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@noreorder@rcs0:
    - shard-mtlp:         [PASS][80] -> [DMESG-FAIL][81] ([i915#8962])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-1/igt@gem_exec_schedule@noreorder@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-4/igt@gem_exec_schedule@noreorder@rcs0.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4812])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4537] / [i915#4812])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_schedule@preemptive-hang@vcs0:
    - shard-mtlp:         NOTRUN -> [FAIL][84] ([i915#9051])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@preemptive-hang@vcs0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#4613])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4613]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_mmap@basic:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4083])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#4077])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@gem_mmap_gtt@basic.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#4077]) +4 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4083]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3282])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_partial_pwrite_pread@reads.html
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#3282])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4270])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@display-protected-crc:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#4270]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#4270])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#8428]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#5190])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3282]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4079])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_tiled_pread_pwrite.html
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4079])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_tiled_pread_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#4879])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3297])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#3297])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_userptr_blits@set-cache-level.html

  * igt@gen3_render_tiledy_blits:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([fdo#109289]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#2856])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#2527]) +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_hwmon@hwmon-read:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#7707])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@i915_hwmon@hwmon-read.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#8399])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-dg1:          NOTRUN -> [FAIL][109] ([i915#3591])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#1397])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][111] -> [SKIP][112] ([i915#1397]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg1:          [PASS][113] -> [SKIP][114] ([i915#1397]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg1-12/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-apl:          NOTRUN -> [INCOMPLETE][115] ([i915#180])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@reset:
    - shard-mtlp:         NOTRUN -> [FAIL][116] ([i915#8346])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@i915_pm_rps@reset.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#7984])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@i915_power@sanity.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-4-rc_ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#8709]) +11 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-4-rc_ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#8502]) +7 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][120] ([i915#8247]) +3 other tests fail
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-3/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][121] ([i915#8247]) +3 other tests fail
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-14/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#5286])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([fdo#111614] / [i915#3638]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([fdo#111614]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([fdo#111614]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][126] -> [FAIL][127] ([i915#3743])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([fdo#111615]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([fdo#111615])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#6187])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([fdo#110723])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#3886])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3734] / [i915#5354] / [i915#6095]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#5354] / [i915#6095]) +6 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#3886] / [i915#5354] / [i915#6095]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3886] / [i915#5354] / [i915#6095])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#5354]) +7 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3689] / [i915#5354]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#5354] / [i915#6095]) +10 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#5354]) +9 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_rc_ccs_cc:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#5354] / [i915#6095]) +3 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4087]) +3 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([fdo#111827]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([fdo#111827])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([fdo#111827]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#7828]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#7828])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#7828]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_concurrent@pipe-d:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#4070] / [i915#533] / [i915#6768]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_concurrent@pipe-d.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3116])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][151] ([i915#1339])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#3555] / [i915#8814])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([fdo#109279] / [i915#3359])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#3359])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3555]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#3546])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
    - shard-dg2:          NOTRUN -> [SKIP][157] ([fdo#109274] / [i915#5354])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#4103])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#4213])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][160] -> [FAIL][161] ([i915#2346])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#9227])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#9226] / [i915#9261]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3555] / [i915#3840])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#3637]) +5 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#8381])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([fdo#109274]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([fdo#111825]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#2672]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#8810])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#2587] / [i915#2672])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          [PASS][172] -> [FAIL][173] ([i915#6880]) +1 other test fail
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#5460])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#3458])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#3458])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#8708]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#8708]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([fdo#111825]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#3023]) +7 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([fdo#111825] / [i915#1825]) +8 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#1825]) +15 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3555] / [i915#8228]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][184] ([i915#8841]) +1 other test dmesg-warn
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-snb5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-vga-1.html

  * igt@kms_plane_lowres@tiling-4@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#3582]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_plane_lowres@tiling-4@pipe-c-edp-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][186] ([i915#8292])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#5176]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#5176]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][189] ([fdo#109271]) +19 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-snb5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-vga-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#5235]) +11 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#5235]) +7 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#5235]) +15 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-14/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([fdo#111068] / [i915#658])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][194] ([fdo#109271] / [i915#658])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@cursor_blt:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#1072])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_psr@cursor_blt.html

  * igt@kms_psr@cursor_render:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#1072]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_psr@cursor_render.html

  * igt@kms_psr@sprite_mmap_cpu:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#1072])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_psr@sprite_mmap_cpu.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#5289])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - shard-apl:          [PASS][199] -> [FAIL][200] ([i915#9196])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-apl2/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl4/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-c:
    - shard-dg1:          [PASS][201] -> [FAIL][202] ([i915#9196])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-d:
    - shard-mtlp:         [PASS][203] -> [FAIL][204] ([i915#9196])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-dg2:          [PASS][205] -> [FAIL][206] ([fdo#103375])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg2-1/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-5/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][207] ([fdo#109271] / [i915#2437])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#8807])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@faulting-read@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#8440])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@perf_pmu@faulting-read@gtt.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk:          [PASS][210] -> [DMESG-WARN][211] ([i915#118])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk5/igt@perf_pmu@rc6-suspend.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk8/igt@perf_pmu@rc6-suspend.html

  * igt@prime_busy@hang-wait@ccs0:
    - shard-mtlp:         [PASS][212] -> [ABORT][213] ([i915#9414])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-1/igt@prime_busy@hang-wait@ccs0.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-4/igt@prime_busy@hang-wait@ccs0.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([fdo#109295] / [i915#3291] / [i915#3708])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@prime_vgem@basic-read.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([fdo#109307])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_submit_cl@multiple-job-submission:
    - shard-apl:          NOTRUN -> [SKIP][216] ([fdo#109271]) +19 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@v3d/v3d_submit_cl@multiple-job-submission.html

  * igt@v3d/v3d_wait_bo@bad-bo:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([fdo#109315]) +3 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@v3d/v3d_wait_bo@bad-bo.html

  * igt@v3d/v3d_wait_bo@used-bo-0ns:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#2575])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@v3d/v3d_wait_bo@used-bo-0ns.html
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#2575]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@v3d/v3d_wait_bo@used-bo-0ns.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#7711]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  * igt@vc4/vc4_wait_bo@bad-bo:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#7711])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@vc4/vc4_wait_bo@bad-bo.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#7711]) +2 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  
#### Possible fixes ####

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][223] ([i915#6786]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][225] ([i915#2842]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-rkl:          [FAIL][227] ([i915#2842]) -> [PASS][228] +3 other tests pass
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@noreorder-corked@ccs0:
    - shard-mtlp:         [DMESG-WARN][229] ([i915#8962]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corked@ccs0.html

  * igt@gem_exec_schedule@noreorder-corked@rcs0:
    - shard-mtlp:         [DMESG-FAIL][231] ([i915#8962]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@rcs0.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corked@rcs0.html

  * igt@gem_exec_schedule@noreorder-corked@vcs0:
    - shard-mtlp:         [FAIL][233] ([i915#8758]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@vcs0.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corked@vcs0.html

  * igt@gem_exec_schedule@preempt-engines@rcs0:
    - shard-mtlp:         [TIMEOUT][235] -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@preempt-engines@rcs0.html

  * igt@gem_exec_schedule@timeslicing@vcs1:
    - shard-mtlp:         [ABORT][237] ([i915#9262]) -> [PASS][238] +1 other test pass
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@timeslicing@vcs1.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@timeslicing@vcs1.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-mtlp:         [ABORT][239] ([i915#7392] / [i915#9262]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_whisper@basic-fds-priority-all.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [DMESG-WARN][241] ([i915#4936] / [i915#5493]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [INCOMPLETE][243] ([i915#5566]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][245] ([i915#8617]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][247] ([i915#8489] / [i915#8668]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][249] ([i915#1397]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][251] ([i915#5138]) -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][253] ([i915#3743]) -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][255] ([i915#2346]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-dg2:          [FAIL][257] ([i915#6880]) -> [PASS][258] +1 other test pass
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_rotation_crc@multiplane-rotation:
    - shard-rkl:          [INCOMPLETE][259] ([i915#8875]) -> [PASS][260] +1 other test pass
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-4/igt@kms_rotation_crc@multiplane-rotation.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_rotation_crc@multiplane-rotation.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - shard-rkl:          [FAIL][261] ([i915#9196]) -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - shard-snb:          [FAIL][263] ([i915#9196]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-snb4/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-snb6/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  
#### Warnings ####

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][265] ([i915#7118]) -> [SKIP][266] ([i915#7118] / [i915#7162])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg2-6/igt@kms_content_protection@type1.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][267] ([fdo#110189] / [i915#3955]) -> [SKIP][268] ([i915#3955])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][269] ([i915#3955]) -> [SKIP][270] ([fdo#110189] / [i915#3955])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg1:          [SKIP][271] ([i915#3458]) -> [SKIP][272] ([i915#3458] / [i915#4423])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][273] ([i915#4070] / [i915#4816]) -> [SKIP][274] ([i915#4816])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_psr@sprite_plane_onoff:
    - shard-dg1:          [SKIP][275] ([i915#1072]) -> [SKIP][276] ([i915#1072] / [i915#4078]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg1-15/igt@kms_psr@sprite_plane_onoff.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-12/igt@kms_psr@sprite_plane_onoff.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][277] ([i915#9351]) -> [INCOMPLETE][278] ([i915#5493])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6786]: https://gitlab.freedesktop.org/drm/intel/issues/6786
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8440]: https://gitlab.freedesktop.org/drm/intel/issues/8440
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8758]: https://gitlab.freedesktop.org/drm/intel/issues/8758
  [i915#8807]: https://gitlab.freedesktop.org/drm/intel/issues/8807
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9051]: https://gitlab.freedesktop.org/drm/intel/issues/9051
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423


Build changes
-------------

  * Linux: CI_DRM_13706 -> Patchwork_108827v3

  CI-20190529: 20190529
  CI_DRM_13706: cbd5a99e7ee59fc4acc89d448ad548fa126b2dae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7510: a4b4a33d8312e4e30ca23d26bbd1758e56540e1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108827v3: cbd5a99e7ee59fc4acc89d448ad548fa126b2dae @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/index.html

--===============4692916850466440101==
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
<tr><td><b>Series:</b></td><td>drm/i915: Start cleaning up the DPLL ID mess=
 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/108827/">https://patchwork.freedesktop.org/series/108827/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108827v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13706_full -&gt; Patchwork_108827v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108827v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_108827v3_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
108827v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108827v3/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-sus=
pend.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108827v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13706/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13706/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13706/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13706/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13706/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13706/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13706/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-gl=
k2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3706/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13706/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13706/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13706/shard-glk4/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
827v3/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_108827v3/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108827v3/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108827v3/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8827v3/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108827v3/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108827v3/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108827v3/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8827v3/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108827v3/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108827v3/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/sh=
ard-glk5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108827v3/shard-glk5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-glk4/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@api_intel_bb@object-reloc=
-keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@drm_fdinfo@all-busy-check=
-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8414">i915#8414</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08827v3/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742=
</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_close_race@multigpu-bas=
ic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7697">i915#7697</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-2/igt@gem_ctx_persistence@engines-persistence@vcs0=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108827v3/shard-mtlp-4/igt@gem_ctx_persistence@engines-persistence@=
vcs0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_ctx_persistence@heartbe=
at-many.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8555">i915#8555</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_ctx_persistence@heartb=
eat-many.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8555">i915#8555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-=
dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5784">i915#5784</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_exec_balancer@invalid-b=
onds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4036">i915#4036</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4036">i915#4036</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
827v3/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_exec_fair@basic-none-=
vip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108827v3/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_exec_params@secure-no=
n-master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_reloc@basic-cpu-r=
ead-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3281">i915#3281</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-re=
ad-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-1/igt@gem_exec_schedule@noreorder@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
827v3/shard-mtlp-4/igt@gem_exec_schedule@noreorder@rcs0.html">DMESG-FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8962">i915#89=
62</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@gem_exec_schedule@preempt=
-queue.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preemptive-hang@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@preempt=
ive-hang@vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9051">i915#9051</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_lmem_swapping@heavy-mu=
lti.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_mmap@basic.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#=
4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@gem_mmap_gtt@basic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077">=
i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_mmap_wc@set-cache-lev=
el.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_partial_pwrite_pread@re=
ads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3282">i915#3282</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3282">i915#3282</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_pxp@create-regular-con=
text-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_pxp@fail-invalid-prote=
cted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_render_copy@y-tiled-c=
cs-to-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_tiled_partial_pwrite_p=
read@reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@gem_tiled_pread_pwrite.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4079=
">i915#4079</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gem_unfence_active_buffer=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_userptr_blits@set-cac=
he-level.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@gen3_render_tiledy_blits.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_hwmon@hwmon-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@i915_hwmon@hwmon-read.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/770=
7">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@i915_pm_rc6_residency@rc6=
-idle@bcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@i915_pm_rpm@dpms-mode-unse=
t-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/sh=
ard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg1-12/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108827v3/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wa=
it.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1397">i915#1397</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@i915_pm_rpm@system-suspend-=
modeset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@i915_pm_rps@reset.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8346">i=
915#8346</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@i915_power@sanity.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7984">i9=
15#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-4-r=
c_ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-2/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-4-rc_ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-r=
c_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-3/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-14/igt@kms_async_flips@crc@pipe-=
d-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_big_fb@linear-16bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a>) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_108827v3/shard-tglu-3/igt@kms_big_fb@x-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_big_fb@yf-tiled-addfb=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-=
basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_ccs@pipe-b-bad-pixel-f=
ormat-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3734">i915#3734</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_ccs@pipe-b-ccs-on-anot=
her-bo-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>) +6 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_ccs@pipe-b-crc-sprite=
-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_ccs@pipe-b-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_ccs@pipe-d-bad-aux-str=
ide-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_ccs@pipe-d-bad-aux-st=
ride-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/6095">i915#6095</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>) +9 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_ccs@pipe-d-missing-cc=
s-buffer-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@kms_cdclk@plane-scaling@p=
ipe-b-dp-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_chamelium_color@ctm-li=
mited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_chamelium_edid@hdmi-e=
did-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_chamelium_hpd@dp-hpd-f=
ast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-d:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_concurrent@pipe-d.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070=
">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/533">i915#533</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6768">i915#6768</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@kms_content_protection@ue=
vent@pipe-a-dp-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-off=
screen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_cursor_crc@cursor-rap=
id-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_cursor_legacy@2x-nonbl=
ocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3546">i915#3546</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_cursor_legacy@2x-nonblo=
cking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108827v3/shard-glk3/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/38=
40">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_flip@2x-dpms-vs-vblan=
k-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3637">i915#3637</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_flip@2x-plain-flip-ts-=
check-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109274">fdo#109274</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i915#8810<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672=
">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108827v3/shard-dg2-7/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) +1 other test f=
ail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +2 other tests skip</=
p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test skip</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +8 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +15 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-snb5/igt@kms_pipe_crc_basic@suspend-=
read-crc@pipe-b-vga-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8841">i915#8841</a>) +1 other test dmesg-warn</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@kms_plane_lowres@tiling-4=
@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3582">i915#3582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-1/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +=
1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-snb5/igt@kms_plane_scaling@planes-do=
wnscale-factor-0-25-upscale-factor-0-25@pipe-a-vga-1.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)=
 +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) =
+11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-1/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-14/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg1-18/igt@kms_psr@cursor_blt.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">=
i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@kms_psr@cursor_render.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072=
">i915#1072</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@kms_psr@sprite_mmap_cpu.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10=
72">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-apl2/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108827v3/shard-apl4/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9196"=
>i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-c:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak-pipe-c.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108827v3/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak-pipe-c.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-d:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak-pipe-d.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108827v3/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak-pipe-d.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg2-1/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspen=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108827v3/shard-dg2-5/igt@kms_vblank@pipe-d-ts-continuation-dpms-s=
uspend.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@perf_pmu@event-wait@rcs0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8807">i915#8807</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@perf_pmu@faulting-read@gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8440">i915#8440</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-glk5/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-gl=
k8/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang-wait@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-1/igt@prime_busy@hang-wait@ccs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v3/s=
hard-mtlp-4/igt@prime_busy@hang-wait@ccs0.html">ABORT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10929=
5">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109307">fdo#109307</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multiple-job-submission:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-apl3/igt@v3d/v3d_submit_cl@multiple-=
job-submission.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@bad-bo:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@v3d/v3d_wait_bo@bad-bo.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1093=
15">fdo#109315</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@used-bo-0ns:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@v3d/v3d_wait_bo@used-bo-0ns=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2575">i915#2575</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108827v3/shard-mtlp-1/igt@v3d/v3d_wait_bo@used-bo-0n=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-6/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-twice.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7711">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@vc4/vc4_wait_bo@bad-bo.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/771=
1">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-rkl-7/igt@vc4/vc4_wait_bo@unused-bo-=
1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6786">i915#6786</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108827v=
3/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13706/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108827v3/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13706/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108827v3/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> +3 other tests pass</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-corked@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8962">i915#8962</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corke=
d@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-corked@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@rcs0.html=
">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8962">i915#8962</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corke=
d@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-corked@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@vcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8758=
">i915#8758</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corked@vcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html"=
>TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@preempt-engines@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@timeslicing@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_schedule@timeslicing@vcs1.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262">i9=
15#9262</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108827v3/shard-mtlp-1/igt@gem_exec_schedule@timeslicing@vcs1.html">PA=
SS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-4/igt@gem_exec_whisper@basic-fds-priority-all.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/739=
2">i915#7392</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9262">i915#9262</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108827v3/shard-mtlp-2/igt@gem_exec_whisper@basic-fds-prior=
ity-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936">=
i915#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108827v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-apl1/igt@gen9_exec_parse@allowed-single.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_108827v3/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13706/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8617">i915#8617</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108827v3/shard-dg2-11/igt@i915_module_load@reload-with-f=
ault-injection.html">PASS</a></p>
</li>
<li>
<p>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13706/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8489">i915#8489</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8668">i915#8668</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108827v3/shard-mtlp-2/igt@i915_module_load@reload-with=
-fault-injection.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i9=
15#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108827v3/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108827v3/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-tglu-8/igt@kms_big_fb@y-t=
iled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108827v3/shard-glk2/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwr=
ite.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_108827v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb=
565-draw-pwrite.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-rkl-4/igt@kms_rotation_crc@multiplane-rotation.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/88=
75">i915#8875</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_108827v3/shard-rkl-7/igt@kms_rotation_crc@multiplane-rotation.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak-pipe-a.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/919=
6">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108827v3/shard-rkl-7/igt@kms_universal_plane@cursor-fb-leak-pipe=
-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-snb4/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9196=
">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108827v3/shard-snb6/igt@kms_universal_plane@cursor-fb-leak-pipe-b=
.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg2-6/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8827v3/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10882=
7v3/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10882=
7v3/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-=
pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_108827v3/shard-dg1-16/igt@kms_frontbuffer_=
tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108827v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-=
max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg1-15/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
827v3/shard-dg1-12/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</=
a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13706/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9351">i915#9351</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108827v3/shard-dg2-1/igt@prime_mmap@test_aperture=
_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13706 -&gt; Patchwork_108827v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13706: cbd5a99e7ee59fc4acc89d448ad548fa126b2dae @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7510: a4b4a33d8312e4e30ca23d26bbd1758e56540e1d @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108827v3: cbd5a99e7ee59fc4acc89d448ad548fa126b2dae @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4692916850466440101==--
