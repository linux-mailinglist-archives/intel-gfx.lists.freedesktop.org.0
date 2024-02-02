Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6BC847CDF
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Feb 2024 00:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 165BE10F14C;
	Fri,  2 Feb 2024 23:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ECB910ED89;
 Fri,  2 Feb 2024 23:02:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1707638282167918308=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/dsc=3A_Fix_the_mac?=
 =?utf-8?q?ro_that_calculates_DSCC=5F/DSCA=5F_PPS_reg_address?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <navaremanasi@chromium.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 23:02:24 -0000
Message-ID: <170691494443.953177.8937949566150413439@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240202204752.1210687-1-navaremanasi@chromium.org>
In-Reply-To: <20240202204752.1210687-1-navaremanasi@chromium.org>
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

--===============1707638282167918308==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address
URL   : https://patchwork.freedesktop.org/series/129486/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14212_full -> Patchwork_129486v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129486v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129486v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 9)
------------------------------

  Additional (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129486v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_129486v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [FAIL][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47]) ([i915#8293])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][48], [PASS][49], [PASS][50], [PASS][51], [FAIL][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71]) ([i915#8293]) -> ([PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-6/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-4/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-1/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-1/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-1/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-1/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-3/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-3/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-4/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-4/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-4/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-4/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-7/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-7/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-7/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-7/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#8411])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@api_intel_bb@object-reloc-purge-cache.html
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#8411]) +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#7701])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#7701])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:
    - shard-glk:          NOTRUN -> [DMESG-WARN][99] ([i915#10140])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit.html

  * igt@drm_fdinfo@busy@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#8414]) +22 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@drm_fdinfo@busy@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][101] -> [FAIL][102] ([i915#7742])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][103] ([i915#7297])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#7697]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@gem_close_race@multigpu-basic-threads.html
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#7697])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#8562])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#8555]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#280])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4771])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4812]) +2 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#4525])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          NOTRUN -> [FAIL][112] ([i915#9606])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@gem_exec_capture@many-4k-incremental.html
    - shard-rkl:          NOTRUN -> [FAIL][113] ([i915#9606])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][114] ([i915#2842])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#3539]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [PASS][116] -> [FAIL][117] ([i915#2842])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3539] / [i915#4852]) +7 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([fdo#109283] / [i915#5107])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3281]) +18 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-range-active:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#3281]) +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_exec_reloc@basic-range-active.html

  * igt@gem_exec_reloc@basic-write-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3281]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gem_exec_reloc@basic-write-cpu.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4537] / [i915#4812]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@u-fairslice:
    - shard-snb:          NOTRUN -> [SKIP][124] ([fdo#109271]) +22 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb6/igt@gem_exec_schedule@u-fairslice.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][125] ([i915#7975] / [i915#8213])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][126] ([i915#7975] / [i915#8213])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4860]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#4613]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#4613])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#3282])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_mmap@big-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#4083])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4077]) +21 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#4077]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#4083]) +7 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_mmap_wc@bad-size.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3282]) +7 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3282]) +3 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][137] ([i915#2658])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#4270]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4270]) +9 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#4270]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#5190]) +10 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4079]) +3 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4885])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@gem_softpin@evict-snoop-interruptible.html
    - shard-rkl:          NOTRUN -> [SKIP][144] ([fdo#109312])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#3297]) +3 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3282] / [i915#3297])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#3297] / [i915#4880]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3297])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-mtlp:         NOTRUN -> [SKIP][149] ([fdo#109289]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([fdo#109289])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][151] -> [INCOMPLETE][152] ([i915#10137] / [i915#5566])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#2527]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#2856])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#2856]) +8 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#4881])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload:
    - shard-dg1:          [PASS][157] -> [DMESG-WARN][158] ([i915#4391] / [i915#4423])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-18/igt@i915_module_load@reload.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-13/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][159] -> [ABORT][160] ([i915#9697])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][161] -> [INCOMPLETE][162] ([i915#10137] / [i915#9200])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][163] -> [INCOMPLETE][164] ([i915#10137] / [i915#1982] / [i915#9200] / [i915#9849])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#7091])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([fdo#109293] / [fdo#109506])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#6621])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#6621]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#8925])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-park@gt0.html
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8925])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_rps@thresholds-park@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#3555] / [i915#8925])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-park@gt1.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#4387])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#6188])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4212]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#4215] / [i915#5190])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:
    - shard-glk:          [PASS][176] -> [FAIL][177] ([i915#2521])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#8709]) +3 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#6228])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#9531])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#1769] / [i915#3555]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#5286]) +3 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([fdo#111614])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([fdo#111614]) +6 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
    - shard-rkl:          NOTRUN -> [SKIP][185] ([fdo#111614] / [i915#3638]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][186] -> [FAIL][187] ([i915#3743]) +1 other test fail
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([fdo#110723]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#4538] / [i915#5190]) +16 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#6187])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([fdo#111615]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#2705])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4-tiled-mtl-rc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#5354]) +138 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#5354] / [i915#6095]) +9 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#5354] / [i915#6095]) +10 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_ccs@pipe-c-bad-rotation-90-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#5354]) +10 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#7213]) +3 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@hdmi-audio:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#7828]) +15 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_chamelium_audio@hdmi-audio.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([fdo#111827]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#7828]) +3 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#7828]) +2 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#3299])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_content_protection@dp-mst-type-1.html
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#3299])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#7118]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#3359])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#8814])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3359]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([fdo#109274] / [i915#5354]) +9 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([fdo#111767] / [fdo#111825])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
    - shard-dg2:          NOTRUN -> [SKIP][210] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][211] -> [FAIL][212] ([i915#2346])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#9067])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#9067])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([fdo#110189] / [i915#9723])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([fdo#110189] / [i915#9227])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3555]) +8 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_display_modes@extended-mode-basic.html
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3555]) +2 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#8812])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#3840] / [i915#9688])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#3840] / [i915#9688])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#3555] / [i915#3840])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#1839])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#9337])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_feature_discovery@dp-mst.html
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#9337])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#658])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([fdo#109274] / [fdo#111767])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([fdo#109274]) +16 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#3637])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#8381]) +2 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#2672]) +6 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#2672]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#3555] / [i915#8810])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([fdo#109285])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#8708]) +23 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-snb:          [PASS][236] -> [SKIP][237] ([fdo#109271]) +11 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#8708])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([fdo#111825] / [i915#1825]) +14 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([fdo#111825]) +6 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#10070])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][242] ([fdo#109271]) +84 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#1825]) +12 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([fdo#111767] / [fdo#111825] / [i915#1825])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([fdo#111767] / [i915#5354]) +3 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#3458]) +31 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#3023]) +8 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#3555] / [i915#8228]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#4070] / [i915#4816])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#6301])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_panel_fitting@legacy.html
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#6301])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([fdo#109289]) +3 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#6953])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_plane_scaling@intel-max-src-size.html
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#6953] / [i915#9423])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#9423]) +3 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#9423]) +3 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#9423]) +9 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#5235]) +2 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#3555] / [i915#5235])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#5235] / [i915#9423]) +11 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#5235]) +7 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#5235]) +9 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#5978])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#8430])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_pm_lpsp@screens-disabled.html
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#8430])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [PASS][266] -> [SKIP][267] ([i915#9519])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [PASS][268] -> [SKIP][269] ([i915#9519])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#6524])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_prime@d3hot.html
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#6524] / [i915#6805])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#9683]) +4 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#9683])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][274] ([fdo#111068] / [i915#9683])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#4348])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#9685])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-rkl:          [PASS][277] -> [INCOMPLETE][278] ([i915#8875] / [i915#9569])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-270.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#4235]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
    - shard-rkl:          NOTRUN -> [FAIL][280] ([i915#10136])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
    - shard-dg2:          NOTRUN -> [DMESG-FAIL][281] ([i915#10143])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][282] ([i915#10143])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html
    - shard-rkl:          NOTRUN -> [DMESG-WARN][283] ([i915#10143])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html

  * igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][284] ([i915#5465]) +3 other tests fail
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][285] ([IGT#2])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#8623])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][287] ([fdo#109309])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_vrr@flip-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][288] ([i915#3555] / [i915#8808])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#9906])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#2437])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#2437]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#2436])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#7387])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@perf@global-sseu-config.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][294] -> [FAIL][295] ([i915#4349]) +3 other tests fail
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#8516])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_udl:
    - shard-dg2:          NOTRUN -> [SKIP][297] ([fdo#109291])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@prime_udl.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#3291] / [i915#3708])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@prime_vgem@basic-write.html
    - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#3708])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#3708] / [i915#4077])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#3708])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@prime_vgem@fence-read-hang.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-mtlp:         NOTRUN -> [FAIL][302] ([i915#9779])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@syncobj_wait@invalid-wait-zero-handles.html
    - shard-dg2:          NOTRUN -> [FAIL][303] ([i915#9779])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
    - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#2575]) +2 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html

  * igt@v3d/v3d_submit_cl@bad-pad:
    - shard-rkl:          NOTRUN -> [SKIP][305] ([fdo#109315]) +4 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@v3d/v3d_submit_cl@bad-pad.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#2575]) +21 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_perfmon@create-perfmon-invalid-events:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#7711]) +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@vc4/vc4_perfmon@create-perfmon-invalid-events.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
    - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#7711]) +12 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html

  * igt@vc4/vc4_tiling@get-after-free:
    - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#7711]) +2 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@vc4/vc4_tiling@get-after-free.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][310] ([i915#7297]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][312] ([i915#5784]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-15/igt@gem_eio@reset-stress.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-17/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][314] ([i915#2842]) -> [PASS][315] +3 other tests pass
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][316] ([i915#2842]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][318] ([i915#2842]) -> [PASS][319] +2 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][320] ([i915#9275]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][322] ([i915#5566]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk1/igt@gen9_exec_parse@allowed-single.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [DMESG-WARN][324] ([i915#4423]) -> [PASS][325] +1 other test pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-17/igt@i915_pm_rpm@system-suspend-execbuf.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][326] ([i915#10031]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][328] ([i915#5138]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][330] ([i915#3743]) -> [PASS][331] +2 other tests pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-dg2:          [TIMEOUT][332] -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][334] ([i915#2346]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-tglu:         [DMESG-WARN][336] ([i915#10166]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-tglu-3/igt@kms_cursor_legacy@torture-bo@pipe-a.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-tglu-10/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [FAIL][338] ([i915#4767]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1:
    - shard-snb:          [INCOMPLETE][340] -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb1/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb6/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt:
    - shard-snb:          [SKIP][342] ([fdo#109271]) -> [PASS][343] +11 other tests pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-snb:          [SKIP][344] ([fdo#109271] / [fdo#111767]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][346] ([i915#9519]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [SKIP][348] -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][350] ([i915#9519]) -> [PASS][351] +4 other tests pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@perf_pmu@module-unload:
    - shard-dg1:          [DMESG-WARN][352] ([i915#4391] / [i915#4423]) -> [PASS][353] +1 other test pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-17/igt@perf_pmu@module-unload.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          [TIMEOUT][354] -> [SKIP][355] ([i915#4860])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-10/igt@gem_fence_thrash@bo-copy.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          [INCOMPLETE][356] ([i915#10042] / [i915#10137]) -> [WARN][357] ([i915#2658])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk1/igt@gem_pread@exhaustion.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk5/igt@gem_pread@exhaustion.html

  * igt@gem_tiled_wb:
    - shard-dg1:          [SKIP][358] ([i915#4077]) -> [SKIP][359] ([i915#4077] / [i915#4423])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-18/igt@gem_tiled_wb.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-13/igt@gem_tiled_wb.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][360] ([i915#10131] / [i915#9697]) -> [ABORT][361] ([i915#10131] / [i915#9820])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          [TIMEOUT][362] -> [SKIP][363] ([fdo#111614])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-dg2:          [TIMEOUT][364] -> [SKIP][365] ([i915#4538] / [i915#5190])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-10/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4-tiled-dg2-rc-ccs:
    - shard-dg1:          [SKIP][366] ([i915#4423] / [i915#5354] / [i915#6095]) -> [SKIP][367] ([i915#5354] / [i915#6095])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-17/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4-tiled-dg2-rc-ccs.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4-tiled-dg2-rc-ccs.html

  * igt@kms_color@gamma@pipe-a:
    - shard-mtlp:         [DMESG-WARN][368] -> [DMESG-WARN][369] ([i915#9157])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-mtlp-8/igt@kms_color@gamma@pipe-a.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-mtlp-3/igt@kms_color@gamma@pipe-a.html

  * igt@kms_content_protection@atomic:
    - shard-snb:          [SKIP][370] ([fdo#109271]) -> [INCOMPLETE][371] ([i915#8816])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb4/igt@kms_content_protection@atomic.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-dg1:          [SKIP][372] ([fdo#111825] / [i915#4423]) -> [SKIP][373] ([fdo#111825])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][374] ([i915#3955]) -> [SKIP][375] ([fdo#110189] / [i915#3955]) +1 other test skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][376] ([i915#4423] / [i915#8708]) -> [SKIP][377] ([i915#8708])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          [SKIP][378] ([fdo#109271] / [fdo#111767]) -> [SKIP][379] ([fdo#109271])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [TIMEOUT][380] -> [SKIP][381] ([i915#5354])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-dg1:          [SKIP][382] ([fdo#111825]) -> [SKIP][383] ([fdo#111825] / [i915#4423])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-4:
    - shard-dg1:          [SKIP][384] ([i915#4423] / [i915#9423]) -> [SKIP][385] ([i915#9423])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-4.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-4.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][386] ([i915#9295]) -> [SKIP][387] ([i915#3361])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
    - shard-glk:          [DMESG-FAIL][388] ([i915#10143] / [i915#10165]) -> [FAIL][389] ([i915#10136])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
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
  [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
  [i915#10042]: https://gitlab.freedesktop.org/drm/intel/issues/10042
  [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10136]: https://gitlab.freedesktop.org/drm/intel/issues/10136
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10140]: https://gitlab.freedesktop.org/drm/intel/issues/10140
  [i915#10143]: https://gitlab.freedesktop.org/drm/intel/issues/10143
  [i915#10165]: https://gitlab.freedesktop.org/drm/intel/issues/10165
  [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
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
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9157]: https://gitlab.freedesktop.org/drm/intel/issues/9157
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9697]: https://gitlab.freedesktop.org/drm/intel/issues/9697
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906


Build changes
-------------

  * Linux: CI_DRM_14212 -> Patchwork_129486v1

  CI-20190529: 20190529
  CI_DRM_14212: 1dd92467500a5ead3e44bbdfe15e064dd79b65ef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129486v1: 1dd92467500a5ead3e44bbdfe15e064dd79b65ef @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/index.html

--===============1707638282167918308==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsc: Fix the macro that calculates =
DSCC_/DSCA_ PPS reg address</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/129486/">https://patchwork.freedesktop.org/series/129486/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_129486v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129486v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14212_full -&gt; Patchwork_129486v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129486v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_129486v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 9)</h2>
<p>Additional (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
129486v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-glk1/igt@runner@aborted.html">FAIL</=
a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129486v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14212/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14212/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14212/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14212/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14212/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14212/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14212/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4212/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14212/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14212/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129=
486v1/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129486v1/shard-snb1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129486v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/sh=
ard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_129486v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9486v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_129486v1/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129486v1/shard-snb5/boot.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb5/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/sh=
ard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_129486v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
9486v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_129486v1/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129486v1/shard-snb7/boot.html">PASS</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14212/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14212/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14212/shard-rkl-6/boot.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-6/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_142=
12/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14212/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14212/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14212/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1421=
2/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14212/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shard-rkl-1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14212/shar=
d-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14212/shard-rkl-1/boot.html">PASS</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129486v1/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/sh=
ard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129486v1/shard-rkl-2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129486v1/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-r=
kl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_129486v1/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-4/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1294=
86v1/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-5=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129486v1/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1=
/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_129486v1/shard-rkl-6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129486v1/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-rkl-7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shar=
d-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_129486v1/shard-rkl-7/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@api_intel_bb@object-reloc=
-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8411">i915#8411</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@api_intel_bb@object-reloc-=
purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8411">i915#8411</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@drm_buddy@drm_buddy@drm_tes=
t_buddy_alloc_limit.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/10140">i915#10140</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@drm_fdinfo@busy@rcs0.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8414"=
>i915#8414</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_129486v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742"=
>i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-3/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8555">i915#8555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@gem_exec_balancer@bonded-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-bb-first.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9606">i915#9606</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@gem_exec_fair@basic-pace-s=
olo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486=
v1/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109283">fdo#109283</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_exec_reloc@basic-rang=
e-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gem_exec_reloc@basic-write=
-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_exec_schedule@reorder-=
wide.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-snb6/igt@gem_exec_schedule@u-fairsli=
ce.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_lmem_swapping@random-=
engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_madvise@dontneed-befo=
re-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_mmap@big-bo.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i91=
5#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_mmap_gtt@basic-small-b=
o.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4077">i915#4077</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_mmap_gtt@big-copy-odd=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_mmap_wc@bad-size.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083"=
>i915#4083</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_partial_pwrite_pread@r=
eads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gem_partial_pwrite_pread@w=
rites-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-glk9/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gem_pxp@create-regular-co=
ntext-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4270">i915#4270</a>) +9 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5190">i915#5190</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4079">i915#4079</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4885">i915#4885</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4880">i915#4880</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gen7_exec_parse@basic-all=
owed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk9/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/s=
hard-glk8/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@gen9_exec_parse@batch-inva=
lid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2856">i915#2856</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@i915_fb_tiling.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#=
4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-18/igt@i915_module_load@reload.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/sha=
rd-dg1-13/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129486v1/shard-rkl-6/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9697">i915#9697</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129486v1/shard-tglu-10/igt@i915_module_load@reload-with-fault-inje=
ction.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/10137">i915#10137</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9200">i915#9200</a>)</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk3/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_129486v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/10137">i915#10137</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9200">i915#9200</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/662=
1">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6621">i915#6621</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-pa=
rk@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8925">i915#8925</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-pa=
rk@gt1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_addfb_basic@basic-y-ti=
led-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4215">i915#4215</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-hdmi-a-2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129486v1/shard-glk5/igt@kms_async_flips@alternate-sync-=
async-flip@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_big_fb@linear-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +6 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129486v1/shard-tglu-7/igt@kms_big_fb@y-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5190">i915#5190</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_ccs@pipe-a-crc-primary=
-rotation-180-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +138 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-4-tiled-dg2-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +9 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_ccs@pipe-c-bad-rotati=
on-90-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/6095">i915#6095</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_ccs@pipe-d-random-ccs-=
data-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_cdclk@mode-transition=
@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_chamelium_audio@hdmi-a=
udio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7828">i915#7828</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_chamelium_color@ctm-bl=
ue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hp=
d-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-ran=
dom-256x85.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_cursor_legacy@2x-long-=
flip-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_129486v1/shard-glk3/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9067">i915#9067</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>) +8 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9688">i915#9688</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9337">i915#9337</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_feature_discovery@dp-=
mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_feature_discovery@psr2=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_flip@2x-wf_vblank-ts-=
check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_flip@flip-vs-fences-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8381">i915#8381</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i9=
15#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +23 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-i=
ndfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_129486v1/shard-snb4/igt@kms_frontbuffer_tracking=
@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +11 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +14 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
lane-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/10070">i915#10070</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-glk3/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +84 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +12 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@kms_frontbuffer_tracking@=
psr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3458">i915#3458</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_frontbuffer_tracking@p=
sr-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3023">i915#3023</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
301">i915#6301</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_pipe_b_c_ivb@disable-p=
ipe-b-enable-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6953">i915#6953</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-h=
dmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg1-18/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hd=
mi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-6/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +9 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-=
hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</=
a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg1-18/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-c-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-7/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +9=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5978">i=
915#5978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8430">i915#8430</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/sha=
rd-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/=
shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6524">i915=
#6524</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6524">i915=
#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6805=
">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9683">i915#9683</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_psr2_sf@overlay-plane-=
move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-270.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129486v1/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8875"=
>i915#8875</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9569">i915#9569</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10136">i915#10136=
</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">DMESG-FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915=
#10143</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_cl=
ip_offset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-7/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143=
</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-5/igt@kms_selftest@drm_format_he=
lper@drm_format_helper_test-drm_test_fb_clip_offset.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_setmode@basic@pipe-a-vg=
a-1-pipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5465">i915#5465</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_sysfs_edid_timing.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/iss=
ues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@kms_tv_load_detect@load-de=
tect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@kms_vrr@flip-basic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8808">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@perf@global-sseu-config.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/73=
87">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1294=
86v1/shard-dg2-7/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) =
+3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-10/igt@prime_udl.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#1092=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/329=
1">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/37=
08">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-5/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@syncobj_wait@invalid-wait=
-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9779">i915#9779</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@syncobj_wait@invalid-wait-=
zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9779">i915#9779</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@v3d/v3d_job_submission@mu=
ltiple-singlesync-to-multisync.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-pad:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@v3d/v3d_submit_cl@bad-pad.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09315">fdo#109315</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-2/igt@v3d/v3d_submit_csd@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-perfmon-invalid-events:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-rkl-1/igt@vc4/vc4_perfmon@create-per=
fmon-invalid-events.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-dg2-6/igt@vc4/vc4_purgeable_bo@mark-=
unpurgeable-check-retained.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7711">i915#7711</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-after-free:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-8/igt@vc4/vc4_tiling@get-after-=
free.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7297">i915#7297</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-3/igt@gem_ccs@suspen=
d-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-15/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/=
shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29486v1/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> +3 oth=
er tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129486v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_129486v1/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> =
+2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9275">i=
915#9275</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_129486v1/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk1/igt@gen9_exec_parse@allowed-single.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#556=
6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129486v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-17/igt@i915_pm_rpm@system-suspend-execbuf.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/442=
3">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129486v1/shard-dg1-15/igt@i915_pm_rpm@system-suspend-execbuf.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10031">i91=
5#10031</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_129486v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129486v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-tglu-7/igt@kms_big_fb@x-t=
iled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +2 other =
tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html=
">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_129486v1/shard-dg2-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129486v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-tglu-3/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10=
166">i915#10166</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_129486v1/shard-tglu-10/igt@kms_cursor_legacy@torture-bo@pipe-=
a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12948=
6v1/shard-dg2-10/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-snb1/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html"=
>INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129486v1/shard-snb6/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb=
-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_frontbuffer_trackin=
g@fbc-2p-primscrn-indfb-msflip-blt.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-s=
hrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_frontbuff=
er_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/=
shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129486v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_129486v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-=
wait.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-17/igt@perf_pmu@module-unload.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i91=
5#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129486v1/shard-dg1-15/igt@perf_pmu@module-unload.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-10/igt@gem_fence_thrash@bo-copy.html">TIMEOUT</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1=
/shard-dg2-1/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk1/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10042">i915#10042</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10137">i915=
#10137</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_129486v1/shard-glk5/igt@gem_pread@exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_tiled_wb:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-18/igt@gem_tiled_wb.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg=
1-13/igt@gem_tiled_wb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4077">i915#4077</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9697">i915#9697</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129486v1/shard-mtlp-6/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/10131">i915#10131</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">TIM=
EOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_129486v1/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo#11=
1614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-10/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">TIME=
OUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129486v1/shard-dg2-1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5190">i91=
5#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-17/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4-til=
ed-dg2-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@kms_ccs@p=
ipe-a-crc-sprite-planes-basic-4-tiled-dg2-rc-ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma@pipe-a:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-mtlp-8/igt@kms_color@gamma@pipe-a.html">DMESG-WARN</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v=
1/shard-mtlp-3/igt@kms_color@gamma@pipe-a.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9157">i915#9157</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-snb4/igt@kms_content_protection@atomic.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129486v1/shard-snb7/igt@kms_content_protection@atomic.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915#8816=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs-=
flipa-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12948=
6v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri=
-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-15/igt@kms_front=
buffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb=
-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-snb7/igt@kms_frontbuffer=
_tracking@psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri=
-indfb-draw-mmap-cpu.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg2-1/igt@kms_frontbuffer_tr=
acking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr=
-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-13/igt@kms_frontbuffer_t=
racking@psr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-2=
5-with-pixel-format@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/shard-dg1-=
15/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9295">i915#9295</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v1/sha=
rd-rkl-6/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_bu=
ild_fourcc_list:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14212/shard-glk7/igt@kms_selftest@drm_format_helper@drm_format_help=
er_test-drm_test_fb_build_fourcc_list.html">DMESG-FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/10143">i915#10143</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/10165">i915#10165</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v=
1/shard-glk6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_=
test_fb_build_fourcc_list.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/10136">i915#10136</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14212 -&gt; Patchwork_129486v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14212: 1dd92467500a5ead3e44bbdfe15e064dd79b65ef @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129486v1: 1dd92467500a5ead3e44bbdfe15e064dd79b65ef @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1707638282167918308==--
