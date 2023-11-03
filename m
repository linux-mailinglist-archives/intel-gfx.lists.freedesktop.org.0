Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE747E0753
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 18:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E739810E0D9;
	Fri,  3 Nov 2023 17:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D86D10E0D1;
 Fri,  3 Nov 2023 17:24:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32E29A7DFF;
 Fri,  3 Nov 2023 17:24:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1991754965335728425=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 03 Nov 2023 17:24:16 -0000
Message-ID: <169903225615.29108.15483536689481349663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231102093248.362659-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20231102093248.362659-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Remove_unused_for=5Feac?=
 =?utf-8?q?h=5Fuabi=5Fclass=5Fengine?=
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

--===============1991754965335728425==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Remove unused for_each_uabi_class_engine
URL   : https://patchwork.freedesktop.org/series/125886/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13831_full -> Patchwork_125886v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125886v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125886v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/index.html

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-mtlp0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125886v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-dg2:          NOTRUN -> [SKIP][2] +1 other test skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_lmem_swapping@heavy-multi.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_pm_rpm@cursor-dpms}:
    - shard-dg2:          [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_pm_rpm@cursor-dpms.html

  * {igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-4}:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-4.html

  
Known issues
------------

  Here are the changes found in Patchwork_125886v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [FAIL][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) ([i915#8293]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_allocator@gem-pool:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([fdo#109315]) +13 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@api_intel_allocator@gem-pool.html

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [PASS][55] -> [SKIP][56] ([i915#8411]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@render-ccs:
    - shard-dg2:          NOTRUN -> [FAIL][57] ([i915#6122])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@api_intel_bb@render-ccs.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8414]) +20 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][59] ([i915#7742])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#8414])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@drm_fdinfo@virtual-busy.html

  * igt@fbdev@eof:
    - shard-rkl:          [PASS][61] -> [SKIP][62] ([i915#2582]) +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@fbdev@eof.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@fbdev@eof.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][63] -> [SKIP][64] ([i915#1849] / [i915#2582])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@fbdev@info.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@fbdev@info.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [PASS][65] -> [SKIP][66] ([i915#3281]) +12 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][67] -> [INCOMPLETE][68] ([i915#7297])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][69] -> [FAIL][70] ([i915#6268])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-dg2:          NOTRUN -> [FAIL][71] ([fdo#103375])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8555]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [PASS][73] -> [SKIP][74] ([i915#6252])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][75] -> [ABORT][76] ([i915#7975] / [i915#8213] / [i915#8398])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-5/igt@gem_eio@hibernate.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-10/igt@gem_eio@hibernate.html
    - shard-rkl:          NOTRUN -> [ABORT][77] ([i915#7975] / [i915#8213])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg2:          [PASS][78] -> [FAIL][79] ([i915#5784])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-5/igt@gem_eio@kms.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4771])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@fairslice:
    - shard-rkl:          [PASS][81] -> [SKIP][82] ([Intel XE#874])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@gem_exec_balancer@fairslice.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@hog:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4812])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_fair@basic-none:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3539] / [i915#4852])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][85] ([i915#2842])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][86] -> [FAIL][87] ([i915#2842])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3539])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#2842])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [PASS][91] -> [FAIL][92] ([i915#2842]) +2 other tests fail
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fence@submit67:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4812])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_fence@syncobj-timeline-invalid-wait:
    - shard-dg2:          [PASS][94] -> [SKIP][95] ([i915#2575]) +16 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_exec_fence@syncobj-timeline-invalid-wait.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_fence@syncobj-timeline-invalid-wait.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3539] / [i915#4852]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([fdo#109283] / [i915#2575])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3281]) +12 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-range:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#3281]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3281]) +2 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3281]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          [PASS][102] -> [INCOMPLETE][103] ([i915#9275])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-6/igt@gem_exec_suspend@basic-s0@lmem0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4860]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4860]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#4613])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#4565])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4077]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4077]) +7 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4083]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_mmap_wc@read-write-distinct.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3282]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [PASS][113] -> [SKIP][114] ([i915#3282]) +4 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#3282]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#3282])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4270])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4270]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#768]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#8428])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4079]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#3297])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3297])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#3297]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-glk:          NOTRUN -> [SKIP][125] ([fdo#109271]) +88 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk8/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([fdo#109289]) +3 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          NOTRUN -> [INCOMPLETE][127] ([i915#5566])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#2527])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#2856]) +4 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          [PASS][130] -> [SKIP][131] ([i915#2527]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#6227])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][133] -> [ABORT][134] ([i915#8489] / [i915#8668])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#8399])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-rkl:          [PASS][136] -> [WARN][137] ([i915#2681])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
    - shard-dg1:          [PASS][138] -> [FAIL][139] ([i915#3591])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@gem-pread:
    - shard-dg2:          [PASS][140] -> [SKIP][141] ([i915#9471])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@i915_pm_rpm@gem-pread.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@i915_pm_rpm@gem-pread.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-mtlp:         NOTRUN -> [ABORT][142] ([i915#9414])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][143] -> [INCOMPLETE][144] ([i915#7790])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-snb4/igt@i915_pm_rps@reset.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#8925])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4212]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@crc:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#1845] / [i915#4098]) +11 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_async_flips@crc.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#1769])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([fdo#111614]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-dg2:          [PASS][150] -> [SKIP][151] ([fdo#109315])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#5286]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#4538] / [i915#5286])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][154] -> [FAIL][155] ([i915#5138])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([fdo#111614] / [i915#3638])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-rkl:          [PASS][157] -> [INCOMPLETE][158] ([i915#9538])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][159] ([fdo#111614])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#5190]) +15 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][161] -> [FAIL][162] ([i915#3743])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([fdo#111615])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#4538] / [i915#5190]) +4 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([fdo#109315] / [i915#5190])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([fdo#111615])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#4538])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([fdo#110723])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#4087] / [i915#7213])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#4087]) +3 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([fdo#111827])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#7828]) +7 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#7828])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#7828]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#7828])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_color@ctm-0-50@pipe-b:
    - shard-rkl:          [PASS][176] -> [SKIP][177] ([i915#4098]) +2 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_color@ctm-0-50@pipe-b.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_color@ctm-0-50@pipe-b.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][178] ([i915#7173]) +3 other tests timeout
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3299])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#7118])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][181] ([i915#1339])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#3359]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-128x128:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#4098]) +24 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#3359])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#3555] / [i915#8814])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3555]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3546])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#4103]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [PASS][189] -> [SKIP][190] ([i915#1845] / [i915#4098]) +34 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([fdo#109274] / [i915#5354]) +2 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([fdo#111767] / [fdo#111825])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#4103] / [i915#4213])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#9226] / [i915#9261]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9227])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#9227])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#9226] / [i915#9261]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#8588])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#3555] / [i915#3840])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#3469])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([fdo#111825])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-apl:          NOTRUN -> [SKIP][203] ([fdo#109271] / [fdo#111767])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
    - shard-dg2:          NOTRUN -> [SKIP][204] ([fdo#109274] / [fdo#111767])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
    - shard-snb:          NOTRUN -> [SKIP][205] ([fdo#109271] / [fdo#111767])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-snb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-snb:          NOTRUN -> [SKIP][206] ([fdo#109271]) +6 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-snb4/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([fdo#109274]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3637] / [i915#4098]) +7 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2672]) +5 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#2587] / [i915#2672]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#2672]) +4 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [PASS][212] -> [SKIP][213] ([i915#1849] / [i915#4098]) +17 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#8708]) +24 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][215] ([fdo#111825]) +6 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#3458]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#5354]) +26 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([fdo#109280]) +3 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3023]) +5 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([fdo#110189]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([fdo#111825] / [i915#1825]) +6 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#8708]) +7 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3458]) +19 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#433])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#3555] / [i915#8228]) +2 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3555] / [i915#4098]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-dg1:          NOTRUN -> [SKIP][228] ([fdo#109289])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [ABORT][229] ([i915#180])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#4098] / [i915#8825])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#8825])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#3555]) +11 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#8152])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#3555] / [i915#4098] / [i915#8152]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#5235]) +27 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#5235]) +5 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#5235]) +15 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-19/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#6524] / [i915#6805]) +1 other test skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-apl:          NOTRUN -> [SKIP][240] ([fdo#109271] / [i915#658])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([fdo#111068] / [i915#658])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][242] ([fdo#109271] / [i915#658]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#658]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@cursor_blt:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#1072]) +2 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_psr@cursor_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#1072]) +8 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#4235] / [i915#5190])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#4235]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#3555] / [i915#4098])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][249] ([IGT#2])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_sysfs_edid_timing.html

  * igt@kms_vrr@flip-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8808])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#3555]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][252] ([fdo#109271] / [i915#2437])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking-parameterized:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#5608]) +3 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@perf@blocking-parameterized.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([fdo#109289])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#7387])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@perf@global-sseu-config-invalid.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#2434])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@perf@mi-rpc.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][257] ([i915#7484])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-mtlp:         [PASS][258] -> [FAIL][259] ([i915#4349]) +3 other tests fail
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-5/igt@perf_pmu@busy-double-start@vcs1.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@vcs1.html

  * igt@prime_udl:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([fdo#109291])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#3291] / [i915#3708])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@prime_vgem@basic-fence-read.html
    - shard-rkl:          [PASS][262] -> [SKIP][263] ([fdo#109295] / [i915#3291] / [i915#3708])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@prime_vgem@basic-fence-read.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
    - shard-dg2:          NOTRUN -> [FAIL][264] ([i915#9583])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
    - shard-mtlp:         NOTRUN -> [FAIL][265] ([i915#9583])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#4818])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([fdo#109315]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_mmap@mmap-bad-flags:
    - shard-dg1:          NOTRUN -> [SKIP][268] ([i915#2575]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@v3d/v3d_mmap@mmap-bad-flags.html

  * igt@v3d/v3d_submit_cl@bad-multisync-extension:
    - shard-apl:          NOTRUN -> [SKIP][269] ([fdo#109271]) +93 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@v3d/v3d_submit_cl@bad-multisync-extension.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#2575]) +56 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#7711]) +8 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-dg1:          NOTRUN -> [SKIP][272] ([i915#7711]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  * igt@vc4/vc4_wait_bo@used-bo-1ns:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#7711]) +3 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@vc4/vc4_wait_bo@used-bo-1ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][274] ([i915#7742]) -> [PASS][275] +1 other test pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * {igt@gem_compute@compute-square}:
    - shard-rkl:          [SKIP][276] ([i915#9310]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gem_compute@compute-square.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@gem_compute@compute-square.html

  * igt@gem_exec_await@wide-contexts:
    - shard-glk:          [INCOMPLETE][278] -> [PASS][279]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk6/igt@gem_exec_await@wide-contexts.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk2/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [TIMEOUT][280] ([i915#3778] / [i915#7016]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-5/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][282] ([i915#2846]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          [SKIP][284] ([fdo#109313]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [SKIP][286] ([i915#3281]) -> [PASS][287] +15 other tests pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [SKIP][288] ([i915#7276]) -> [PASS][289]
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-tglu:         [INCOMPLETE][290] ([i915#6755] / [i915#7392]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-10/igt@gem_exec_whisper@basic-fds-forked-all.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][292] ([i915#5493]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-rkl:          [SKIP][294] ([i915#3282]) -> [PASS][295] +3 other tests pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@gem_partial_pwrite_pread@write-display.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [SKIP][296] ([i915#8411]) -> [PASS][297]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][298] ([i915#2527]) -> [PASS][299] +5 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [SKIP][300] ([i915#9588]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][302] ([i915#3591]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][304] ([i915#7984]) -> [PASS][305]
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@i915_power@sanity.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@i915_power@sanity.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu:         [FAIL][306] ([i915#3743]) -> [PASS][307] +1 other test pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_busy@extended-modeset-hang-newfb@pipe-b:
    - shard-rkl:          [INCOMPLETE][308] -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-2/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.html

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - shard-rkl:          [SKIP][310] ([i915#4098]) -> [PASS][311] +12 other tests pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_color@ctm-green-to-red@pipe-b.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][312] ([i915#2346]) -> [PASS][313] +1 other test pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [DMESG-WARN][314] ([i915#2017]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-6/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [SKIP][316] ([i915#1849] / [i915#4098]) -> [PASS][317] +9 other tests pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
    - shard-dg1:          [FAIL][318] ([fdo#103375]) -> [PASS][319] +3 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html

  * {igt@kms_pm_rpm@i2c}:
    - shard-rkl:          [SKIP][320] ([fdo#109308]) -> [PASS][321] +1 other test pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_pm_rpm@i2c.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_pm_rpm@i2c.html

  * {igt@kms_pm_rpm@modeset-lpsp-stress}:
    - shard-dg1:          [SKIP][322] ([i915#9519]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-rkl:          [SKIP][324] ([i915#1849]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          [SKIP][326] ([i915#1845] / [i915#4098]) -> [PASS][327] +23 other tests pass
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][328] ([i915#9196]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [FAIL][330] ([i915#9196]) -> [PASS][331] +1 other test pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          [FAIL][332] ([i915#8724]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@perf@enable-disable@0-rcs0.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-rkl:          [SKIP][334] ([fdo#109289]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [SKIP][336] ([i915#2434]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@perf@mi-rpc.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [FAIL][338] ([i915#4349]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@ccs0.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][340] ([i915#7957]) -> [SKIP][341] ([i915#3555])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][342] ([i915#3555]) -> [SKIP][343] ([i915#7957])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          [ABORT][344] ([i915#7975] / [i915#8213]) -> [SKIP][345] ([i915#2575])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_eio@hibernate.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_eio@hibernate.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          [SKIP][346] ([i915#3281]) -> [SKIP][347] ([i915#2575]) +1 other test skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg2:          [SKIP][348] ([i915#4860]) -> [SKIP][349] ([i915#2575])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-none.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          [SKIP][350] ([i915#3282]) -> [SKIP][351] ([i915#2575]) +1 other test skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_partial_pwrite_pread@reads.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-dg2:          [SKIP][352] ([i915#5190]) -> [SKIP][353] ([i915#2575] / [i915#5190])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_render_copy@yf-tiled-ccs-to-linear.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg2:          [SKIP][354] ([i915#4077]) -> [SKIP][355] ([i915#2575])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [INCOMPLETE][356] ([i915#5566]) -> [ABORT][357] ([i915#5566])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/igt@gen9_exec_parse@allowed-all.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_async_flips@crc@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][358] ([i915#8247]) -> [DMESG-FAIL][359] ([i915#8561]) +1 other test dmesg-fail
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-7/igt@kms_async_flips@crc@pipe-a-edp-1.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-a-edp-1.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         [DMESG-FAIL][360] ([i915#8561]) -> [FAIL][361] ([i915#8247])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][362] ([i915#4098]) -> [SKIP][363] ([i915#5286]) +6 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][364] ([i915#5286]) -> [SKIP][365] ([i915#4098]) +7 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][366] ([fdo#111614] / [i915#3638]) -> [SKIP][367] ([i915#1845] / [i915#4098])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][368] ([fdo#111614]) -> [SKIP][369] ([fdo#109315])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][370] ([i915#1845] / [i915#4098]) -> [SKIP][371] ([fdo#111614] / [i915#3638])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          [SKIP][372] ([i915#1845] / [i915#4098]) -> [SKIP][373] ([fdo#111615])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][374] ([i915#1845] / [i915#4098]) -> [SKIP][375] ([fdo#110723]) +4 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][376] ([fdo#110723]) -> [SKIP][377] ([i915#1845] / [i915#4098]) +6 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][378] ([i915#4538] / [i915#5190]) -> [SKIP][379] ([fdo#109315] / [i915#5190])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-dg2:          [SKIP][380] ([i915#7828]) -> [SKIP][381] ([i915#2575])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][382] ([i915#9608]) -> [SKIP][383] ([i915#3555])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_color@deep-color.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          [SKIP][384] ([i915#1845] / [i915#4098]) -> [SKIP][385] ([i915#7118]) +1 other test skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_content_protection@atomic.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][386] ([i915#3116]) -> [SKIP][387] ([i915#1845] / [i915#4098])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          [SKIP][388] ([i915#7118]) -> [SKIP][389] ([i915#1845] / [i915#4098]) +2 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_content_protection@srm.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][390] ([i915#7118] / [i915#7162]) -> [SKIP][391] ([i915#7118])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-11/igt@kms_content_protection@type1.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-2/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          [SKIP][392] ([fdo#109279] / [i915#3359]) -> [SKIP][393] ([i915#4098])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][394] ([i915#4098]) -> [SKIP][395] ([i915#3359]) +2 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][396] ([i915#4098]) -> [SKIP][397] ([i915#3555]) +4 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][398] ([i915#3555]) -> [SKIP][399] ([i915#4098]) +2 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          [SKIP][400] ([i915#4103] / [i915#4213] / [i915#5608]) -> [SKIP][401] ([i915#2575] / [i915#5608])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][402] ([i915#4103]) -> [SKIP][403] ([i915#1845] / [i915#4098]) +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          [SKIP][404] ([i915#1845] / [i915#4098]) -> [SKIP][405] ([fdo#111825]) +2 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-rkl:          [SKIP][406] ([fdo#111767] / [fdo#111825]) -> [SKIP][407] ([i915#1845] / [i915#4098])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-rkl:          [SKIP][408] ([fdo#111825]) -> [SKIP][409] ([i915#1845] / [i915#4098]) +3 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          [SKIP][410] ([i915#4103] / [i915#4213]) -> [SKIP][411] ([i915#2575])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][412] ([i915#1845] / [i915#4098]) -> [SKIP][413] ([i915#4103])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          [SKIP][414] ([i915#8588]) -> [SKIP][415] ([i915#4098])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_display_modes@mst-extended-mode-negative.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][416] ([i915#3555] / [i915#3840]) -> [SKIP][417] ([i915#4098])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_dsc@dsc-basic.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          [SKIP][418] ([i915#4098]) -> [SKIP][419] ([i915#3555] / [i915#3840])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][420] ([i915#3955]) -> [SKIP][421] ([fdo#110189] / [i915#3955])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][422] ([fdo#110189] / [i915#3955]) -> [SKIP][423] ([i915#3955])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][424] ([i915#8708]) -> [SKIP][425] ([fdo#109315]) +2 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][426] ([fdo#111825] / [i915#1825]) -> [SKIP][427] ([i915#1849] / [i915#4098]) +40 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][428] ([i915#1849] / [i915#4098]) -> [SKIP][429] ([fdo#111825])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][430] ([i915#1849] / [i915#4098]) -> [SKIP][431] ([i915#5439])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][432] ([fdo#111825]) -> [SKIP][433] ([i915#1849] / [i915#4098]) +1 other test skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][434] ([i915#1849] / [i915#4098]) -> [SKIP][435] ([fdo#111825] / [i915#1825]) +35 other tests skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][436] ([i915#3458]) -> [SKIP][437] ([fdo#109315])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][438] ([i915#1849] / [i915#4098]) -> [SKIP][439] ([i915#3023]) +22 other tests skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][440] ([i915#3023]) -> [SKIP][441] ([i915#1849] / [i915#4098]) +26 other tests skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:
    - shard-dg2:          [SKIP][442] ([i915#5354]) -> [SKIP][443] ([fdo#109315]) +4 other tests skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][444] ([i915#4098]) -> [SKIP][445] ([i915#3555] / [i915#8228])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [SKIP][446] ([i915#3555] / [i915#8228]) -> [SKIP][447] ([i915#1845] / [i915#4098]) +1 other test skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_hdr@static-toggle-dpms.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][448] ([i915#4816]) -> [SKIP][449] ([i915#1839] / [i915#4070] / [i915#4816])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][450] ([i915#1845] / [i915#4098]) -> [SKIP][451] ([i915#6301])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_panel_fitting@legacy.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_panel_fitting@legacy.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-dg2:          [SKIP][452] ([i915#1072]) -> [SKIP][453] ([fdo#109315]) +1 other test skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][454] ([i915#5289]) -> [SKIP][455] ([i915#4098]) +1 other test skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][456] ([fdo#111615] / [i915#5289]) -> [SKIP][457] ([i915#1845] / [i915#4098])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][458] ([i915#1845] / [i915#4098]) -> [SKIP][459] ([fdo#111615] / [i915#5289])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_vrr@flip-basic:
    - shard-rkl:          [SKIP][460] ([i915#3555]) -> [SKIP][461] ([i915#1845] / [i915#4098])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_vrr@flip-basic.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_vrr@flip-basic.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [INCOMPLETE][462] ([i915#5493]) -> [CRASH][463] ([i915#9351])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          [SKIP][464] ([i915#3708]) -> [SKIP][465] ([i915#2575])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@prime_vgem@basic-fence-flip.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [Intel XE#874]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/874
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
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
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/index.html

--===============1991754965335728425==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Remove =
unused for_each_uabi_class_engine</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125886/">https://patchwork.freedesktop.org/series/125886/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125886v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13831_full -&gt; Patchwork_125886v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125886v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125886v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v=
1/index.html</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-mtlp0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125886v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@gem_create@create-ext-cpu-=
access-big.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_lmem_swapping@heavy-m=
ulti.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_pm_rpm@cursor-dpms}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard=
-dg2-11/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-4}:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_vblank@ts-continuatio=
n-dpms-suspend@pipe-a-dp-4.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125886v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13831/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13831/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13831/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13831/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13831/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13831/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13831/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-ap=
l3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3831/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13831/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shar=
d-apl1/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125886v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5886v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125886v1/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125886v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/sh=
ard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125886v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5886v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125886v1/shard-apl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125886v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/sh=
ard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125886v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5886v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125886v1/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125886v1/shard-apl7/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_allocator@gem-pool:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@api_intel_allocator@gem-p=
ool.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25886v1/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> =
([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@api_intel_bb@render-ccs.ht=
ml">FAIL</a> ([i915#6122])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@drm_fdinfo@most-busy-check=
-all@bcs0.html">SKIP</a> ([i915#8414]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-=
check-all@rcs0.html">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@drm_fdinfo@virtual-busy.h=
tml">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@fbdev@eof.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@fb=
dev@eof.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2582">i915#2582</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@fbdev@info.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@=
fbdev@info.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
86v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> ([i915=
#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125886v1/shard-dg2-5/igt@gem_ccs@suspend-resume@li=
near-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12588=
6v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> ([i915#6=
268])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_ctx_isolation@preserv=
ation-s3@vcs1.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125886v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt=
.html">SKIP</a> ([i915#6252])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13831/shard-tglu-5/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu=
-10/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213] / [i91=
5#8398])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@gem_eio@hibernate.html">ABO=
RT</a> ([i915#7975] / [i915#8213])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-5/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt=
@gem_eio@kms.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@gem_exec_balancer@fairslice.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/=
shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/xe/kernel/issues/874">Intel XE#874</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@gem_exec_balancer@hog.html=
">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_exec_fair@basic-none.=
html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-glk8/igt@gem_exec_fair@basic-pace-sha=
re@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13831/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25886v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>=
 ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@gem_exec_fair@basic-pace-s=
olo.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
886v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i9=
15#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v=
1/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]=
) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_exec_fence@submit67.h=
tml">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-invalid-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_exec_fence@syncobj-timeline-invalid-wait.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125886v1/shard-dg2-11/igt@gem_exec_fence@syncobj-timeline-invalid-w=
ait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_exec_flush@basic-wb-pr=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109283">fdo#109283</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-=
gtt-noreloc.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@gem_exec_reloc@basic-rang=
e.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_exec_reloc@basic-writ=
e-cpu-active.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-6/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12588=
6v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> ([=
i915#9275])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_fence_thrash@bo-write=
-verify-x.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-glk8/igt@gem_lmem_swapping@verify-ra=
ndom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_mmap_gtt@fault-concur=
rent.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_mmap_gtt@zero-extend.h=
tml">SKIP</a> ([i915#4077]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_mmap_wc@read-write-dis=
tinct.html">SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125886v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads=
.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_pread@snoop.html">SKI=
P</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@gem_pwrite@basic-exhausti=
on.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> ([i915#4270]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to=
-vebox-y-tiled.html">SKIP</a> ([i915#768]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-t=
o-vebox-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-glk8/igt@gen7_exec_parse@basic-offse=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +88 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gen7_exec_parse@basic-rej=
ected.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-apl6/igt@gen9_exec_parse@allowed-sin=
gle.html">INCOMPLETE</a> ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2856]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12588=
6v1/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125886v1/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#8489] / [i915#8668])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@i915_pm_freq_api@freq-basi=
c-api.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13831/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5886v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (=
[i915#2681])</p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13831/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25886v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a>=
 ([i915#3591])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-pread:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@i915_pm_rpm@gem-pread.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-=
dg2-11/igt@i915_pm_rpm@gem-pread.html">SKIP</a> ([i915#9471])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@i915_pm_rpm@system-suspen=
d-devices.html">ABORT</a> ([i915#9414])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-snb4/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@i915_pm_rps@thresholds-pa=
rk@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_async_flips@crc.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">=
i915#1845</a> / [i915#4098]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-glk5/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_big_fb@4-tiled-16bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13831/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12588=
6v1/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>=
)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rot=
ate-0.html">SKIP</a> ([i915#5286]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915=
#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125886v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a> / [i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
86v1/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">INCOMPLETE</a> =
([i915#9538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_big_fb@y-tiled-8bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([i915#5190]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125886v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109315">fdo#109315</a> / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-=
size-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#4087] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_chamelium_color@ctm-n=
egative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_chamelium_hpd@dp-hpd-=
fast.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-hp=
d-after-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-=
without-ddc.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_color@ctm-0-50@pipe-b.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/sh=
ard-rkl-5/igt@kms_color@ctm-0-50@pipe-b.html">SKIP</a> ([i915#4098]) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_content_protection@at=
omic@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173]) +3 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_content_protection@ue=
vent@pipe-a-dp-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-128x128:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapi=
d-movement-128x128.html">SKIP</a> ([i915#4098]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rap=
id-movement-max-size.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-curs=
or-vs-flip-legacy.html">SKIP</a> ([i915#3546])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-after-cursor-var=
ying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-aft=
er-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) +34 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / [i915#5354])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / [i915#5354]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@=
drrs-hdmi-a-2.html">SKIP</a> ([i915#9226] / [i915#9261]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-2.html">SKIP</a> ([i915#9227])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-4.html">SKIP</a> ([i915#9227])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-4.html">SKIP</a> ([i915#9226] / [i915#9261]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-apl6/igt@kms_flip@2x-flip-vs-blocking=
-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-blockin=
g-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-snb4/igt@kms_flip@2x-flip-vs-blocking=
-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-snb4/igt@kms_flip@2x-modeset-vs-vbla=
nk-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_flip@2x-wf_vblank-ts-c=
heck-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109274">fdo#109274</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_flip@flip-vs-wf_vblank=
-interruptible.html">SKIP</a> ([i915#3637] / [i915#4098]) +7 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues">i915#2672</a>) =
+5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues">i915#2672<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues">i915#2672</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098=
]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +24 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#3458]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([i915#5354]) +26 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#3023]) +5 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +6 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +7 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +19 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_hdmi_inject@inject-au=
dio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_hdr@static-toggle-suspe=
nd.html">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_hdr@static-toggle-suspe=
nd.html">SKIP</a> ([i915#3555] / [i915#8228])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_invalid_mode@bad-htota=
l.html">SKIP</a> ([i915#3555] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_pipe_b_c_ivb@pipe-b-d=
ouble-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-=
read-crc@pipe-a-dp-1.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane@pixel-format-sou=
rce-clamping.html">SKIP</a> ([i915#4098] / [i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane@plane-position-h=
ole.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> ([i915#3555]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane_scaling@planes-s=
caler-unity-scaling.html">SKIP</a> ([i915#3555] / [i915#4098] / [i915#8152]=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#4098] / [i915#6953=
] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> ([i=
915#5235]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i=
915#5235]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-19/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html">SKIP</a> ([=
i915#5235]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> ([i915#6524] / [i915#6805]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_psr2_sf@overlay-plane=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-glk8/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#658]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@kms_psr@cursor_blt.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_psr@psr2_sprite_mmap_g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1072">i915#1072</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-90.html">SKIP</a> ([i915#4235] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> ([i915#4235]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> ([i915#3555] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@kms_sysfs_edid_timing.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/iss=
ues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_vrr@flip-suspend.html=
">SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@perf@blocking-parameteriz=
ed.html">SKIP</a> ([i915#5608]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@perf@gen12-oa-tlb-invalida=
te.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-7/igt@perf@global-sseu-config-in=
valid.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@perf@non-zero-reason@0-rc=
s0.html">FAIL</a> ([i915#7484])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-5/igt@perf_pmu@busy-double-start@vcs1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
86v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</a> ([i915=
#4349]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@prime_udl.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#1092=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> ([i915#3291] / [i915#3708])</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13831/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/s=
hard-rkl-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / [i915#32=
91] / [i915#3708])</p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submit=
ted-signaled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@syncobj_timeline@invalid-=
multi-wait-all-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i9=
15#9583])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-=
signaled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-mtlp-5/igt@syncobj_timeline@invalid-=
multi-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#9=
583])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@v3d/v3d_get_param@base-par=
ams.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bad-flags:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@v3d/v3d_mmap@mmap-bad-fla=
gs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-extension:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-apl7/igt@v3d/v3d_submit_cl@bad-multi=
sync-extension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +93 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-1/igt@v3d/v3d_submit_csd@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@vc4/vc4_dmabuf_poll@poll-=
read-waits-until-write-done.html">SKIP</a> ([i915#7711]) +8 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-dg1-18/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-twice.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-1ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-1/igt@vc4/vc4_wait_bo@used-bo-1n=
s.html">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> ([i915#7742]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125886v1/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@gem_compute@compute-square}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gem_compute@compute-square.html">SKIP</a> ([i=
915#9310]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125886v1/shard-rkl-7/igt@gem_compute@compute-square.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk6/igt@gem_exec_await@wide-contexts.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
886v1/shard-glk2/igt@gem_exec_await@wide-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT<=
/a> ([i915#3778] / [i915#7016]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125886v1/shard-dg2-5/igt@gem_exec_endless@dispatch=
@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125886v1/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109313">fdo#109313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel=
-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125886v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.h=
tml">PASS</a> +15 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> ([i915#7276]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125886v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-10/igt@gem_exec_whisper@basic-fds-forked-all.html"=
>INCOMPLETE</a> ([i915#6755] / [i915#7392]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@gem_exec_whi=
sper@basic-fds-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> ([i915#5493]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125886v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@gem_partial_pwrite_pread@write-display.html">=
SKIP</a> ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_partial_pwrite_pread@write-dis=
play.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">=
SKIP</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125886v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-unt=
iled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
886v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +5 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">S=
KIP</a> ([i915#9588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125886v1/shard-rkl-7/igt@i915_hangman@engine-engine-error@bc=
s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125886v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vec=
s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@i915_power@sanity.html">SKIP</a> ([i915#7984]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12588=
6v1/shard-rkl-5/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotat=
e-0-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-7/igt@kms_big_fb@y=
-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> +1 other test=
 pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-newfb@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-2/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.h=
tml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125886v1/shard-rkl-2/igt@kms_busy@extended-modeset-hang-newfb@=
pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html">SKIP<=
/a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125886v1/shard-rkl-1/igt@kms_color@ctm-green-to-red@pipe-b.html"=
>PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125886v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125886v1/shard-mtlp-6/igt@kms_cursor_legacy@single-move@all=
-pipes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / [i915=
#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125886v1/shard-rkl-1/igt@kms_fbcon_fbt@fbc.html">PASS</a> +9 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@c-hdm=
i-a4.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D103375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125886v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-hdmi-a4.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@i2c}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_pm_rpm@i2c.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard=
-rkl-2/igt@kms_pm_rpm@i2c.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-lpsp-stress}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a=
> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125886v1/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125886v1/shard-rkl-4/igt@kms_properties@plane-properties-atomic.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_rotation_crc@primary-rotat=
ion-90.html">PASS</a> +23 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-ed=
p-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125886v1/shard-mtlp-2/igt@kms_universal_plane@cur=
sor-fb-leak@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125886v1/shard-tglu-2/igt@kms_universal_plane@=
cursor-fb-leak@pipe-c-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> ([=
i915#8724]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125886v1/shard-dg2-1/igt@perf@enable-disable@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125886v1/shard-rkl-2/igt@perf@gen12-group-exclusive-stream-=
ctx-handle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-=
5/igt@perf@mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</=
a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125886v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@ccs0.html">P=
ASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
([i915#7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125886v1/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html">SKIP</a=
> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#=
3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125886v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#7957]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975=
] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125886v1/shard-dg2-11/igt@gem_eio@hibernate.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html">=
SKIP</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-a=
ctive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-none.html">S=
KIP</a> ([i915#4860]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-n=
one.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125886v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915=
#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">=
SKIP</a> ([i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-l=
inear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2575">i915#2575</a> / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_tiled_partial_pwrite_pread@writes-after-r=
eads.html">SKIP</a> ([i915#4077]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@gem_tiled_partial_pwri=
te_pread@writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-apl1/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</=
a> ([i915#5566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125886v1/shard-apl7/igt@gen9_exec_parse@allowed-all.html">ABORT</=
a> ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-7/igt@kms_async_flips@crc@pipe-a-edp-1.html">FAIL<=
/a> ([i915#8247]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125886v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-a-edp-1.html"=
>DMESG-FAIL</a> ([i915#8561]) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html">DMESG=
-FAIL</a> ([i915#8561]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125886v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-d-edp-1=
.html">FAIL</a> ([i915#8247])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125886v1/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html"=
>SKIP</a> ([i915#5286]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-180-hflip.html">SKIP</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_big_fb@4-tile=
d-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#4098]) +7 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo#=
111614</a> / [i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-2=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fd=
o#111614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125886v1/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315"=
>fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915=
#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-=
90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111614">fdo#111614</a> / [i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>=
 / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125886v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#1116=
15</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1845">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_big_fb@y=
f-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +4 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D110723">fdo#110723</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_big_fb@yf-til=
ed-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#40=
98]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-d=
g2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-fl=
ip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a> / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html">S=
KIP</a> ([i915#7828]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_chamelium_hpd@vga-hpd-without-=
ddc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a> ([i915#96=
08]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5886v1/shard-rkl-7/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_content_protection@atomic.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125886v1/shard-rkl-4/igt@kms_content_protection@atomic.html">S=
KIP</a> ([i915#7118]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> ([i915#3116]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125886v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_content_protection@srm.html">SKIP</a> ([i=
915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125886v1/shard-rkl-5/igt@kms_content_protection@srm.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>=
 / [i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> =
([i915#7118] / [i915#7162]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125886v1/shard-dg2-2/igt@kms_content_protection@type1.=
html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109279"=
>fdo#109279</a> / [i915#3359]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125886v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170=
.html">SKIP</a> ([i915#3359]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x10.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.h=
tml">SKIP</a> ([i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> ([i915#4103] / [i915#4213] / [i915#5608]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-=
dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i91=
5#2575</a> / [i915#5608])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> ([i915#4103]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_l=
egacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i91=
5#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125886v1/shard-rkl-7/igt@kms_cursor_legacy@cursora=
-vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-tra=
nsitions.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_legacy=
@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-si=
ze.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-f=
lipb-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg=
2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/sha=
rd-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transit=
ions-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_display_modes@mst-extended-mode-negative.=
html">SKIP</a> ([i915#8588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_display_modes@mst-extend=
ed-mode-negative.html">SKIP</a> ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555]=
 / [i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125886v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#4=
098])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#40=
98]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5886v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [=
i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12588=
6v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / [i915#3955])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / [i915#3955]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125886v1/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a=
> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_fro=
ntbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315=
</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_fron=
tbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a=
> / [i915#4098]) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptra=
ck-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_frontb=
uffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i=
915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125886v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-=
tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-flip=
track-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_frontbuffer_tra=
cking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098])=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-s=
pr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-4/igt=
@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825"=
>fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1825">i915#1825</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_fro=
ntbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_front=
buffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#3023=
]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#3023]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_fron=
tbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a=
> / [i915#4098]) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrf=
b-msflip-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-11/igt@kms_frontbuffe=
r_tracking@psr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>) +4 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#409=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
886v1/shard-rkl-1/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i9=
15#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i=
915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> ([i915#4816]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1839">i915#1839</a> / [i915#4070] / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> =
/ [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125886v1/shard-rkl-1/igt@kms_panel_fitting@legacy.html">SKIP</a> ([=
i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5886v1/shard-dg2-11/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-18=
0.html">SKIP</a> ([i915#5289]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> ([i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111615">fdo#111615</a> / [i915#5289]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-5/igt@kms_rotation_crc@pr=
imary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-9=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1845">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125886v1/shard-rkl-2/igt@kms_rotation_crc@pri=
mary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_vrr@flip-basic.html">SKIP</a> ([i915#3555=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
86v1/shard-rkl-5/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098])<=
/li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">INCOMPLETE</a> ([i915#5493]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125886v1/shard-dg2-6/igt@prime_mmap@=
test_aperture_limit@test_aperture_limit-smem.html">CRASH</a> ([i915#9351])<=
/li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> ([=
i915#3708]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125886v1/shard-dg2-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575<=
/a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============1991754965335728425==--
