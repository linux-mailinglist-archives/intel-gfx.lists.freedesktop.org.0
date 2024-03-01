Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0031986D85F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 01:35:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CC210E76F;
	Fri,  1 Mar 2024 00:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE4810E76F;
 Fri,  1 Mar 2024 00:35:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8608841169260008668=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Disable_automatic_load_CCS_?=
 =?utf-8?q?load_balancing_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 01 Mar 2024 00:35:45 -0000
Message-ID: <170925334571.414572.1339067700501904447@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240229232859.70058-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240229232859.70058-1-andi.shyti@linux.intel.com>
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

--===============8608841169260008668==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Disable automatic load CCS load balancing (rev4)
URL   : https://patchwork.freedesktop.org/series/129951/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14370 -> Patchwork_129951v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129951v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129951v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): bat-arls-2 bat-jsl-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129951v4:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-blb-e6850:       [PASS][1] -> [FAIL][2] +10 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-blb-e6850/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@gem_close_race@basic-process.html
    - fi-bsw-nick:        [PASS][3] -> [FAIL][4] +15 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-nick/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-nick/igt@gem_close_race@basic-process.html
    - bat-rplp-1:         [PASS][5] -> [FAIL][6] +14 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rplp-1/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rplp-1/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-cfl-guc:         [PASS][7] -> [FAIL][8] +14 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-guc/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-guc/igt@gem_close_race@basic-threads.html
    - bat-jsl-3:          [PASS][9] -> [FAIL][10] +13 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-3/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic-files:
    - bat-adlp-6:         [PASS][11] -> [SKIP][12] +13 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-6/igt@gem_ctx_create@basic-files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-6/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_fence@basic-await:
    - bat-adlp-6:         NOTRUN -> [SKIP][13] +5 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-6/igt@gem_exec_fence@basic-await.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][14] +5 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@gem_exec_fence@basic-await.html
    - bat-jsl-3:          NOTRUN -> [SKIP][15] +5 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@gem_exec_fence@basic-await.html
    - bat-adlp-9:         NOTRUN -> [SKIP][16] +5 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-9/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-wait:
    - bat-adln-1:         NOTRUN -> [SKIP][17] +5 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adln-1/igt@gem_exec_fence@basic-wait.html
    - bat-adlm-1:         NOTRUN -> [SKIP][18] +4 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@gem_exec_fence@basic-wait.html
    - bat-rplp-1:         NOTRUN -> [SKIP][19] +5 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rplp-1/igt@gem_exec_fence@basic-wait.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][20] +5 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-kbl-7567u:       [PASS][21] -> [FAIL][22] +13 other tests fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html
    - bat-adln-1:         [PASS][23] -> [FAIL][24] +14 other tests fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adln-1/igt@gem_exec_parallel@engines@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adln-1/igt@gem_exec_parallel@engines@basic.html
    - fi-ivb-3770:        [PASS][25] -> [FAIL][26] +15 other tests fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ivb-3770/igt@gem_exec_parallel@engines@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ivb-3770/igt@gem_exec_parallel@engines@basic.html
    - fi-elk-e7500:       [PASS][27] -> [FAIL][28] +13 other tests fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@gem_exec_parallel@engines@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-guc:         [PASS][29] -> [FAIL][30] +13 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-guc/igt@gem_exec_parallel@engines@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-guc/igt@gem_exec_parallel@engines@basic.html
    - bat-adlm-1:         [PASS][31] -> [FAIL][32] +13 other tests fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlm-1/igt@gem_exec_parallel@engines@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@gem_exec_parallel@engines@basic.html
    - fi-tgl-1115g4:      [PASS][33] -> [FAIL][34] +13 other tests fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-tgl-1115g4/igt@gem_exec_parallel@engines@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-apl-guc:         [PASS][35] -> [FAIL][36] +14 other tests fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-pnv-d510:        [PASS][37] -> [FAIL][38] +10 other tests fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-j4005:       [PASS][39] -> [FAIL][40] +13 other tests fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-glk-j4005/igt@gem_exec_parallel@engines@userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@gem_exec_parallel@engines@userptr.html
    - bat-adlp-9:         [PASS][41] -> [FAIL][42] +14 other tests fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-9/igt@gem_exec_parallel@engines@userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-9/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8700k:       [PASS][43] -> [FAIL][44] +13 other tests fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html

  * igt@gem_linear_blits@basic:
    - bat-rplp-1:         [PASS][45] -> [SKIP][46] +13 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rplp-1/igt@gem_linear_blits@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rplp-1/igt@gem_linear_blits@basic.html
    - fi-rkl-11600:       [PASS][47] -> [SKIP][48] +13 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-rkl-11600/igt@gem_linear_blits@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@gem_linear_blits@basic.html

  * igt@gem_lmem_swapping@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][49] +9 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@gem_lmem_swapping@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-rkl-11600:       [PASS][50] -> [FAIL][51] +13 other tests fail
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-rkl-11600/igt@gem_render_linear_blits@basic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@gem_render_linear_blits@basic.html
    - fi-skl-6600u:       [PASS][52] -> [FAIL][53] +13 other tests fail
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-6600u/igt@gem_render_linear_blits@basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@gem_render_linear_blits@basic.html

  * igt@gem_softpin@allocator-basic:
    - bat-dg2-11:         [PASS][54] -> [SKIP][55] +4 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-11/igt@gem_softpin@allocator-basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@gem_softpin@allocator-basic.html
    - bat-dg2-14:         [PASS][56] -> [SKIP][57] +4 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-14/igt@gem_softpin@allocator-basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@gem_softpin@allocator-basic.html

  * igt@gem_sync@basic-all:
    - bat-adlp-9:         [PASS][58] -> [SKIP][59] +13 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-9/igt@gem_sync@basic-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-9/igt@gem_sync@basic-all.html
    - bat-adln-1:         [PASS][60] -> [SKIP][61] +13 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adln-1/igt@gem_sync@basic-all.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adln-1/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - bat-dg1-7:          [PASS][62] -> [SKIP][63] +12 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg1-7/igt@gem_sync@basic-each.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@gem_sync@basic-each.html
    - bat-jsl-3:          [PASS][64] -> [SKIP][65] +13 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-3/igt@gem_sync@basic-each.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@gem_sync@basic-each.html

  * igt@gem_tiled_blits@basic:
    - bat-adlm-1:         [PASS][66] -> [SKIP][67] +13 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlm-1/igt@gem_tiled_blits@basic.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@gem_tiled_blits@basic.html
    - fi-tgl-1115g4:      [PASS][68] -> [SKIP][69] +13 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-tgl-1115g4/igt@gem_tiled_blits@basic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@gem_tiled_blits@basic.html

  * igt@gem_wait@busy@all-engines:
    - fi-skl-guc:         [PASS][70] -> [FAIL][71] +14 other tests fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-guc/igt@gem_wait@busy@all-engines.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-guc/igt@gem_wait@busy@all-engines.html
    - bat-dg2-11:         [PASS][72] -> [FAIL][73] +77 other tests fail
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-11/igt@gem_wait@busy@all-engines.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@gem_wait@busy@all-engines.html
    - fi-kbl-x1275:       [PASS][74] -> [FAIL][75] +12 other tests fail
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html
    - fi-cfl-8109u:       [PASS][76] -> [FAIL][77] +13 other tests fail
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/igt@gem_wait@busy@all-engines.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@gem_wait@busy@all-engines.html

  * igt@gem_wait@wait@all-engines:
    - bat-kbl-2:          [PASS][78] -> [FAIL][79] +12 other tests fail
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-kbl-2/igt@gem_wait@wait@all-engines.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@gem_wait@wait@all-engines.html
    - bat-adlp-6:         [PASS][80] -> [FAIL][81] +14 other tests fail
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-6/igt@gem_wait@wait@all-engines.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-6/igt@gem_wait@wait@all-engines.html

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][82] -> [FAIL][83] +14 other tests fail
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@i915_module_load@load.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@i915_module_load@load.html
    - bat-arls-1:         [PASS][84] -> [ABORT][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-1/igt@i915_module_load@load.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-arls-1/igt@i915_module_load@load.html
    - bat-dg2-13:         [PASS][86] -> [FAIL][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-13/igt@i915_module_load@load.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-13/igt@i915_module_load@load.html
    - bat-arls-3:         [PASS][88] -> [ABORT][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-3/igt@i915_module_load@load.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-arls-3/igt@i915_module_load@load.html
    - bat-mtlp-6:         [PASS][90] -> [ABORT][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-mtlp-6/igt@i915_module_load@load.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-mtlp-6/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][92] -> [ABORT][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-mtlp-8/igt@i915_module_load@load.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-mtlp-8/igt@i915_module_load@load.html

  * igt@i915_selftest@live@coherency:
    - bat-jsl-3:          [PASS][94] -> [DMESG-FAIL][95] +5 other tests dmesg-fail
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-3/igt@i915_selftest@live@coherency.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@i915_selftest@live@coherency.html
    - fi-ivb-3770:        [PASS][96] -> [DMESG-FAIL][97] +3 other tests dmesg-fail
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ivb-3770/igt@i915_selftest@live@coherency.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ivb-3770/igt@i915_selftest@live@coherency.html
    - fi-elk-e7500:       [PASS][98] -> [DMESG-FAIL][99] +3 other tests dmesg-fail
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@i915_selftest@live@coherency.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@i915_selftest@live@coherency.html
    - fi-ilk-650:         [PASS][100] -> [DMESG-FAIL][101] +3 other tests dmesg-fail
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@i915_selftest@live@coherency.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@i915_selftest@live@coherency.html
    - fi-blb-e6850:       [PASS][102] -> [DMESG-FAIL][103] +2 other tests dmesg-fail
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-blb-e6850/igt@i915_selftest@live@coherency.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@i915_selftest@live@coherency.html
    - bat-adlp-6:         [PASS][104] -> [DMESG-FAIL][105] +4 other tests dmesg-fail
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-6/igt@i915_selftest@live@coherency.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-6/igt@i915_selftest@live@coherency.html
    - fi-pnv-d510:        [PASS][106] -> [DMESG-FAIL][107] +2 other tests dmesg-fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-pnv-d510/igt@i915_selftest@live@coherency.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][108] -> [DMESG-FAIL][109] +5 other tests dmesg-fail
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6600u:       [PASS][110] -> [DMESG-FAIL][111] +5 other tests dmesg-fail
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - fi-apl-guc:         [PASS][112] -> [DMESG-FAIL][113] +5 other tests dmesg-fail
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
    - bat-dg1-7:          [PASS][114] -> [DMESG-FAIL][115] +4 other tests dmesg-fail
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg1-7/igt@i915_selftest@live@gem_contexts.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@i915_selftest@live@gem_contexts.html
    - fi-glk-j4005:       [PASS][116] -> [DMESG-FAIL][117] +5 other tests dmesg-fail
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-glk-j4005/igt@i915_selftest@live@gem_contexts.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@i915_selftest@live@gem_contexts.html
    - bat-adlp-9:         [PASS][118] -> [DMESG-FAIL][119] +4 other tests dmesg-fail
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-guc:         [PASS][120] -> [DMESG-FAIL][121] +5 other tests dmesg-fail
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8700k:       [PASS][122] -> [DMESG-FAIL][123] +5 other tests dmesg-fail
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][124] -> [DMESG-FAIL][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-9:          [PASS][126] -> [DMESG-FAIL][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-8:          [PASS][128] -> [DMESG-FAIL][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-8/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - bat-dg2-14:         [PASS][130] -> [ABORT][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-14/igt@i915_selftest@live@hugepages.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@i915_selftest@live@hugepages.html
    - bat-dg2-11:         [PASS][132] -> [ABORT][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-11/igt@i915_selftest@live@hugepages.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@perf:
    - fi-kbl-x1275:       [PASS][134] -> [DMESG-FAIL][135] +5 other tests dmesg-fail
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@i915_selftest@live@perf.html
    - fi-cfl-8109u:       [PASS][136] -> [DMESG-FAIL][137] +5 other tests dmesg-fail
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/igt@i915_selftest@live@perf.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@i915_selftest@live@perf.html
    - fi-kbl-7567u:       [PASS][138] -> [DMESG-FAIL][139] +5 other tests dmesg-fail
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-7567u/igt@i915_selftest@live@perf.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@i915_selftest@live@perf.html
    - bat-adln-1:         [PASS][140] -> [DMESG-FAIL][141] +4 other tests dmesg-fail
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adln-1/igt@i915_selftest@live@perf.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adln-1/igt@i915_selftest@live@perf.html
    - fi-kbl-guc:         [PASS][142] -> [DMESG-FAIL][143] +5 other tests dmesg-fail
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-guc/igt@i915_selftest@live@perf.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-guc/igt@i915_selftest@live@perf.html
    - bat-adlm-1:         [PASS][144] -> [DMESG-FAIL][145] +4 other tests dmesg-fail
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlm-1/igt@i915_selftest@live@perf.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@i915_selftest@live@perf.html
    - fi-tgl-1115g4:      [PASS][146] -> [DMESG-FAIL][147] +5 other tests dmesg-fail
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-tgl-1115g4/igt@i915_selftest@live@perf.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - fi-bsw-nick:        [PASS][148] -> [DMESG-FAIL][149] +5 other tests dmesg-fail
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-nick/igt@i915_selftest@live@requests.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-nick/igt@i915_selftest@live@requests.html
    - bat-kbl-2:          [PASS][150] -> [DMESG-FAIL][151] +5 other tests dmesg-fail
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-kbl-2/igt@i915_selftest@live@requests.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@i915_selftest@live@requests.html
    - bat-rplp-1:         [PASS][152] -> [DMESG-FAIL][153] +4 other tests dmesg-fail
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rplp-1/igt@i915_selftest@live@requests.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rplp-1/igt@i915_selftest@live@requests.html
    - fi-rkl-11600:       [PASS][154] -> [DMESG-FAIL][155] +5 other tests dmesg-fail
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-rkl-11600/igt@i915_selftest@live@requests.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@i915_selftest@live@requests.html

  * igt@kms_busy@basic:
    - bat-dg2-11:         NOTRUN -> [SKIP][156]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@kms_busy@basic.html
    - bat-dg2-14:         NOTRUN -> [SKIP][157]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@kms_busy@basic.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - bat-dg2-13:         NOTRUN -> [FAIL][158]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-13/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:
    - bat-dg2-14:         [PASS][159] -> [FAIL][160] +81 other tests fail
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-14/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - bat-dg1-7:          [PASS][161] -> [FAIL][162] +66 other tests fail
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html

  
#### Warnings ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-pnv-d510:        [SKIP][163] ([fdo#109271]) -> [FAIL][164] +2 other tests fail
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-pnv-d510/igt@gem_exec_parallel@engines@contexts.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-blb-e6850:       [SKIP][165] ([fdo#109271]) -> [FAIL][166] +2 other tests fail
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-blb-e6850/igt@gem_exec_parallel@engines@fds.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@gem_exec_parallel@engines@fds.html
    - fi-elk-e7500:       [SKIP][167] ([fdo#109271]) -> [FAIL][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@gem_exec_parallel@engines@fds.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@gem_exec_parallel@engines@fds.html
    - fi-ilk-650:         [SKIP][169] ([fdo#109271]) -> [FAIL][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@gem_exec_parallel@engines@fds.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       [SKIP][171] ([fdo#109271] / [i915#2190]) -> [FAIL][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       [SKIP][173] ([fdo#109271] / [i915#2190]) -> [FAIL][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-1115g4:      [SKIP][175] ([i915#2190]) -> [FAIL][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       [SKIP][177] ([fdo#109271] / [i915#2190]) -> [FAIL][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
    - bat-kbl-2:          [SKIP][179] ([fdo#109271]) -> [FAIL][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-kbl-2/igt@gem_huc_copy@huc-copy.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       [SKIP][181] ([i915#2190]) -> [FAIL][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       [SKIP][183] ([fdo#109271] / [i915#2190]) -> [FAIL][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-3:          [SKIP][185] ([i915#2190]) -> [FAIL][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-3/igt@gem_huc_copy@huc-copy.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       [SKIP][187] ([fdo#109271] / [i915#2190]) -> [FAIL][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       [SKIP][189] ([fdo#109271] / [i915#2190]) -> [FAIL][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg2-14:         [SKIP][191] ([i915#4077]) -> [SKIP][192] +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html
    - bat-dg1-7:          [SKIP][193] ([i915#4077]) -> [SKIP][194] +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
    - bat-dg2-11:         [SKIP][195] ([i915#4077]) -> [SKIP][196] +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html

  * igt@kms_busy@basic:
    - bat-adlm-1:         [SKIP][197] ([i915#9875] / [i915#9900]) -> [SKIP][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlm-1/igt@kms_busy@basic.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@kms_busy@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_create@basic-files:
    - {bat-rpls-3}:       [PASS][199] -> [SKIP][200] +13 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rpls-3/igt@gem_ctx_create@basic-files.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rpls-3/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_basic@basic:
    - {bat-rpls-3}:       NOTRUN -> [SKIP][201] +5 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rpls-3/igt@gem_exec_basic@basic.html

  * igt@gem_render_tiled_blits@basic:
    - {bat-rpls-3}:       [PASS][202] -> [FAIL][203] +14 other tests fail
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rpls-3/igt@gem_render_tiled_blits@basic.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rpls-3/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - {bat-adls-6}:       [PASS][204] -> [SKIP][205] +13 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adls-6/igt@gem_tiled_blits@basic.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@gem_tiled_blits@basic.html

  * igt@i915_module_load@load:
    - {bat-arls-4}:       [PASS][206] -> [ABORT][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-4/igt@i915_module_load@load.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-arls-4/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gem_contexts:
    - {bat-rpls-3}:       [PASS][208] -> [DMESG-FAIL][209] +5 other tests dmesg-fail
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rpls-3/igt@i915_selftest@live@gem_contexts.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rpls-3/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-adls-6}:       [DMESG-WARN][210] ([i915#5591]) -> [DMESG-FAIL][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adls-6/igt@i915_selftest@live@hangcheck.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@perf:
    - {bat-adls-6}:       [PASS][212] -> [DMESG-FAIL][213] +4 other tests dmesg-fail
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adls-6/igt@i915_selftest@live@perf.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@i915_selftest@live@perf.html

  * igt@kms_busy@basic:
    - {bat-adls-6}:       NOTRUN -> [SKIP][214] +5 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@kms_busy@basic.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-adls-6}:       [PASS][215] -> [FAIL][216] +14 other tests fail
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adls-6/igt@kms_frontbuffer_tracking@basic.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@kms_frontbuffer_tracking@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_129951v4 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][217] -> [FAIL][218] ([i915#8293])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-n3050/boot.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic:
    - fi-elk-e7500:       [PASS][219] -> [SKIP][220] ([fdo#109271]) +11 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@gem_ctx_create@basic.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@gem_ctx_create@basic.html
    - fi-bsw-nick:        [PASS][221] -> [SKIP][222] ([fdo#109271]) +10 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-nick/igt@gem_ctx_create@basic.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-nick/igt@gem_ctx_create@basic.html

  * igt@gem_exec_basic@basic:
    - fi-ilk-650:         NOTRUN -> [SKIP][223] ([fdo#109271]) +5 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@gem_exec_basic@basic.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][224] ([fdo#109271]) +5 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@gem_exec_basic@basic.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][225] ([fdo#109271]) +5 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@gem_exec_basic@basic.html

  * igt@gem_exec_fence@basic-await:
    - fi-skl-6600u:       NOTRUN -> [SKIP][226] ([fdo#109271]) +5 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@gem_exec_fence@basic-await.html
    - fi-apl-guc:         NOTRUN -> [SKIP][227] ([fdo#109271]) +5 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-apl-guc/igt@gem_exec_fence@basic-await.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][228] ([fdo#109271]) +5 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@gem_exec_fence@basic-await.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][229] ([fdo#109271]) +5 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@gem_exec_fence@basic-await.html
    - fi-skl-guc:         NOTRUN -> [SKIP][230] ([fdo#109271]) +5 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-guc/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-busy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][231] ([fdo#109271]) +5 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@gem_exec_fence@basic-busy.html

  * igt@gem_exec_fence@basic-wait:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][232] ([fdo#109271]) +5 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][233] ([fdo#109271]) +5 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@gem_exec_fence@basic-wait.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][234] ([fdo#109271]) +5 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-nick/igt@gem_exec_fence@basic-wait.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][235] ([fdo#109271]) +4 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-guc/igt@gem_exec_fence@basic-wait.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][236] ([fdo#109271]) +5 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-guc/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][237] ([fdo#109271]) +4 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@gem_exec_fence@nb-await.html
    - bat-kbl-2:          NOTRUN -> [SKIP][238] ([fdo#109271]) +4 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_store@basic:
    - fi-cfl-guc:         [PASS][239] -> [SKIP][240] ([fdo#109271]) +13 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-guc/igt@gem_exec_store@basic.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-guc/igt@gem_exec_store@basic.html

  * igt@gem_linear_blits@basic:
    - fi-apl-guc:         [PASS][241] -> [SKIP][242] ([fdo#109271]) +13 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-apl-guc/igt@gem_linear_blits@basic.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-apl-guc/igt@gem_linear_blits@basic.html

  * igt@gem_ringfill@basic-all:
    - fi-skl-6600u:       [PASS][243] -> [SKIP][244] ([fdo#109271]) +13 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-6600u/igt@gem_ringfill@basic-all.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@gem_ringfill@basic-all.html
    - fi-pnv-d510:        [PASS][245] -> [SKIP][246] ([fdo#109271]) +9 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-pnv-d510/igt@gem_ringfill@basic-all.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@gem_ringfill@basic-all.html
    - fi-glk-j4005:       [PASS][247] -> [SKIP][248] ([fdo#109271]) +13 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-glk-j4005/igt@gem_ringfill@basic-all.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@gem_ringfill@basic-all.html

  * igt@gem_softpin@allocator-basic:
    - fi-skl-guc:         [PASS][249] -> [SKIP][250] ([fdo#109271]) +13 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-guc/igt@gem_softpin@allocator-basic.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-guc/igt@gem_softpin@allocator-basic.html
    - fi-kbl-7567u:       [PASS][251] -> [SKIP][252] ([fdo#109271]) +13 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-7567u/igt@gem_softpin@allocator-basic.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@gem_softpin@allocator-basic.html
    - fi-cfl-8700k:       [PASS][253] -> [SKIP][254] ([fdo#109271]) +13 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8700k/igt@gem_softpin@allocator-basic.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@gem_softpin@allocator-basic.html
    - bat-kbl-2:          [PASS][255] -> [SKIP][256] ([fdo#109271]) +13 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-kbl-2/igt@gem_softpin@allocator-basic.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@gem_softpin@allocator-basic.html

  * igt@gem_softpin@safe-alignment:
    - fi-kbl-x1275:       [PASS][257] -> [SKIP][258] ([fdo#109271]) +13 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-x1275/igt@gem_softpin@safe-alignment.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@gem_softpin@safe-alignment.html

  * igt@gem_sync@basic-all:
    - fi-cfl-8109u:       [PASS][259] -> [SKIP][260] ([fdo#109271]) +13 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/igt@gem_sync@basic-all.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@gem_sync@basic-all.html
    - fi-ivb-3770:        [PASS][261] -> [SKIP][262] ([fdo#109271]) +11 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ivb-3770/igt@gem_sync@basic-all.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ivb-3770/igt@gem_sync@basic-all.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-guc:         [PASS][263] -> [SKIP][264] ([fdo#109271]) +13 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-guc/igt@gem_tiled_blits@basic.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-guc/igt@gem_tiled_blits@basic.html
    - fi-ilk-650:         [PASS][265] -> [SKIP][266] ([fdo#109271]) +11 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@gem_tiled_blits@basic.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-blb-e6850:       [PASS][267] -> [SKIP][268] ([fdo#109271]) +9 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html

  * igt@kms_busy@basic:
    - fi-ivb-3770:        NOTRUN -> [SKIP][269] ([fdo#109271]) +5 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ivb-3770/igt@kms_busy@basic.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][270] ([Intel XE#484]) +1 other test skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][271] ([Intel XE#484] / [i915#4550]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4550]: https://gitlab.freedesktop.org/drm/intel/issues/4550
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9875]: https://gitlab.freedesktop.org/drm/intel/issues/9875
  [i915#9900]: https://gitlab.freedesktop.org/drm/intel/issues/9900


Build changes
-------------

  * Linux: CI_DRM_14370 -> Patchwork_129951v4

  CI-20190529: 20190529
  CI_DRM_14370: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7738: 7738
  Patchwork_129951v4: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e65ea7e6989d drm/i915/gt: Enable only one CCS for compute workload
67fb1d9ee18d drm/i915/gt: Disable HW load balancing for CCS
2e2760aa062e drm/i915/gt: Do not exposed fused off engines.
9d18470a1d70 drm/i915/gt: Refactor uabi engine class/instance list creation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/index.html

--===============8608841169260008668==
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
<tr><td><b>Series:</b></td><td>Disable automatic load CCS load balancing (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129951/">https://patchwork.freedesktop.org/series/129951/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14370 -&gt; Patchwork_129951v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129951v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129951v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): bat-arls-2 bat-jsl-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129951v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-blb-e6850/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@gem_close_race@basic-process.html">FAIL</a> +10 other tests fail</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-nick/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-nick/igt@gem_close_race@basic-process.html">FAIL</a> +15 other tests fail</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rplp-1/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rplp-1/igt@gem_close_race@basic-process.html">FAIL</a> +14 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-guc/igt@gem_close_race@basic-threads.html">FAIL</a> +14 other tests fail</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-3/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@gem_close_race@basic-threads.html">FAIL</a> +13 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-6/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-6/igt@gem_ctx_create@basic-files.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-6/igt@gem_exec_fence@basic-await.html">SKIP</a> +5 other tests skip</li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@gem_exec_fence@basic-await.html">SKIP</a> +5 other tests skip</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@gem_exec_fence@basic-await.html">SKIP</a> +5 other tests skip</li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-9/igt@gem_exec_fence@basic-await.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adln-1/igt@gem_exec_fence@basic-wait.html">SKIP</a> +5 other tests skip</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@gem_exec_fence@basic-wait.html">SKIP</a> +4 other tests skip</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rplp-1/igt@gem_exec_fence@basic-wait.html">SKIP</a> +5 other tests skip</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@gem_exec_parallel@engines@basic.html">FAIL</a> +13 other tests fail</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adln-1/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adln-1/igt@gem_exec_parallel@engines@basic.html">FAIL</a> +14 other tests fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ivb-3770/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ivb-3770/igt@gem_exec_parallel@engines@basic.html">FAIL</a> +15 other tests fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@gem_exec_parallel@engines@basic.html">FAIL</a> +13 other tests fail</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-guc/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-guc/igt@gem_exec_parallel@engines@basic.html">FAIL</a> +13 other tests fail</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlm-1/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@gem_exec_parallel@engines@basic.html">FAIL</a> +13 other tests fail</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-tgl-1115g4/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@gem_exec_parallel@engines@basic.html">FAIL</a> +13 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-apl-guc/igt@gem_exec_parallel@engines@userptr.html">FAIL</a> +14 other tests fail</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">FAIL</a> +10 other tests fail</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-glk-j4005/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@gem_exec_parallel@engines@userptr.html">FAIL</a> +13 other tests fail</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-9/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-9/igt@gem_exec_parallel@engines@userptr.html">FAIL</a> +14 other tests fail</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">FAIL</a> +13 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rplp-1/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rplp-1/igt@gem_linear_blits@basic.html">SKIP</a> +13 other tests skip</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-rkl-11600/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@gem_linear_blits@basic.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@gem_lmem_swapping@basic.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-rkl-11600/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@gem_render_linear_blits@basic.html">FAIL</a> +13 other tests fail</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-6600u/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@gem_render_linear_blits@basic.html">FAIL</a> +13 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-11/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@gem_softpin@allocator-basic.html">SKIP</a> +4 other tests skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-14/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@gem_softpin@allocator-basic.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-9/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-9/igt@gem_sync@basic-all.html">SKIP</a> +13 other tests skip</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adln-1/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adln-1/igt@gem_sync@basic-all.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg1-7/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@gem_sync@basic-each.html">SKIP</a> +12 other tests skip</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-3/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@gem_sync@basic-each.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlm-1/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@gem_tiled_blits@basic.html">SKIP</a> +13 other tests skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-tgl-1115g4/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@gem_tiled_blits@basic.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all-engines:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-guc/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-guc/igt@gem_wait@busy@all-engines.html">FAIL</a> +14 other tests fail</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-11/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@gem_wait@busy@all-engines.html">FAIL</a> +77 other tests fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html">FAIL</a> +12 other tests fail</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@gem_wait@busy@all-engines.html">FAIL</a> +13 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all-engines:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-kbl-2/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@gem_wait@wait@all-engines.html">FAIL</a> +12 other tests fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-6/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-6/igt@gem_wait@wait@all-engines.html">FAIL</a> +14 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@i915_module_load@load.html">FAIL</a> +14 other tests fail</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-arls-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-13/igt@i915_module_load@load.html">FAIL</a></li>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-arls-3/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-mtlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-mtlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-3/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ivb-3770/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ivb-3770/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> +3 other tests dmesg-fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> +3 other tests dmesg-fail</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> +3 other tests dmesg-fail</li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-blb-e6850/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> +2 other tests dmesg-fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-6/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-6/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> +4 other tests dmesg-fail</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-pnv-d510/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> +2 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg1-7/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +4 other tests dmesg-fail</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-glk-j4005/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +4 other tests dmesg-fail</li>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-14/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-11/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@i915_selftest@live@hugepages.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-x1275/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-7567u/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adln-1/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adln-1/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> +4 other tests dmesg-fail</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-guc/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-guc/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlm-1/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> +4 other tests dmesg-fail</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-tgl-1115g4/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-nick/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-nick/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-kbl-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rplp-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rplp-1/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> +4 other tests dmesg-fail</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-rkl-11600/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@kms_busy@basic.html">SKIP</a></li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@kms_busy@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-13/igt@kms_chamelium_frames@hdmi-crc-fast.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-14/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html">FAIL</a> +81 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">FAIL</a> +66 other tests fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-pnv-d510/igt@gem_exec_parallel@engines@contexts.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-blb-e6850/igt@gem_exec_parallel@engines@fds.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +2 other tests fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@gem_exec_parallel@engines@fds.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@gem_exec_parallel@engines@fds.html">FAIL</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@gem_exec_parallel@engines@fds.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@gem_exec_parallel@engines@fds.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-kbl-2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html">SKIP</a> +1 other test skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> +1 other test skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adlm-1/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9875">i915#9875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adlm-1/igt@kms_busy@basic.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rpls-3/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rpls-3/igt@gem_ctx_create@basic-files.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>{bat-rpls-3}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rpls-3/igt@gem_exec_basic@basic.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rpls-3/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rpls-3/igt@gem_render_tiled_blits@basic.html">FAIL</a> +14 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adls-6/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@gem_tiled_blits@basic.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-arls-4/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-rpls-3/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-rpls-3/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adls-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adls-6/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> +4 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>{bat-adls-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@kms_busy@basic.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-adls-6/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-adls-6/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> +14 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129951v4 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_create@basic:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@gem_ctx_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@gem_ctx_create@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 other tests skip</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-nick/igt@gem_ctx_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-nick/igt@gem_ctx_create@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@gem_exec_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@gem_exec_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@gem_exec_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-apl-guc/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-guc/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@gem_exec_fence@basic-busy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-elk-e7500/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-bsw-nick/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-guc/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 other tests skip</li>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-guc/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@gem_exec_fence@nb-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 other tests skip</li>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@gem_exec_fence@nb-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@basic:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-guc/igt@gem_exec_store@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-guc/igt@gem_exec_store@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-apl-guc/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-apl-guc/igt@gem_linear_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-6600u/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-6600u/igt@gem_ringfill@basic-all.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-pnv-d510/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-pnv-d510/igt@gem_ringfill@basic-all.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-glk-j4005/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-glk-j4005/igt@gem_ringfill@basic-all.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-skl-guc/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-skl-guc/igt@gem_softpin@allocator-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-7567u/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-7567u/igt@gem_softpin@allocator-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8700k/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8700k/igt@gem_softpin@allocator-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-kbl-2/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-kbl-2/igt@gem_softpin@allocator-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@safe-alignment:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-x1275/igt@gem_softpin@safe-alignment.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-x1275/igt@gem_softpin@safe-alignment.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-cfl-8109u/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-cfl-8109u/igt@gem_sync@basic-all.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ivb-3770/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ivb-3770/igt@gem_sync@basic-all.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-kbl-guc/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-kbl-guc/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ilk-650/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/fi-ivb-3770/igt@kms_busy@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v4/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4550">i915#4550</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14370 -&gt; Patchwork_129951v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14370: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7738: 7738<br />
  Patchwork_129951v4: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e65ea7e6989d drm/i915/gt: Enable only one CCS for compute workload<br />
67fb1d9ee18d drm/i915/gt: Disable HW load balancing for CCS<br />
2e2760aa062e drm/i915/gt: Do not exposed fused off engines.<br />
9d18470a1d70 drm/i915/gt: Refactor uabi engine class/instance list creation</p>

</body>
</html>

--===============8608841169260008668==--
