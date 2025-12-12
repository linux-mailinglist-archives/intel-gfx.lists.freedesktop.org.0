Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDE4CB9397
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 17:06:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFFF10E900;
	Fri, 12 Dec 2025 16:06:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E70010E8E6;
 Fri, 12 Dec 2025 16:06:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3958242841147165267=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_xe=2E_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Dec 2025 16:06:48 -0000
Message-ID: <176555560816.81112.17410671431668150270@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251212143504.973839-14-dev@lankhorst.se>
In-Reply-To: <20251212143504.973839-14-dev@lankhorst.se>
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

--===============3958242841147165267==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on xe. (rev2)
URL   : https://patchwork.freedesktop.org/series/158856/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17670 -> Patchwork_158856v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158856v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158856v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_158856v2:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - bat-adlp-9:         [PASS][1] -> [SKIP][2] +70 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@core_auth@basic-auth.html

  * igt@core_sysfs@read-all-entries:
    - bat-dg2-9:          [PASS][3] -> [SKIP][4] +56 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@core_sysfs@read-all-entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@core_sysfs@read-all-entries.html

  * igt@dmabuf@all-tests:
    - fi-rkl-11600:       [PASS][5] -> [SKIP][6] +52 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@dmabuf@all-tests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@dmabuf@all-tests.html

  * igt@gem_basic@create-close:
    - bat-arls-5:         [PASS][7] -> [SKIP][8] +106 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_basic@create-close.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_basic@create-close.html

  * igt@gem_linear_blits@basic:
    - bat-rplp-1:         [PASS][9] -> [SKIP][10] +120 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@gem_linear_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@gem_linear_blits@basic.html

  * igt@gem_lmem_swapping@basic:
    - bat-atsm-1:         [PASS][11] -> [FAIL][12] +5 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@gem_lmem_swapping@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@gem_lmem_swapping@basic.html
    - bat-dg1-7:          [PASS][13] -> [FAIL][14] +5 other tests fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@gem_lmem_swapping@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@gem_lmem_swapping@basic.html
    - bat-dg2-11:         [PASS][15] -> [FAIL][16] +5 other tests fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_lmem_swapping@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_lmem_swapping@basic.html
    - bat-dg2-14:         [PASS][17] -> [FAIL][18] +5 other tests fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_lmem_swapping@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-dg2-9:          [PASS][19] -> [FAIL][20] +5 other tests fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html
    - bat-dg1-6:          [PASS][21] -> [FAIL][22] +5 other tests fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@gem_lmem_swapping@verify-random.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@gem_lmem_swapping@verify-random.html
    - bat-dg2-8:          [PASS][23] -> [FAIL][24] +5 other tests fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][25] -> [FAIL][26] +1 other test fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ilk-650/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ilk-650/igt@i915_module_load@load.html
    - bat-jsl-1:          [PASS][27] -> [FAIL][28] +1 other test fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@i915_module_load@load.html
    - fi-bsw-n3050:       [PASS][29] -> [FAIL][30] +1 other test fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-n3050/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-n3050/igt@i915_module_load@load.html
    - bat-arlh-2:         [PASS][31] -> [FAIL][32] +1 other test fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][33] -> [FAIL][34] +1 other test fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-kbl-8809g:       [PASS][35] -> [FAIL][36] +1 other test fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][37] -> [FAIL][38] +1 other test fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-elk-e7500/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][39] -> [FAIL][40] +1 other test fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - bat-adlp-6:         [PASS][41] -> [FAIL][42] +1 other test fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][43] -> [FAIL][44] +1 other test fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@i915_module_load@reload.html
    - bat-arls-6:         [PASS][45] -> [FAIL][46] +1 other test fail
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@i915_module_load@reload.html
    - bat-arlh-3:         [PASS][47] -> [FAIL][48] +1 other test fail
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][49] -> [FAIL][50] +1 other test fail
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-pnv-d510/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-glk-j4005:       [PASS][51] -> [FAIL][52] +1 other test fail
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@i915_module_load@reload.html
    - bat-adlp-9:         [PASS][53] -> [FAIL][54] +1 other test fail
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@i915_module_load@reload.html
    - bat-twl-2:          [PASS][55] -> [FAIL][56] +1 other test fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@i915_module_load@reload.html
    - bat-rpls-4:         [PASS][57] -> [FAIL][58] +1 other test fail
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][59] -> [FAIL][60] +1 other test fail
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@i915_module_load@reload.html
    - bat-twl-1:          [PASS][61] -> [FAIL][62] +1 other test fail
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@i915_module_load@reload.html
    - bat-jsl-5:          [PASS][63] -> [FAIL][64] +1 other test fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@i915_module_load@reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@i915_module_load@reload.html
    - bat-apl-1:          [PASS][65] -> [FAIL][66] +1 other test fail
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-apl-1/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-apl-1/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][67] -> [FAIL][68] +1 other test fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-nick/igt@i915_module_load@reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-nick/igt@i915_module_load@reload.html
    - bat-kbl-2:          [PASS][69] -> [FAIL][70] +1 other test fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-kbl-2/igt@i915_module_load@reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-kbl-2/igt@i915_module_load@reload.html
    - bat-arls-5:         [PASS][71] -> [FAIL][72] +1 other test fail
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@i915_module_load@reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@i915_module_load@reload.html
    - bat-rplp-1:         [PASS][73] -> [FAIL][74] +1 other test fail
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@i915_module_load@reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][75] -> [FAIL][76] +1 other test fail
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-guc/igt@i915_module_load@reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-guc/igt@i915_module_load@reload.html
    - bat-mtlp-9:         [PASS][77] -> [FAIL][78] +1 other test fail
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@i915_module_load@reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][79] -> [FAIL][80] +1 other test fail
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@i915_module_load@reload.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@i915_module_load@reload.html
    - bat-adlp-11:        [PASS][81] -> [FAIL][82] +1 other test fail
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@i915_module_load@reload.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@i915_module_load@reload.html
    - fi-hsw-4770:        [PASS][83] -> [FAIL][84] +1 other test fail
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@i915_module_load@reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][85] -> [FAIL][86] +1 other test fail
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ivb-3770/igt@i915_module_load@reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ivb-3770/igt@i915_module_load@reload.html
    - bat-mtlp-8:         [PASS][87] -> [FAIL][88] +1 other test fail
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@i915_module_load@reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@i915_module_load@reload.html
    - bat-adls-6:         [PASS][89] -> [FAIL][90] +1 other test fail
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@i915_module_load@reload.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-6:         [PASS][91] -> [SKIP][92] +76 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-adlp-11:        [PASS][93] -> [SKIP][94] +48 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@i915_selftest@live.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@i915_selftest@live.html
    - bat-dg1-6:          [PASS][95] -> [SKIP][96] +9 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@i915_selftest@live.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@i915_selftest@live.html

  * igt@kms_addfb_basic@bad-pitch-1024:
    - bat-arls-6:         [PASS][97] -> [SKIP][98] +110 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_addfb_basic@bad-pitch-1024.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_addfb_basic@bad-pitch-1024.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - bat-mtlp-9:         [PASS][99] -> [SKIP][100] +61 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_addfb_basic@bad-pitch-128.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@bad-pitch-999:
    - bat-dg1-7:          [PASS][101] -> [SKIP][102] +63 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_addfb_basic@bad-pitch-999.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_addfb_basic@bad-pitch-999.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - bat-dg2-11:         [PASS][103] -> [SKIP][104] +56 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@no-handle:
    - bat-arlh-3:         [PASS][105] -> [SKIP][106] +110 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_addfb_basic@no-handle.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_addfb_basic@no-handle.html

  * igt@kms_addfb_basic@too-high:
    - bat-rpls-4:         [PASS][107] -> [SKIP][108] +69 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_addfb_basic@too-high.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@unused-offsets:
    - bat-dg2-14:         [PASS][109] -> [SKIP][110] +56 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_addfb_basic@unused-offsets.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_addfb_basic@unused-offsets.html
    - bat-dg2-8:          [PASS][111] -> [SKIP][112] +57 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - bat-jsl-1:          [PASS][113] -> [SKIP][114] +79 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-adls-6:         [PASS][115] -> [SKIP][116] +70 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_force_connector_basic@force-connector-state.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - bat-mtlp-8:         [PASS][117] -> [SKIP][118] +62 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_force_connector_basic@force-edid.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-twl-1:          [PASS][119] -> [SKIP][120] +132 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
    - bat-jsl-5:          [PASS][121] -> [SKIP][122] +74 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-tgl-1115g4:      [PASS][123] -> [SKIP][124] +5 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@prime_self_import@basic-with_one_bo:
    - bat-twl-2:          [PASS][125] -> [SKIP][126] +132 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@prime_self_import@basic-with_one_bo.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@prime_self_import@basic-with_one_bo.html

  * igt@vgem_basic@dmabuf-export:
    - bat-atsm-1:         [PASS][127] -> [SKIP][128] +8 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@vgem_basic@dmabuf-export.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@vgem_basic@dmabuf-export.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - bat-arlh-3:         [SKIP][129] ([i915#11671]) -> [FAIL][130] +3 other tests fail
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@gem_lmem_swapping@basic.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@gem_lmem_swapping@basic.html
    - fi-pnv-d510:        [SKIP][131] -> [FAIL][132] +3 other tests fail
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
    - fi-glk-j4005:       [SKIP][133] ([i915#4613]) -> [FAIL][134] +3 other tests fail
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - bat-adlp-9:         [SKIP][135] ([i915#4613]) -> [FAIL][136] +3 other tests fail
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@gem_lmem_swapping@basic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@gem_lmem_swapping@basic.html
    - bat-twl-2:          [SKIP][137] ([i915#10213] / [i915#11671]) -> [FAIL][138] +3 other tests fail
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@gem_lmem_swapping@basic.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@gem_lmem_swapping@basic.html
    - bat-rpls-4:         [SKIP][139] ([i915#4613]) -> [FAIL][140] +3 other tests fail
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@gem_lmem_swapping@basic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@gem_lmem_swapping@basic.html
    - fi-kbl-7567u:       [SKIP][141] ([i915#4613]) -> [FAIL][142] +3 other tests fail
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
    - fi-cfl-8700k:       [SKIP][143] ([i915#4613]) -> [FAIL][144] +3 other tests fail
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html
    - bat-twl-1:          [SKIP][145] ([i915#10213] / [i915#11671]) -> [FAIL][146] +3 other tests fail
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@gem_lmem_swapping@basic.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@gem_lmem_swapping@basic.html
    - fi-kbl-8809g:       [SKIP][147] ([i915#4613]) -> [FAIL][148] +3 other tests fail
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html
    - bat-jsl-5:          [SKIP][149] ([i915#4613]) -> [FAIL][150] +3 other tests fail
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@gem_lmem_swapping@basic.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@gem_lmem_swapping@basic.html
    - bat-apl-1:          [SKIP][151] -> [FAIL][152] +3 other tests fail
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-apl-1/igt@gem_lmem_swapping@basic.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-apl-1/igt@gem_lmem_swapping@basic.html
    - fi-elk-e7500:       [SKIP][153] -> [FAIL][154] +3 other tests fail
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-elk-e7500/igt@gem_lmem_swapping@basic.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-elk-e7500/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        [SKIP][155] -> [FAIL][156] +3 other tests fail
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-kbl-2:          [SKIP][157] -> [FAIL][158] +3 other tests fail
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-arls-5:         [SKIP][159] ([i915#10213] / [i915#11671]) -> [FAIL][160] +3 other tests fail
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-rplp-1:         [SKIP][161] ([i915#4613]) -> [FAIL][162] +3 other tests fail
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-arlh-2:         [SKIP][163] ([i915#10213] / [i915#11346] / [i915#11671]) -> [FAIL][164] +3 other tests fail
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-rkl-11600:       [SKIP][165] ([i915#4613]) -> [FAIL][166] +3 other tests fail
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-tgl-1115g4:      [SKIP][167] ([i915#4613]) -> [FAIL][168] +3 other tests fail
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       [SKIP][169] -> [FAIL][170] +3 other tests fail
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html
    - bat-adlp-6:         [SKIP][171] ([i915#4613]) -> [FAIL][172] +3 other tests fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
    - fi-skl-6600u:       [SKIP][173] ([i915#4613]) -> [FAIL][174] +3 other tests fail
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-guc:         [SKIP][175] ([i915#4613]) -> [FAIL][176] +3 other tests fail
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
    - bat-mtlp-9:         [SKIP][177] ([i915#4613]) -> [FAIL][178] +3 other tests fail
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_lmem_swapping@verify-random.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_lmem_swapping@verify-random.html
    - bat-arls-6:         [SKIP][179] ([i915#10213] / [i915#11671]) -> [FAIL][180] +3 other tests fail
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_lmem_swapping@verify-random.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-x1275:       [SKIP][181] ([i915#4613]) -> [FAIL][182] +3 other tests fail
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
    - bat-adlp-11:        [SKIP][183] ([i915#4613]) -> [FAIL][184] +3 other tests fail
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html
    - fi-hsw-4770:        [SKIP][185] -> [FAIL][186] +3 other tests fail
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@gem_lmem_swapping@verify-random.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@gem_lmem_swapping@verify-random.html
    - fi-ivb-3770:        [SKIP][187] -> [FAIL][188] +3 other tests fail
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html
    - bat-mtlp-8:         [SKIP][189] ([i915#4613]) -> [FAIL][190] +3 other tests fail
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
    - bat-adls-6:         [SKIP][191] ([i915#4613]) -> [FAIL][192] +3 other tests fail
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@gem_lmem_swapping@verify-random.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@gem_lmem_swapping@verify-random.html
    - fi-ilk-650:         [SKIP][193] -> [FAIL][194] +3 other tests fail
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html
    - bat-jsl-1:          [SKIP][195] ([i915#4613]) -> [FAIL][196] +3 other tests fail
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-arls-6:         [SKIP][197] ([i915#4083]) -> [SKIP][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_mmap@basic.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_mmap@basic.html
    - bat-arlh-3:         [SKIP][199] ([i915#11343]) -> [SKIP][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@gem_mmap@basic.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@gem_mmap@basic.html
    - bat-arls-5:         [SKIP][201] ([i915#4083]) -> [SKIP][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_mmap@basic.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-arls-6:         [SKIP][203] ([i915#12637] / [i915#4077]) -> [SKIP][204] +2 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_mmap_gtt@basic.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arls-6:         [SKIP][205] ([i915#10197] / [i915#10211] / [i915#4079]) -> [SKIP][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_render_tiled_blits@basic.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_render_tiled_blits@basic.html
    - bat-arls-5:         [SKIP][207] ([i915#10197] / [i915#10211] / [i915#4079]) -> [SKIP][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_render_tiled_blits@basic.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_render_tiled_blits@basic.html
    - bat-arlh-3:         [SKIP][209] ([i915#10211] / [i915#11725] / [i915#4079]) -> [SKIP][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@gem_render_tiled_blits@basic.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-arls-5:         [SKIP][211] ([i915#12637] / [i915#4077]) -> [SKIP][212] +2 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_tiled_fence_blits@basic.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-5:         [SKIP][213] ([i915#10206] / [i915#4079]) -> [SKIP][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_tiled_pread_basic.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_tiled_pread_basic.html
    - bat-arlh-3:         [SKIP][215] ([i915#11724] / [i915#4079]) -> [SKIP][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@gem_tiled_pread_basic.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@gem_tiled_pread_basic.html
    - bat-twl-2:          [SKIP][217] ([i915#11031]) -> [SKIP][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@gem_tiled_pread_basic.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@gem_tiled_pread_basic.html
    - bat-twl-1:          [SKIP][219] ([i915#11031]) -> [SKIP][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@gem_tiled_pread_basic.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@gem_tiled_pread_basic.html
    - bat-rplp-1:         [SKIP][221] ([i915#3282]) -> [SKIP][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@gem_tiled_pread_basic.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@gem_tiled_pread_basic.html
    - bat-arls-6:         [SKIP][223] ([i915#10206] / [i915#4079]) -> [SKIP][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_tiled_pread_basic.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [DMESG-WARN][225] ([i915#13735] / [i915#13890] / [i915#180]) -> [FAIL][226] +1 other test fail
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@i915_module_load@reload.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@i915_module_load@reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-twl-2:          [SKIP][227] ([i915#10209] / [i915#11681]) -> [SKIP][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@i915_pm_rps@basic-api.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@i915_pm_rps@basic-api.html
    - bat-twl-1:          [SKIP][229] ([i915#10209] / [i915#11681]) -> [SKIP][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@i915_pm_rps@basic-api.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@i915_pm_rps@basic-api.html
    - bat-arls-5:         [SKIP][231] ([i915#10209] / [i915#11681]) -> [SKIP][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@i915_pm_rps@basic-api.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@i915_pm_rps@basic-api.html
    - bat-rplp-1:         [SKIP][233] ([i915#6621]) -> [SKIP][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@i915_pm_rps@basic-api.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html
    - bat-arls-6:         [SKIP][235] ([i915#10209] / [i915#11681]) -> [SKIP][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@i915_pm_rps@basic-api.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@i915_pm_rps@basic-api.html
    - bat-arlh-3:         [SKIP][237] ([i915#11681]) -> [SKIP][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@i915_pm_rps@basic-api.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-dg2-11:         [DMESG-FAIL][239] ([i915#12061]) -> [SKIP][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@i915_selftest@live.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@i915_selftest@live.html
    - bat-dg2-14:         [DMESG-FAIL][241] ([i915#12061]) -> [SKIP][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@i915_selftest@live.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@i915_selftest@live.html
    - bat-atsm-1:         [DMESG-FAIL][243] ([i915#12061] / [i915#13929]) -> [SKIP][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@i915_selftest@live.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@i915_selftest@live.html
    - bat-mtlp-9:         [DMESG-FAIL][245] ([i915#12061]) -> [SKIP][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@i915_selftest@live.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@i915_selftest@live.html
    - bat-dg2-9:          [DMESG-FAIL][247] ([i915#12061]) -> [SKIP][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@i915_selftest@live.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@i915_selftest@live.html

  * igt@intel_hwmon@hwmon-read:
    - bat-rplp-1:         [SKIP][249] ([i915#7707]) -> [SKIP][250] +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@intel_hwmon@hwmon-read.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@intel_hwmon@hwmon-read.html
    - bat-arls-6:         [SKIP][251] ([i915#7707]) -> [SKIP][252] +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@intel_hwmon@hwmon-read.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@intel_hwmon@hwmon-read.html
    - bat-adlp-11:        [SKIP][253] ([i915#7707]) -> [SKIP][254] +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@intel_hwmon@hwmon-read.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@intel_hwmon@hwmon-read.html
    - bat-adls-6:         [SKIP][255] ([i915#7707]) -> [SKIP][256] +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@intel_hwmon@hwmon-read.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@intel_hwmon@hwmon-read.html
    - bat-jsl-1:          [SKIP][257] ([i915#7707]) -> [SKIP][258] +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@intel_hwmon@hwmon-read.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@intel_hwmon@hwmon-read.html
    - bat-adlp-6:         [SKIP][259] ([i915#7707]) -> [SKIP][260] +1 other test skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@intel_hwmon@hwmon-read.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@intel_hwmon@hwmon-read.html
    - bat-arlh-3:         [SKIP][261] ([i915#11680]) -> [SKIP][262] +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@intel_hwmon@hwmon-read.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - bat-adlp-9:         [SKIP][263] ([i915#7707]) -> [SKIP][264] +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@intel_hwmon@hwmon-write.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@intel_hwmon@hwmon-write.html
    - bat-twl-2:          [SKIP][265] ([i915#7707]) -> [SKIP][266] +1 other test skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@intel_hwmon@hwmon-write.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@intel_hwmon@hwmon-write.html
    - bat-twl-1:          [SKIP][267] ([i915#7707]) -> [SKIP][268] +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@intel_hwmon@hwmon-write.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@intel_hwmon@hwmon-write.html
    - bat-jsl-5:          [SKIP][269] ([i915#7707]) -> [SKIP][270] +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@intel_hwmon@hwmon-write.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@intel_hwmon@hwmon-write.html
    - bat-arls-5:         [SKIP][271] ([i915#7707]) -> [SKIP][272] +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@intel_hwmon@hwmon-write.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - bat-dg1-7:          [SKIP][273] ([i915#4212]) -> [SKIP][274] +7 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
    - bat-dg2-11:         [SKIP][275] ([i915#4212]) -> [SKIP][276] +7 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-8:         [SKIP][277] ([i915#5190]) -> [SKIP][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arls-6:         [SKIP][279] ([i915#10200] / [i915#12203]) -> [SKIP][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arlh-3:         [SKIP][281] ([i915#11666] / [i915#12203]) -> [SKIP][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arls-5:         [SKIP][283] ([i915#10200] / [i915#12203]) -> [SKIP][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-9:         [SKIP][285] ([i915#5190]) -> [SKIP][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-dg2-14:         [SKIP][287] ([i915#4212]) -> [SKIP][288] +7 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_addfb_basic@basic-x-tiled-legacy.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-mtlp-9:         [SKIP][289] ([i915#4212]) -> [SKIP][290] +8 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-arls-6:         [SKIP][291] ([i915#10200]) -> [SKIP][292] +8 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-mtlp-8:         [SKIP][293] ([i915#4212]) -> [SKIP][294] +8 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-7:          [SKIP][295] ([i915#4215]) -> [SKIP][296]
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - bat-arlh-3:         [SKIP][297] ([i915#11666]) -> [SKIP][298] +8 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - bat-arls-5:         [SKIP][299] ([i915#10200]) -> [SKIP][300] +8 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          [SKIP][301] ([i915#4212]) -> [SKIP][302] +7 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - bat-dg2-8:          [SKIP][303] ([i915#4212]) -> [SKIP][304] +7 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@size-max:
    - bat-atsm-1:         [SKIP][305] ([i915#6077]) -> [SKIP][306] +37 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_addfb_basic@size-max.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_addfb_basic@size-max.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-adlp-9:         [SKIP][307] ([i915#4103]) -> [SKIP][308] +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-twl-2:          [SKIP][309] ([i915#11030] / [i915#11731]) -> [SKIP][310] +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-dg2-11:         [SKIP][311] ([i915#4103] / [i915#4213]) -> [SKIP][312] +1 other test skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-rpls-4:         [SKIP][313] ([i915#4103]) -> [SKIP][314] +1 other test skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-arls-6:         [SKIP][315] ([i915#10202]) -> [SKIP][316] +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-twl-1:          [SKIP][317] ([i915#11030] / [i915#11731]) -> [SKIP][318] +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-5:          [SKIP][319] ([i915#4103]) -> [SKIP][320] +1 other test skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg2-14:         [SKIP][321] ([i915#4103] / [i915#4213]) -> [SKIP][322] +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-arls-5:         [SKIP][323] ([i915#10202]) -> [SKIP][324] +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-rplp-1:         [SKIP][325] ([i915#4103] / [i915#4213]) -> [SKIP][326] +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-mtlp-9:         [SKIP][327] ([i915#4213]) -> [SKIP][328] +1 other test skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg2-9:          [SKIP][329] ([i915#4103] / [i915#4213]) -> [SKIP][330] +1 other test skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-mtlp-8:         [SKIP][331] ([i915#4213]) -> [SKIP][332] +1 other test skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg2-8:          [SKIP][333] ([i915#4103] / [i915#4213]) -> [SKIP][334] +1 other test skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adls-6:         [SKIP][335] ([i915#4103]) -> [SKIP][336] +1 other test skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-1:          [SKIP][337] ([i915#4103]) -> [SKIP][338] +1 other test skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adlp-6:         [SKIP][339] ([i915#4103]) -> [SKIP][340] +1 other test skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-arlh-3:         [SKIP][341] ([i915#11731]) -> [SKIP][342] +1 other test skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg1-7:          [SKIP][343] ([i915#4103] / [i915#4213]) -> [SKIP][344] +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-atsm-1:         [SKIP][345] ([i915#6078]) -> [SKIP][346] +20 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - bat-twl-1:          [SKIP][347] ([i915#9886]) -> [SKIP][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_dsc@dsc-basic.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_dsc@dsc-basic.html
    - bat-jsl-5:          [SKIP][349] ([i915#3555] / [i915#9886]) -> [SKIP][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_dsc@dsc-basic.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_dsc@dsc-basic.html
    - bat-arls-5:         [SKIP][351] ([i915#9886]) -> [SKIP][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_dsc@dsc-basic.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_dsc@dsc-basic.html
    - bat-rplp-1:         [SKIP][353] ([i915#3555] / [i915#3840]) -> [SKIP][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_dsc@dsc-basic.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_dsc@dsc-basic.html
    - bat-arls-6:         [SKIP][355] ([i915#9886]) -> [SKIP][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_dsc@dsc-basic.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_dsc@dsc-basic.html
    - bat-adls-6:         [SKIP][357] ([i915#3555] / [i915#3840]) -> [SKIP][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_dsc@dsc-basic.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          [SKIP][359] ([i915#3555] / [i915#9886]) -> [SKIP][360]
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@kms_dsc@dsc-basic.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html
    - bat-arlh-3:         [SKIP][361] ([i915#9886]) -> [SKIP][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_dsc@dsc-basic.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_dsc@dsc-basic.html
    - bat-dg1-7:          [SKIP][363] ([i915#3555] / [i915#3840]) -> [SKIP][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_dsc@dsc-basic.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_dsc@dsc-basic.html
    - bat-adlp-9:         [SKIP][365] ([i915#3555] / [i915#3840]) -> [SKIP][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_dsc@dsc-basic.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_dsc@dsc-basic.html
    - bat-twl-2:          [SKIP][367] ([i915#9886]) -> [SKIP][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@kms_dsc@dsc-basic.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-adlp-11:        [SKIP][369] ([i915#3637]) -> [SKIP][370] +3 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-rkl-11600:       [SKIP][371] ([i915#3637]) -> [SKIP][372] +3 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-twl-1:          [SKIP][373] ([i915#11032]) -> [SKIP][374]
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_force_connector_basic@force-load-detect.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-arls-5:         [SKIP][375] ([i915#10207]) -> [SKIP][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html
    - bat-rplp-1:         [SKIP][377] ([i915#4093]) -> [SKIP][378] +3 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-arls-6:         [SKIP][379] ([i915#10207]) -> [SKIP][380]
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_force_connector_basic@force-load-detect.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_force_connector_basic@force-load-detect.html
    - bat-arlh-3:         [SKIP][381] ([i915#10207]) -> [SKIP][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_force_connector_basic@force-load-detect.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-twl-2:          [SKIP][383] ([i915#11032]) -> [SKIP][384]
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-atsm-1:         [SKIP][385] ([i915#6093]) -> [SKIP][386] +4 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-adlp-11:        [SKIP][387] ([i915#4093]) -> [SKIP][388] +3 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlp-11:        [SKIP][389] ([i915#4342] / [i915#5354]) -> [SKIP][390]
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-rplp-1:         [SKIP][391] ([i915#4369]) -> [SKIP][392]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html
    - bat-adlp-11:        [SKIP][393] ([i915#4369]) -> [SKIP][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - fi-rkl-11600:       [SKIP][395] ([i915#11190]) -> [SKIP][396] +14 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
    - bat-atsm-1:         [SKIP][397] ([i915#1836]) -> [SKIP][398] +6 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-11:        [SKIP][399] ([i915#11190]) -> [SKIP][400] +15 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-arls-5:         [SKIP][401] ([i915#9812]) -> [SKIP][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg1-7:          [SKIP][403] ([i915#5354]) -> [SKIP][404]
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
    - bat-jsl-5:          [SKIP][405] ([i915#15205]) -> [SKIP][406]
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_pm_backlight@basic-brightness.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_pm_backlight@basic-brightness.html
    - bat-arls-6:         [SKIP][407] ([i915#9812]) -> [SKIP][408]
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_pm_backlight@basic-brightness.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_pm_backlight@basic-brightness.html
    - bat-adlp-11:        [SKIP][409] ([i915#9812]) -> [SKIP][410]
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html
    - bat-adlp-9:         [SKIP][411] ([i915#9812]) -> [SKIP][412]
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html
    - bat-adls-6:         [SKIP][413] ([i915#5354]) -> [SKIP][414]
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_prop_blob@basic:
    - bat-atsm-1:         [SKIP][415] ([i915#7357]) -> [SKIP][416]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_prop_blob@basic.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_prop_blob@basic.html

  * igt@kms_psr@psr-cursor-plane-move:
    - bat-arls-6:         [SKIP][417] ([i915#9732]) -> [SKIP][418] +3 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_psr@psr-cursor-plane-move.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-mtlp-9:         [SKIP][419] ([i915#4077] / [i915#9688]) -> [SKIP][420]
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-mtlp-8:         [SKIP][421] ([i915#4077] / [i915#9688]) -> [SKIP][422]
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-adls-6:         [SKIP][423] ([i915#1072] / [i915#9732]) -> [SKIP][424] +3 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-arlh-3:         [SKIP][425] ([i915#12637] / [i915#9688]) -> [SKIP][426]
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg1-7:          [SKIP][427] ([i915#1072] / [i915#9732]) -> [SKIP][428] +3 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-adlp-9:         [SKIP][429] ([i915#1072] / [i915#9732]) -> [SKIP][430] +3 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-jsl-5:          [SKIP][431] ([i915#1072]) -> [SKIP][432] +3 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_psr@psr-sprite-plane-onoff.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-arls-5:         [SKIP][433] ([i915#9732]) -> [SKIP][434] +3 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_psr@psr-sprite-plane-onoff.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-rplp-1:         [SKIP][435] ([i915#1072] / [i915#9732]) -> [SKIP][436] +3 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-adlp-11:        [SKIP][437] ([i915#1072] / [i915#9732]) -> [SKIP][438] +3 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-9:         [SKIP][439] ([i915#3555]) -> [SKIP][440]
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-twl-2:          [SKIP][441] ([i915#8809]) -> [SKIP][442]
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rpls-4:         [SKIP][443] ([i915#3555]) -> [SKIP][444]
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-twl-1:          [SKIP][445] ([i915#8809]) -> [SKIP][446]
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_setmode@basic-clone-single-crtc.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-14:         [SKIP][447] ([i915#3555]) -> [SKIP][448]
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arls-5:         [SKIP][449] ([i915#10208] / [i915#8809]) -> [SKIP][450]
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-6:         [SKIP][451] ([i915#3555]) -> [SKIP][452]
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rplp-1:         [SKIP][453] ([i915#3555]) -> [SKIP][454]
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-rkl-11600:       [SKIP][455] ([i915#3555]) -> [SKIP][456]
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-atsm-1:         [SKIP][457] ([i915#6094]) -> [SKIP][458]
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-9:         [SKIP][459] ([i915#3555] / [i915#8809]) -> [SKIP][460]
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-9:          [SKIP][461] ([i915#3555]) -> [SKIP][462]
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-11:         [SKIP][463] ([i915#3555]) -> [SKIP][464]
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-11:        [SKIP][465] ([i915#3555]) -> [SKIP][466]
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-5:          [SKIP][467] ([i915#3555]) -> [SKIP][468]
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_setmode@basic-clone-single-crtc.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-8:         [SKIP][469] ([i915#3555] / [i915#8809]) -> [SKIP][470]
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-8:          [SKIP][471] ([i915#3555]) -> [SKIP][472]
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adls-6:         [SKIP][473] ([i915#3555]) -> [SKIP][474]
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-1:          [SKIP][475] ([i915#3555]) -> [SKIP][476]
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arls-6:         [SKIP][477] ([i915#10208] / [i915#8809]) -> [SKIP][478]
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_setmode@basic-clone-single-crtc.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-arlh-3:         [SKIP][479] ([i915#8809]) -> [SKIP][480]
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_setmode@basic-clone-single-crtc.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-7:          [SKIP][481] ([i915#3555]) -> [SKIP][482]
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-arlh-3:         [SKIP][483] ([i915#12637]) -> [SKIP][484] +4 other tests skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@prime_vgem@basic-fence-mmap.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@prime_vgem@basic-fence-mmap.html
    - bat-arls-6:         [SKIP][485] ([i915#12637] / [i915#3708] / [i915#4077]) -> [SKIP][486] +1 other test skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@prime_vgem@basic-fence-mmap.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arls-5:         [SKIP][487] ([i915#10212] / [i915#3708]) -> [SKIP][488]
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@prime_vgem@basic-fence-read.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@prime_vgem@basic-fence-read.html
    - bat-arlh-3:         [SKIP][489] ([i915#11726]) -> [SKIP][490] +1 other test skip
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@prime_vgem@basic-fence-read.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@prime_vgem@basic-fence-read.html
    - bat-twl-2:          [SKIP][491] ([i915#10212] / [i915#3708]) -> [SKIP][492]
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@prime_vgem@basic-fence-read.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@prime_vgem@basic-fence-read.html
    - bat-twl-1:          [SKIP][493] ([i915#10212] / [i915#3708]) -> [SKIP][494]
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@prime_vgem@basic-fence-read.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@prime_vgem@basic-fence-read.html
    - bat-arls-6:         [SKIP][495] ([i915#10212] / [i915#3708]) -> [SKIP][496]
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@prime_vgem@basic-fence-read.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-arls-5:         [SKIP][497] ([i915#12637] / [i915#3708] / [i915#4077]) -> [SKIP][498] +1 other test skip
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@prime_vgem@basic-gtt.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - bat-twl-1:          [SKIP][499] ([i915#10214] / [i915#3708]) -> [SKIP][500]
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@prime_vgem@basic-read.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@prime_vgem@basic-read.html
    - bat-arls-5:         [SKIP][501] ([i915#10214] / [i915#3708]) -> [SKIP][502]
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@prime_vgem@basic-read.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@prime_vgem@basic-read.html
    - bat-rplp-1:         [SKIP][503] ([i915#3708]) -> [SKIP][504] +2 other tests skip
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@prime_vgem@basic-read.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@prime_vgem@basic-read.html
    - bat-arls-6:         [SKIP][505] ([i915#10214] / [i915#3708]) -> [SKIP][506]
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@prime_vgem@basic-read.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@prime_vgem@basic-read.html
    - bat-twl-2:          [SKIP][507] ([i915#10214] / [i915#3708]) -> [SKIP][508]
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@prime_vgem@basic-read.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arls-6:         [SKIP][509] ([i915#10216] / [i915#3708]) -> [SKIP][510]
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@prime_vgem@basic-write.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@prime_vgem@basic-write.html
    - bat-arlh-3:         [SKIP][511] ([i915#11723]) -> [SKIP][512]
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@prime_vgem@basic-write.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@prime_vgem@basic-write.html
    - bat-twl-2:          [SKIP][513] ([i915#10216] / [i915#3708]) -> [SKIP][514]
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@prime_vgem@basic-write.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@prime_vgem@basic-write.html
    - bat-twl-1:          [SKIP][515] ([i915#10216] / [i915#3708]) -> [SKIP][516]
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@prime_vgem@basic-write.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@prime_vgem@basic-write.html
    - bat-arls-5:         [SKIP][517] ([i915#10216] / [i915#3708]) -> [SKIP][518]
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@prime_vgem@basic-write.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@prime_vgem@basic-write.html

  
Known issues
------------

  Here are the changes found in Patchwork_158856v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-dg2-11:         [PASS][519] -> [SKIP][520] ([i915#2582]) +3 other tests skip
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@fbdev@eof.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@fbdev@eof.html
    - bat-rpls-4:         [PASS][521] -> [SKIP][522] ([i915#2582]) +3 other tests skip
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@fbdev@eof.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@fbdev@eof.html
    - bat-dg2-14:         [PASS][523] -> [SKIP][524] ([i915#2582]) +3 other tests skip
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@fbdev@eof.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@fbdev@eof.html
    - bat-arls-5:         [PASS][525] -> [SKIP][526] ([i915#11345]) +3 other tests skip
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@fbdev@eof.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@fbdev@eof.html
    - bat-rplp-1:         [PASS][527] -> [SKIP][528] ([i915#2582]) +3 other tests skip
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@fbdev@eof.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@fbdev@eof.html
    - bat-dg2-8:          [PASS][529] -> [SKIP][530] ([i915#2582]) +3 other tests skip
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@fbdev@eof.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-arls-6:         [PASS][531] -> [SKIP][532] ([i915#1849])
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@fbdev@info.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@fbdev@info.html
    - bat-dg2-9:          [PASS][533] -> [SKIP][534] ([i915#1849] / [i915#2582])
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@fbdev@info.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@fbdev@info.html
    - fi-hsw-4770:        [PASS][535] -> [SKIP][536] ([i915#1849] / [i915#2582])
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@fbdev@info.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@fbdev@info.html
    - fi-ivb-3770:        [PASS][537] -> [SKIP][538] ([i915#1849])
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ivb-3770/igt@fbdev@info.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ivb-3770/igt@fbdev@info.html
    - bat-mtlp-8:         [PASS][539] -> [SKIP][540] ([i915#1849] / [i915#2582])
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@fbdev@info.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@fbdev@info.html
    - bat-dg2-8:          [PASS][541] -> [SKIP][542] ([i915#1849] / [i915#2582])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@fbdev@info.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@fbdev@info.html
    - bat-adls-6:         [PASS][543] -> [SKIP][544] ([i915#1849] / [i915#2582])
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@fbdev@info.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@fbdev@info.html
    - fi-ilk-650:         [PASS][545] -> [SKIP][546] ([i915#1849])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ilk-650/igt@fbdev@info.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ilk-650/igt@fbdev@info.html
    - bat-jsl-1:          [PASS][547] -> [SKIP][548] ([i915#1849])
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@fbdev@info.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@fbdev@info.html
    - fi-bsw-n3050:       [PASS][549] -> [SKIP][550] ([i915#1849])
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-n3050/igt@fbdev@info.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-n3050/igt@fbdev@info.html
    - bat-adlp-6:         [PASS][551] -> [SKIP][552] ([i915#1849] / [i915#2582])
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@fbdev@info.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@fbdev@info.html
    - fi-skl-6600u:       [PASS][553] -> [SKIP][554] ([i915#1849])
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@fbdev@info.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@fbdev@info.html
    - bat-arlh-3:         [PASS][555] -> [SKIP][556] ([i915#1849])
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@fbdev@info.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@fbdev@info.html
    - fi-pnv-d510:        [PASS][557] -> [SKIP][558] ([i915#1849])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-pnv-d510/igt@fbdev@info.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-pnv-d510/igt@fbdev@info.html
    - bat-dg1-7:          [PASS][559] -> [SKIP][560] ([i915#1849] / [i915#2582])
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@fbdev@info.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@fbdev@info.html
    - fi-glk-j4005:       [PASS][561] -> [SKIP][562] ([i915#1849])
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@fbdev@info.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@fbdev@info.html
    - bat-adlp-9:         [PASS][563] -> [SKIP][564] ([i915#1849] / [i915#2582])
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@fbdev@info.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@fbdev@info.html
    - bat-twl-2:          [PASS][565] -> [SKIP][566] ([i915#1849])
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@fbdev@info.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@fbdev@info.html
    - bat-dg2-11:         [PASS][567] -> [SKIP][568] ([i915#1849] / [i915#2582])
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@fbdev@info.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@fbdev@info.html
    - bat-rpls-4:         [PASS][569] -> [SKIP][570] ([i915#1849] / [i915#2582])
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@fbdev@info.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@fbdev@info.html
    - fi-kbl-7567u:       [PASS][571] -> [SKIP][572] ([i915#1849])
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@fbdev@info.html
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@fbdev@info.html
    - fi-cfl-8700k:       [PASS][573] -> [SKIP][574] ([i915#1849])
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@fbdev@info.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@fbdev@info.html
    - bat-twl-1:          [PASS][575] -> [SKIP][576] ([i915#1849])
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@fbdev@info.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@fbdev@info.html
    - bat-jsl-5:          [PASS][577] -> [SKIP][578] ([i915#1849])
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@fbdev@info.html
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@fbdev@info.html
    - bat-apl-1:          [PASS][579] -> [SKIP][580] ([i915#1849])
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-apl-1/igt@fbdev@info.html
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-apl-1/igt@fbdev@info.html
    - bat-dg2-14:         [PASS][581] -> [SKIP][582] ([i915#1849] / [i915#2582])
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@fbdev@info.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@fbdev@info.html
    - fi-elk-e7500:       [PASS][583] -> [SKIP][584] ([i915#1849])
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-elk-e7500/igt@fbdev@info.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-elk-e7500/igt@fbdev@info.html
    - bat-arls-5:         [PASS][585] -> [SKIP][586] ([i915#1849])
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@fbdev@info.html
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@fbdev@info.html
    - bat-rplp-1:         [PASS][587] -> [SKIP][588] ([i915#1849] / [i915#2582])
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@fbdev@info.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@fbdev@info.html
    - fi-tgl-1115g4:      [PASS][589] -> [SKIP][590] ([i915#1849] / [i915#2582])
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@fbdev@info.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@fbdev@info.html
    - fi-cfl-guc:         [PASS][591] -> [SKIP][592] ([i915#1849])
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-guc/igt@fbdev@info.html
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-guc/igt@fbdev@info.html
    - bat-mtlp-9:         [PASS][593] -> [SKIP][594] ([i915#1849] / [i915#2582])
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@fbdev@info.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - fi-tgl-1115g4:      [PASS][595] -> [SKIP][596] ([i915#2582]) +3 other tests skip
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@fbdev@nullptr.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@fbdev@nullptr.html
    - bat-mtlp-9:         [PASS][597] -> [SKIP][598] ([i915#2582]) +3 other tests skip
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@fbdev@nullptr.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@fbdev@nullptr.html
    - bat-dg2-9:          [PASS][599] -> [SKIP][600] ([i915#2582]) +3 other tests skip
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@fbdev@nullptr.html
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@fbdev@nullptr.html
    - fi-hsw-4770:        [PASS][601] -> [SKIP][602] ([i915#2582]) +3 other tests skip
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@fbdev@nullptr.html
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@fbdev@nullptr.html
    - bat-mtlp-8:         [PASS][603] -> [SKIP][604] ([i915#2582]) +3 other tests skip
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@fbdev@nullptr.html
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@fbdev@nullptr.html
    - bat-adls-6:         [PASS][605] -> [SKIP][606] ([i915#2582]) +3 other tests skip
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@fbdev@nullptr.html
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@fbdev@nullptr.html

  * igt@fbdev@read:
    - bat-adlp-9:         [PASS][607] -> [SKIP][608] ([i915#2582]) +3 other tests skip
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@fbdev@read.html
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@fbdev@read.html

  * igt@fbdev@write:
    - bat-arlh-3:         [PASS][609] -> [SKIP][610] ([i915#11345]) +3 other tests skip
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@fbdev@write.html
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@fbdev@write.html
    - bat-dg1-7:          [PASS][611] -> [SKIP][612] ([i915#2582]) +3 other tests skip
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@fbdev@write.html
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@fbdev@write.html
    - bat-adlp-6:         [PASS][613] -> [SKIP][614] ([i915#2582]) +3 other tests skip
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@fbdev@write.html
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@fbdev@write.html

  * igt@gem_basic@create-close:
    - fi-elk-e7500:       [PASS][615] -> [SKIP][616] +125 other tests skip
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-elk-e7500/igt@gem_basic@create-close.html
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-elk-e7500/igt@gem_basic@create-close.html
    - bat-dg2-8:          [PASS][617] -> [SKIP][618] ([i915#2575]) +44 other tests skip
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_basic@create-close.html
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_basic@create-close.html
    - fi-bsw-nick:        [PASS][619] -> [SKIP][620] +106 other tests skip
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-nick/igt@gem_basic@create-close.html
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-nick/igt@gem_basic@create-close.html

  * igt@gem_close_race@basic-process:
    - bat-apl-1:          [PASS][621] -> [SKIP][622] +126 other tests skip
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-apl-1/igt@gem_close_race@basic-process.html
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-apl-1/igt@gem_close_race@basic-process.html
    - bat-dg2-14:         [PASS][623] -> [SKIP][624] ([i915#2575]) +44 other tests skip
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_close_race@basic-process.html
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_close_race@basic-process.html

  * igt@gem_ctx_create@basic-files:
    - fi-bsw-n3050:       [PASS][625] -> [SKIP][626] +127 other tests skip
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_fence@basic-await:
    - bat-adlp-6:         [PASS][627] -> [SKIP][628] ([i915#2575]) +52 other tests skip
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@gem_exec_fence@basic-await.html
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-wait:
    - fi-kbl-7567u:       [PASS][629] -> [SKIP][630] +64 other tests skip
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html
    - bat-jsl-5:          [PASS][631] -> [SKIP][632] ([i915#2575]) +56 other tests skip
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@gem_exec_fence@basic-wait.html
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - bat-adlp-11:        [PASS][633] -> [SKIP][634] ([i915#2575]) +50 other tests skip
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@gem_exec_fence@nb-await.html
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_parallel@engines:
    - bat-dg2-11:         [PASS][635] -> [SKIP][636] ([i915#2575]) +44 other tests skip
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_exec_parallel@engines.html
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_exec_parallel@engines.html

  * igt@gem_exec_store@basic:
    - bat-mtlp-9:         [PASS][637] -> [SKIP][638] ([i915#2575]) +47 other tests skip
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_exec_store@basic.html
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_exec_store@basic.html

  * igt@gem_flink_basic@basic:
    - bat-dg2-9:          [PASS][639] -> [SKIP][640] ([i915#2575]) +44 other tests skip
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_flink_basic@basic.html
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_flink_basic@basic.html

  * igt@gem_huc_copy@huc-copy:
    - bat-rpls-4:         [PASS][641] -> [SKIP][642] ([i915#2575]) +53 other tests skip
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@gem_huc_copy@huc-copy.html
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_linear_blits@basic:
    - bat-arlh-2:         [PASS][643] -> [SKIP][644] ([i915#11346]) +82 other tests skip
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_linear_blits@basic.html
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_linear_blits@basic.html

  * igt@gem_sync@basic-all:
    - bat-adlp-9:         [PASS][645] -> [SKIP][646] ([i915#2575]) +52 other tests skip
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@gem_sync@basic-all.html
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - bat-atsm-1:         [PASS][647] -> [SKIP][648] ([i915#2575]) +43 other tests skip
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@gem_sync@basic-each.html
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@gem_sync@basic-each.html

  * igt@gem_tiled_blits@basic:
    - bat-adls-6:         [PASS][649] -> [SKIP][650] ([i915#2575]) +53 other tests skip
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@gem_tiled_blits@basic.html
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-kbl-2:          [PASS][651] -> [SKIP][652] +107 other tests skip
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-kbl-2/igt@gem_tiled_pread_basic.html
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-kbl-2/igt@gem_tiled_pread_basic.html

  * igt@gem_wait@wait:
    - fi-rkl-11600:       [PASS][653] -> [SKIP][654] +50 other tests skip
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@gem_wait@wait.html
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@gem_wait@wait.html

  * igt@i915_getparams_basic@basic-eu-total:
    - bat-dg1-7:          [PASS][655] -> [SKIP][656] ([i915#2575]) +44 other tests skip
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@i915_getparams_basic@basic-eu-total.html
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_selftest@live:
    - fi-kbl-x1275:       [PASS][657] -> [SKIP][658] +106 other tests skip
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@i915_selftest@live.html
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@i915_selftest@live.html

  * igt@intel_hwmon@hwmon-read:
    - bat-dg2-9:          [PASS][659] -> [SKIP][660] +3 other tests skip
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@intel_hwmon@hwmon-read.html
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - bat-dg2-11:         [PASS][661] -> [SKIP][662] +2 other tests skip
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@intel_hwmon@hwmon-write.html
   [662]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@intel_hwmon@hwmon-write.html
    - bat-dg2-14:         [PASS][663] -> [SKIP][664] +2 other tests skip
   [663]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@intel_hwmon@hwmon-write.html
   [664]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-glk-j4005:       [PASS][665] -> [SKIP][666] +131 other tests skip
   [665]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [666]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@addfb25-y-tiled-legacy:
    - bat-dg2-9:          [PASS][667] -> [SKIP][668] ([i915#5190]) +1 other test skip
   [667]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [668]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
    - bat-dg2-11:         [PASS][669] -> [SKIP][670] ([i915#5190]) +1 other test skip
   [669]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [670]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
    - bat-dg2-8:          [PASS][671] -> [SKIP][672] ([i915#5190]) +1 other test skip
   [671]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [672]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - bat-dg2-14:         [PASS][673] -> [SKIP][674] ([i915#5190]) +1 other test skip
   [673]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [674]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@basic:
    - fi-hsw-4770:        [PASS][675] -> [SKIP][676] +126 other tests skip
   [675]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@kms_addfb_basic@basic.html
   [676]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@kms_addfb_basic@basic.html

  * igt@kms_addfb_basic@small-bo:
    - fi-skl-6600u:       [PASS][677] -> [SKIP][678] +135 other tests skip
   [677]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html
   [678]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html

  * igt@kms_busy@basic:
    - fi-ivb-3770:        [PASS][679] -> [SKIP][680] +126 other tests skip
   [679]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ivb-3770/igt@kms_busy@basic.html
   [680]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ivb-3770/igt@kms_busy@basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-guc:         [PASS][681] -> [SKIP][682] +132 other tests skip
   [681]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html
   [682]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-cfl-8700k:       [PASS][683] -> [SKIP][684] +131 other tests skip
   [683]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [684]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_force_connector_basic@force-edid:
    - bat-dg1-6:          [PASS][685] -> [SKIP][686] ([i915#12311]) +35 other tests skip
   [685]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_force_connector_basic@force-edid.html
   [686]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-dg2-8:          [PASS][687] -> [SKIP][688] +3 other tests skip
   [687]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html
   [688]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html
    - bat-rpls-4:         [PASS][689] -> [SKIP][690]
   [689]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_frontbuffer_tracking@basic.html
   [690]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-8809g:       [PASS][691] -> [SKIP][692] +107 other tests skip
   [691]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
   [692]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-ilk-650:         [PASS][693] -> [SKIP][694] +125 other tests skip
   [693]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html
   [694]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html
    - bat-jsl-1:          [PASS][695] -> [SKIP][696] ([i915#2575]) +56 other tests skip
   [695]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@prime_self_import@basic-llseek-bad.html
   [696]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@prime_self_import@basic-llseek-bad.html
    - fi-tgl-1115g4:      [PASS][697] -> [SKIP][698] ([i915#2575]) +121 other tests skip
   [697]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@prime_self_import@basic-llseek-bad.html
   [698]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@prime_self_import@basic-llseek-bad.html

  * igt@prime_self_import@basic-with_fd_dup:
    - bat-mtlp-8:         [PASS][699] -> [SKIP][700] ([i915#2575]) +47 other tests skip
   [699]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@prime_self_import@basic-with_fd_dup.html
   [700]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@prime_self_import@basic-with_fd_dup.html
    - bat-dg1-6:          [PASS][701] -> [SKIP][702] ([i915#2575]) +43 other tests skip
   [701]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@prime_self_import@basic-with_fd_dup.html
   [702]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@prime_self_import@basic-with_fd_dup.html

  * igt@prime_vgem@basic-fence-mmap:
    - fi-pnv-d510:        [PASS][703] -> [SKIP][704] +118 other tests skip
   [703]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html
   [704]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html

  
#### Warnings ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-7567u:       [SKIP][705] ([i915#2190]) -> [SKIP][706]
   [705]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
   [706]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-8809g:       [SKIP][707] ([i915#2190]) -> [SKIP][708]
   [707]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
   [708]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-5:          [SKIP][709] ([i915#2190]) -> [SKIP][710] ([i915#2575])
   [709]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@gem_huc_copy@huc-copy.html
   [710]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-1115g4:      [SKIP][711] ([i915#2190]) -> [SKIP][712] ([i915#2575])
   [711]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
   [712]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          [SKIP][713] ([i915#2190]) -> [SKIP][714] ([i915#2575])
   [713]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
   [714]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       [SKIP][715] ([i915#2190]) -> [SKIP][716]
   [715]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
   [716]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       [SKIP][717] ([i915#2190]) -> [SKIP][718]
   [717]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
   [718]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       [SKIP][719] ([i915#2190]) -> [SKIP][720]
   [719]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
   [720]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       [SKIP][721] ([i915#2190]) -> [SKIP][722]
   [721]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
   [722]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       [SKIP][723] ([i915#2190]) -> [SKIP][724]
   [723]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
   [724]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap@basic:
    - bat-arlh-2:         [SKIP][725] ([i915#11343] / [i915#11346]) -> [SKIP][726] ([i915#11346])
   [725]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_mmap@basic.html
   [726]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_mmap@basic.html
    - bat-atsm-1:         [SKIP][727] ([i915#4083]) -> [SKIP][728] ([i915#2575])
   [727]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@gem_mmap@basic.html
   [728]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@gem_mmap@basic.html
    - bat-dg1-7:          [SKIP][729] ([i915#4083]) -> [SKIP][730] ([i915#2575])
   [729]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@gem_mmap@basic.html
   [730]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@gem_mmap@basic.html
    - bat-mtlp-9:         [SKIP][731] ([i915#4083]) -> [SKIP][732] ([i915#2575])
   [731]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_mmap@basic.html
   [732]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_mmap@basic.html
    - bat-dg2-9:          [SKIP][733] ([i915#4083]) -> [SKIP][734] ([i915#2575])
   [733]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_mmap@basic.html
   [734]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_mmap@basic.html
    - bat-dg2-11:         [SKIP][735] ([i915#4083]) -> [SKIP][736] ([i915#2575])
   [735]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_mmap@basic.html
   [736]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_mmap@basic.html
    - bat-mtlp-8:         [SKIP][737] ([i915#4083]) -> [SKIP][738] ([i915#2575])
   [737]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@gem_mmap@basic.html
   [738]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@gem_mmap@basic.html
    - bat-dg1-6:          [SKIP][739] ([i915#4083]) -> [SKIP][740] ([i915#2575])
   [739]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@gem_mmap@basic.html
   [740]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@gem_mmap@basic.html
    - bat-dg2-8:          [SKIP][741] ([i915#4083]) -> [SKIP][742] ([i915#2575])
   [741]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_mmap@basic.html
   [742]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_mmap@basic.html
    - bat-dg2-14:         [SKIP][743] ([i915#4083]) -> [SKIP][744] ([i915#2575])
   [743]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_mmap@basic.html
   [744]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-mtlp-9:         [SKIP][745] ([i915#4077]) -> [SKIP][746] ([i915#2575]) +2 other tests skip
   [745]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_mmap_gtt@basic.html
   [746]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_mmap_gtt@basic.html
    - bat-dg2-9:          [SKIP][747] ([i915#4077]) -> [SKIP][748] ([i915#2575]) +2 other tests skip
   [747]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_mmap_gtt@basic.html
   [748]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_mmap_gtt@basic.html
    - bat-mtlp-8:         [SKIP][749] ([i915#4077]) -> [SKIP][750] ([i915#2575]) +2 other tests skip
   [749]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@gem_mmap_gtt@basic.html
   [750]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@gem_mmap_gtt@basic.html
    - bat-dg1-6:          [SKIP][751] ([i915#4077]) -> [SKIP][752] ([i915#2575]) +2 other tests skip
   [751]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@gem_mmap_gtt@basic.html
   [752]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@gem_mmap_gtt@basic.html
    - bat-dg2-8:          [SKIP][753] ([i915#4077]) -> [SKIP][754] ([i915#2575]) +2 other tests skip
   [753]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_mmap_gtt@basic.html
   [754]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-mtlp-9:         [SKIP][755] ([i915#4079]) -> [SKIP][756] ([i915#2575]) +1 other test skip
   [755]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_render_tiled_blits@basic.html
   [756]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_render_tiled_blits@basic.html
    - bat-dg1-6:          [SKIP][757] ([i915#4079]) -> [SKIP][758] ([i915#2575]) +1 other test skip
   [757]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@gem_render_tiled_blits@basic.html
   [758]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@gem_render_tiled_blits@basic.html
    - bat-dg2-14:         [SKIP][759] ([i915#4079]) -> [SKIP][760] ([i915#2575]) +1 other test skip
   [759]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_render_tiled_blits@basic.html
   [760]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_render_tiled_blits@basic.html
    - bat-arlh-2:         [SKIP][761] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725] / [i915#4079]) -> [SKIP][762] ([i915#11346])
   [761]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_render_tiled_blits@basic.html
   [762]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_render_tiled_blits@basic.html
    - bat-dg2-9:          [SKIP][763] ([i915#4079]) -> [SKIP][764] ([i915#2575]) +1 other test skip
   [763]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_render_tiled_blits@basic.html
   [764]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_render_tiled_blits@basic.html
    - bat-mtlp-8:         [SKIP][765] ([i915#4079]) -> [SKIP][766] ([i915#2575]) +1 other test skip
   [765]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html
   [766]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg2-14:         [SKIP][767] ([i915#4077]) -> [SKIP][768] ([i915#2575]) +2 other tests skip
   [767]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html
   [768]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html
    - bat-arlh-2:         [SKIP][769] ([i915#11346] / [i915#12637]) -> [SKIP][770] ([i915#11346]) +4 other tests skip
   [769]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_tiled_fence_blits@basic.html
   [770]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_tiled_fence_blits@basic.html
    - bat-dg1-7:          [SKIP][771] ([i915#4077]) -> [SKIP][772] ([i915#2575]) +2 other tests skip
   [771]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
   [772]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
    - bat-dg2-11:         [SKIP][773] ([i915#4077]) -> [SKIP][774] ([i915#2575]) +2 other tests skip
   [773]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html
   [774]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-6:         [SKIP][775] ([i915#3282]) -> [SKIP][776] ([i915#2575])
   [775]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@gem_tiled_pread_basic.html
   [776]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@gem_tiled_pread_basic.html
    - bat-arlh-2:         [SKIP][777] ([i915#10206] / [i915#11346] / [i915#11724] / [i915#4079]) -> [SKIP][778] ([i915#11346])
   [777]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_tiled_pread_basic.html
   [778]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_tiled_pread_basic.html
    - fi-rkl-11600:       [SKIP][779] ([i915#3282]) -> [SKIP][780]
   [779]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@gem_tiled_pread_basic.html
   [780]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@gem_tiled_pread_basic.html
    - bat-atsm-1:         [SKIP][781] ([i915#4079]) -> [SKIP][782] ([i915#2575]) +1 other test skip
   [781]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@gem_tiled_pread_basic.html
   [782]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@gem_tiled_pread_basic.html
    - bat-dg1-7:          [SKIP][783] ([i915#4079]) -> [SKIP][784] ([i915#2575]) +1 other test skip
   [783]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@gem_tiled_pread_basic.html
   [784]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@gem_tiled_pread_basic.html
    - bat-adlp-9:         [SKIP][785] ([i915#3282]) -> [SKIP][786] ([i915#2575])
   [785]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@gem_tiled_pread_basic.html
   [786]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@gem_tiled_pread_basic.html
    - bat-dg2-11:         [SKIP][787] ([i915#4079]) -> [SKIP][788] ([i915#2575]) +1 other test skip
   [787]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_tiled_pread_basic.html
   [788]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_tiled_pread_basic.html
    - bat-rpls-4:         [SKIP][789] ([i915#3282]) -> [SKIP][790] ([i915#2575])
   [789]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@gem_tiled_pread_basic.html
   [790]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@gem_tiled_pread_basic.html
    - bat-dg2-8:          [SKIP][791] ([i915#4079]) -> [SKIP][792] ([i915#2575]) +1 other test skip
   [791]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_tiled_pread_basic.html
   [792]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_tiled_pread_basic.html
    - bat-adlp-11:        [SKIP][793] ([i915#3282]) -> [SKIP][794] ([i915#2575])
   [793]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@gem_tiled_pread_basic.html
   [794]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@gem_tiled_pread_basic.html
    - bat-adls-6:         [SKIP][795] ([i915#3282]) -> [SKIP][796] ([i915#2575])
   [795]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@gem_tiled_pread_basic.html
   [796]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          [SKIP][797] ([i915#11681] / [i915#6621]) -> [SKIP][798] ([i915#2575])
   [797]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@i915_pm_rps@basic-api.html
   [798]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-adlp-9:         [SKIP][799] ([i915#6621]) -> [SKIP][800] ([i915#2575])
   [799]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@i915_pm_rps@basic-api.html
   [800]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-14:         [SKIP][801] ([i915#11681] / [i915#6621]) -> [SKIP][802] ([i915#2575])
   [801]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@i915_pm_rps@basic-api.html
   [802]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@i915_pm_rps@basic-api.html
    - bat-adlp-6:         [SKIP][803] ([i915#6621]) -> [SKIP][804] ([i915#2575])
   [803]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@i915_pm_rps@basic-api.html
   [804]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@i915_pm_rps@basic-api.html
    - bat-arlh-2:         [SKIP][805] ([i915#10209] / [i915#11346] / [i915#11681]) -> [SKIP][806] ([i915#11346])
   [805]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@i915_pm_rps@basic-api.html
   [806]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@i915_pm_rps@basic-api.html
    - bat-atsm-1:         [SKIP][807] ([i915#6621]) -> [SKIP][808] ([i915#2575])
   [807]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@i915_pm_rps@basic-api.html
   [808]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-9:         [SKIP][809] ([i915#11681] / [i915#6621]) -> [SKIP][810] ([i915#2575])
   [809]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@i915_pm_rps@basic-api.html
   [810]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-9:          [SKIP][811] ([i915#11681] / [i915#6621]) -> [SKIP][812] ([i915#2575])
   [811]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@i915_pm_rps@basic-api.html
   [812]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-11:         [SKIP][813] ([i915#11681] / [i915#6621]) -> [SKIP][814] ([i915#2575])
   [813]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [814]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html
    - bat-adlp-11:        [SKIP][815] ([i915#6621]) -> [SKIP][816] ([i915#2575])
   [815]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@i915_pm_rps@basic-api.html
   [816]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-8:         [SKIP][817] ([i915#11681] / [i915#6621]) -> [SKIP][818] ([i915#2575])
   [817]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
   [818]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
    - bat-dg1-6:          [SKIP][819] ([i915#11681] / [i915#6621]) -> [SKIP][820] ([i915#2575])
   [819]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [820]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          [SKIP][821] ([i915#11681] / [i915#6621]) -> [SKIP][822] ([i915#2575])
   [821]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@i915_pm_rps@basic-api.html
   [822]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@i915_pm_rps@basic-api.html

  * igt@intel_hwmon@hwmon-read:
    - bat-arlh-2:         [SKIP][823] ([i915#11346] / [i915#11680] / [i915#7707]) -> [SKIP][824] ([i915#11346]) +1 other test skip
   [823]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@intel_hwmon@hwmon-read.html
   [824]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@intel_hwmon@hwmon-read.html
    - fi-rkl-11600:       [SKIP][825] ([i915#7707]) -> [SKIP][826] +1 other test skip
   [825]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@intel_hwmon@hwmon-read.html
   [826]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@intel_hwmon@hwmon-read.html
    - bat-mtlp-9:         [SKIP][827] ([i915#7707]) -> [SKIP][828] ([i915#2575]) +1 other test skip
   [827]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@intel_hwmon@hwmon-read.html
   [828]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@intel_hwmon@hwmon-read.html
    - bat-mtlp-8:         [SKIP][829] ([i915#7707]) -> [SKIP][830] ([i915#2575]) +1 other test skip
   [829]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@intel_hwmon@hwmon-read.html
   [830]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@intel_hwmon@hwmon-read.html
    - fi-tgl-1115g4:      [SKIP][831] ([i915#7707]) -> [SKIP][832] ([i915#2575]) +1 other test skip
   [831]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@intel_hwmon@hwmon-read.html
   [832]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - bat-rpls-4:         [SKIP][833] ([i915#7707]) -> [SKIP][834] +1 other test skip
   [833]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@intel_hwmon@hwmon-write.html
   [834]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - bat-dg1-6:          [SKIP][835] ([i915#12311] / [i915#4212]) -> [SKIP][836] ([i915#12311]) +7 other tests skip
   [835]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [836]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        [SKIP][837] ([i915#5190]) -> [SKIP][838]
   [837]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [838]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arlh-2:         [SKIP][839] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203]) -> [SKIP][840] ([i915#11346])
   [839]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [840]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-arlh-2:         [SKIP][841] ([i915#10200] / [i915#11346] / [i915#11666]) -> [SKIP][842] ([i915#11346]) +8 other tests skip
   [841]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html
   [842]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          [SKIP][843] ([i915#4215] / [i915#5190]) -> [SKIP][844] ([i915#5190])
   [843]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [844]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-6:          [SKIP][845] ([i915#12311] / [i915#4215]) -> [SKIP][846] ([i915#12311])
   [845]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [846]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-8:          [SKIP][847] ([i915#4215] / [i915#5190]) -> [SKIP][848] ([i915#5190])
   [847]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [848]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-11:         [SKIP][849] ([i915#4215] / [i915#5190]) -> [SKIP][850] ([i915#5190])
   [849]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [850]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-14:         [SKIP][851] ([i915#4215] / [i915#5190]) -> [SKIP][852] ([i915#5190])
   [851]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [852]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-kbl-7567u:       [DMESG-WARN][853] ([i915#13735]) -> [SKIP][854] +42 other tests skip
   [853]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html
   [854]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_busy@basic:
    - bat-dg1-6:          [SKIP][855] ([i915#11190] / [i915#12311] / [i915#4303]) -> [SKIP][856] ([i915#12311] / [i915#2575])
   [855]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_busy@basic.html
   [856]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_busy@basic.html
    - bat-adlp-11:        [SKIP][857] ([i915#11190]) -> [SKIP][858] ([i915#2575])
   [857]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_busy@basic.html
   [858]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      [SKIP][859] ([i915#4103]) -> [SKIP][860] ([i915#2575]) +1 other test skip
   [859]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [860]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - bat-dg1-6:          [SKIP][861] ([i915#11190] / [i915#12311]) -> [SKIP][862] ([i915#12311]) +15 other tests skip
   [861]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [862]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg2-11:         [SKIP][863] ([i915#3555] / [i915#3840]) -> [SKIP][864]
   [863]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_dsc@dsc-basic.html
   [864]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_dsc@dsc-basic.html
    - bat-rpls-4:         [SKIP][865] ([i915#3555] / [i915#3840] / [i915#9886]) -> [SKIP][866]
   [865]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_dsc@dsc-basic.html
   [866]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_dsc@dsc-basic.html
    - fi-kbl-8809g:       [SKIP][867] ([i915#11190]) -> [SKIP][868] +16 other tests skip
   [867]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html
   [868]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html
    - bat-dg2-14:         [SKIP][869] ([i915#3555] / [i915#3840]) -> [SKIP][870]
   [869]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_dsc@dsc-basic.html
   [870]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_dsc@dsc-basic.html
    - fi-rkl-11600:       [SKIP][871] ([i915#11190]) -> [SKIP][872] +1 other test skip
   [871]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_dsc@dsc-basic.html
   [872]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_dsc@dsc-basic.html
    - fi-tgl-1115g4:      [SKIP][873] ([i915#3555] / [i915#3840]) -> [SKIP][874] ([i915#2575])
   [873]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html
   [874]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html
    - bat-mtlp-9:         [SKIP][875] ([i915#3555] / [i915#3840] / [i915#9159]) -> [SKIP][876] ([i915#2575])
   [875]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_dsc@dsc-basic.html
   [876]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_dsc@dsc-basic.html
    - bat-mtlp-8:         [SKIP][877] ([i915#3555] / [i915#3840] / [i915#9159]) -> [SKIP][878] ([i915#2575])
   [877]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
   [878]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-dg1-6:          [SKIP][879] ([i915#12311] / [i915#3637]) -> [SKIP][880] ([i915#12311]) +2 other tests skip
   [879]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html
   [880]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      [SKIP][881] -> [SKIP][882] ([i915#2575])
   [881]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
   [882]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-dg1-6:          [SKIP][883] ([i915#12311] / [i915#4342]) -> [SKIP][884] ([i915#12311])
   [883]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html
   [884]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html
    - fi-rkl-11600:       [SKIP][885] ([i915#1849] / [i915#5354]) -> [SKIP][886]
   [885]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html
   [886]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-kbl-x1275:       [SKIP][887] ([i915#11190]) -> [SKIP][888] +16 other tests skip
   [887]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html
   [888]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - fi-bsw-nick:        [SKIP][889] ([i915#11190]) -> [SKIP][890] +16 other tests skip
   [889]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [890]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
    - bat-kbl-2:          [SKIP][891] ([i915#11190]) -> [SKIP][892] +16 other tests skip
   [891]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [892]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
    - bat-arlh-2:         [SKIP][893] ([i915#11190] / [i915#11346]) -> [SKIP][894] ([i915#11346]) +16 other tests skip
   [893]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [894]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-rkl-11600:       [SKIP][895] ([i915#5354]) -> [SKIP][896]
   [895]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html
   [896]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg2-11:         [SKIP][897] ([i915#5354]) -> [SKIP][898]
   [897]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_pm_backlight@basic-brightness.html
   [898]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_pm_backlight@basic-brightness.html
    - bat-rpls-4:         [SKIP][899] ([i915#5354]) -> [SKIP][900]
   [899]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html
   [900]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg2-14:         [SKIP][901] ([i915#5354]) -> [SKIP][902]
   [901]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_pm_backlight@basic-brightness.html
   [902]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg2-8:          [SKIP][903] ([i915#5354]) -> [SKIP][904]
   [903]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_pm_backlight@basic-brightness.html
   [904]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_pm_backlight@basic-brightness.html
    - fi-tgl-1115g4:      [SKIP][905] ([i915#9812]) -> [SKIP][906] ([i915#2575])
   [905]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html
   [906]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg2-9:          [SKIP][907] ([i915#5354]) -> [SKIP][908]
   [907]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html
   [908]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg1-6:          [SKIP][909] ([i915#12311] / [i915#5354]) -> [SKIP][910] ([i915#12311])
   [909]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html
   [910]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][911] ([i915#13735] / [i915#13890] / [i915#180]) -> [SKIP][912] +23 other tests skip
   [911]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [912]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-dg1-6:          [SKIP][913] ([i915#1072] / [i915#12311] / [i915#9732]) -> [SKIP][914] ([i915#12311]) +3 other tests skip
   [913]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_psr@psr-primary-mmap-gtt.html
   [914]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-dg2-11:         [SKIP][915] ([i915#1072] / [i915#9732]) -> [SKIP][916] +3 other tests skip
   [915]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_psr@psr-sprite-plane-onoff.html
   [916]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-rpls-4:         [SKIP][917] ([i915#1072] / [i915#9732]) -> [SKIP][918] +3 other tests skip
   [917]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_psr@psr-sprite-plane-onoff.html
   [918]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-dg2-14:         [SKIP][919] ([i915#1072] / [i915#9732]) -> [SKIP][920] +3 other tests skip
   [919]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_psr@psr-sprite-plane-onoff.html
   [920]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_psr@psr-sprite-plane-onoff.html
    - fi-rkl-11600:       [SKIP][921] ([i915#1072] / [i915#9732]) -> [SKIP][922] +3 other tests skip
   [921]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_psr@psr-sprite-plane-onoff.html
   [922]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-dg2-9:          [SKIP][923] ([i915#1072] / [i915#9732]) -> [SKIP][924] +3 other tests skip
   [923]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html
   [924]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html
    - fi-hsw-4770:        [SKIP][925] ([i915#1072]) -> [SKIP][926] +3 other tests skip
   [925]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html
   [926]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-dg2-8:          [SKIP][927] ([i915#1072] / [i915#9732]) -> [SKIP][928] +3 other tests skip
   [927]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html
   [928]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html
    - fi-tgl-1115g4:      [SKIP][929] ([i915#9732]) -> [SKIP][930] ([i915#2575]) +3 other tests skip
   [929]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_psr@psr-sprite-plane-onoff.html
   [930]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arlh-2:         [SKIP][931] ([i915#10208] / [i915#11346] / [i915#8809]) -> [SKIP][932] ([i915#11346])
   [931]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html
   [932]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-6:          [SKIP][933] ([i915#12311] / [i915#3555]) -> [SKIP][934] ([i915#12311])
   [933]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html
   [934]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-tgl-1115g4:      [SKIP][935] ([i915#3555]) -> [SKIP][936] ([i915#2575])
   [935]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html
   [936]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-atsm-1:         [SKIP][937] ([i915#6078]) -> [SKIP][938] ([i915#2575]) +1 other test skip
   [937]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html
   [938]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html
    - bat-dg1-7:          [SKIP][939] ([i915#3708]) -> [SKIP][940] ([i915#2575]) +3 other tests skip
   [939]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html
   [940]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-9:          [SKIP][941] ([i915#3708]) -> [SKIP][942] ([i915#2575])
   [941]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
   [942]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-11:         [SKIP][943] ([i915#3708]) -> [SKIP][944] ([i915#2575])
   [943]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html
   [944]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-14:         [SKIP][945] ([i915#3708]) -> [SKIP][946] ([i915#2575])
   [945]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@prime_vgem@basic-fence-flip.html
   [946]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@prime_vgem@basic-fence-flip.html
    - bat-dg2-8:          [SKIP][947] ([i915#3708]) -> [SKIP][948] ([i915#2575])
   [947]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
   [948]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
    - bat-adlp-11:        [SKIP][949] ([i915#3708]) -> [SKIP][950] ([i915#2575])
   [949]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html
   [950]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html
    - fi-rkl-11600:       [SKIP][951] ([i915#3708]) -> [SKIP][952]
   [951]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html
   [952]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-atsm-1:         [SKIP][953] ([i915#4077]) -> [SKIP][954] ([i915#2575]) +4 other tests skip
   [953]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html
   [954]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg1-7:          [SKIP][955] ([i915#3708] / [i915#4077]) -> [SKIP][956] ([i915#2575]) +1 other test skip
   [955]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
   [956]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-11:         [SKIP][957] ([i915#3708] / [i915#4077]) -> [SKIP][958] ([i915#2575]) +1 other test skip
   [957]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html
   [958]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-14:         [SKIP][959] ([i915#3708] / [i915#4077]) -> [SKIP][960] ([i915#2575]) +1 other test skip
   [959]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@prime_vgem@basic-fence-mmap.html
   [960]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-8:          [SKIP][961] ([i915#3708] / [i915#4077]) -> [SKIP][962] ([i915#2575]) +1 other test skip
   [961]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
   [962]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
    - bat-mtlp-9:         [SKIP][963] ([i915#3708] / [i915#4077]) -> [SKIP][964] ([i915#2575]) +1 other test skip
   [963]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@prime_vgem@basic-fence-mmap.html
   [964]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg2-9:          [SKIP][965] ([i915#3708] / [i915#4077]) -> [SKIP][966] ([i915#2575]) +1 other test skip
   [965]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
   [966]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
    - bat-mtlp-8:         [SKIP][967] ([i915#3708] / [i915#4077]) -> [SKIP][968] ([i915#2575]) +1 other test skip
   [967]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html
   [968]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg1-6:          [SKIP][969] ([i915#3708] / [i915#4077]) -> [SKIP][970] ([i915#2575]) +1 other test skip
   [969]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html
   [970]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-11:        [SKIP][971] ([i915#3291] / [i915#3708]) -> [SKIP][972] ([i915#2575]) +2 other tests skip
   [971]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@prime_vgem@basic-fence-read.html
   [972]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@prime_vgem@basic-fence-read.html
    - bat-mtlp-8:         [SKIP][973] ([i915#3708]) -> [SKIP][974] ([i915#2575]) +1 other test skip
   [973]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
   [974]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
    - bat-dg1-6:          [SKIP][975] ([i915#3708]) -> [SKIP][976] ([i915#2575]) +2 other tests skip
   [975]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@prime_vgem@basic-fence-read.html
   [976]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@prime_vgem@basic-fence-read.html
    - bat-adlp-9:         [SKIP][977] ([i915#3291] / [i915#3708]) -> [SKIP][978] ([i915#2575]) +2 other tests skip
   [977]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@prime_vgem@basic-fence-read.html
   [978]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@prime_vgem@basic-fence-read.html
    - bat-adls-6:         [SKIP][979] ([i915#3291]) -> [SKIP][980] ([i915#2575]) +2 other tests skip
   [979]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@prime_vgem@basic-fence-read.html
   [980]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@prime_vgem@basic-fence-read.html
    - bat-adlp-6:         [SKIP][981] ([i915#3291] / [i915#3708]) -> [SKIP][982] ([i915#2575]) +2 other tests skip
   [981]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@prime_vgem@basic-fence-read.html
   [982]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@prime_vgem@basic-fence-read.html
    - bat-arlh-2:         [SKIP][983] ([i915#10212] / [i915#11346] / [i915#11726]) -> [SKIP][984] ([i915#11346])
   [983]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@prime_vgem@basic-fence-read.html
   [984]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-dg2-11:         [SKIP][985] ([i915#3291] / [i915#3708]) -> [SKIP][986] ([i915#2575]) +2 other tests skip
   [985]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@prime_vgem@basic-read.html
   [986]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@prime_vgem@basic-read.html
    - bat-rpls-4:         [SKIP][987] ([i915#3708]) -> [SKIP][988] ([i915#2575]) +2 other tests skip
   [987]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@prime_vgem@basic-read.html
   [988]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@prime_vgem@basic-read.html
    - bat-dg2-14:         [SKIP][989] ([i915#3291] / [i915#3708]) -> [SKIP][990] ([i915#2575]) +2 other tests skip
   [989]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@prime_vgem@basic-read.html
   [990]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@prime_vgem@basic-read.html
    - bat-arlh-2:         [SKIP][991] ([i915#10214] / [i915#11346] / [i915#11726]) -> [SKIP][992] ([i915#11346])
   [991]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@prime_vgem@basic-read.html
   [992]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@prime_vgem@basic-read.html
    - fi-rkl-11600:       [SKIP][993] ([i915#3291] / [i915#3708]) -> [SKIP][994] +2 other tests skip
   [993]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@prime_vgem@basic-read.html
   [994]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@prime_vgem@basic-read.html
    - bat-mtlp-9:         [SKIP][995] ([i915#3708]) -> [SKIP][996] ([i915#2575]) +1 other test skip
   [995]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@prime_vgem@basic-read.html
   [996]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-atsm-1:         [SKIP][997] -> [SKIP][998] ([i915#2575]) +2 other tests skip
   [997]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@prime_vgem@basic-write.html
   [998]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@prime_vgem@basic-write.html
    - bat-mtlp-9:         [SKIP][999] ([i915#10216] / [i915#3708]) -> [SKIP][1000] ([i915#2575])
   [999]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@prime_vgem@basic-write.html
   [1000]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@prime_vgem@basic-write.html
    - bat-dg2-9:          [SKIP][1001] ([i915#3291] / [i915#3708]) -> [SKIP][1002] ([i915#2575]) +2 other tests skip
   [1001]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@prime_vgem@basic-write.html
   [1002]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@prime_vgem@basic-write.html
    - bat-mtlp-8:         [SKIP][1003] ([i915#10216] / [i915#3708]) -> [SKIP][1004] ([i915#2575])
   [1003]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@prime_vgem@basic-write.html
   [1004]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@prime_vgem@basic-write.html
    - bat-dg1-6:          [SKIP][1005] ([i915#11723] / [i915#3708]) -> [SKIP][1006] ([i915#2575])
   [1005]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@prime_vgem@basic-write.html
   [1006]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@prime_vgem@basic-write.html
    - bat-dg2-8:          [SKIP][1007] ([i915#3291] / [i915#3708]) -> [SKIP][1008] ([i915#2575]) +2 other tests skip
   [1007]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@prime_vgem@basic-write.html
   [1008]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@prime_vgem@basic-write.html
    - bat-arlh-2:         [SKIP][1009] ([i915#10216] / [i915#11346] / [i915#11723]) -> [SKIP][1010] ([i915#11346])
   [1009]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@prime_vgem@basic-write.html
   [1010]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@prime_vgem@basic-write.html

  
  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
  [i915#11031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031
  [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11680]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
  [i915#12311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#15205]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15205
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1836]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1836
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#4303]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4303
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#4369]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4369
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6094
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#7357]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7357
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_17670 -> Patchwork_158856v2

  CI-20190529: 20190529
  CI_DRM_17670: 39f65c105d5b1af093f9df6f3dc688a642f96456 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8664: 28cc709ad89c0ef569569f19f4772d4cca354963 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158856v2: 39f65c105d5b1af093f9df6f3dc688a642f96456 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/index.html

--===============3958242841147165267==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: All patches to make PREEMPT_RT work on xe. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158856/">https://patchwork.freedesktop.org/series/158856/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17670 -&gt; Patchwork_158856v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158856v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_158856v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_158856v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@core_auth@basic-auth.html">SKIP</a> +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@core_sysfs@read-all-entries:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@core_sysfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@core_sysfs@read-all-entries.html">SKIP</a> +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@dmabuf@all-tests.html">SKIP</a> +52 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_basic@create-close.html">SKIP</a> +106 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@gem_linear_blits@basic.html">SKIP</a> +120 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@gem_lmem_swapping@basic.html">FAIL</a> +5 other tests fail</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@gem_lmem_swapping@basic.html">FAIL</a> +5 other tests fail</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_lmem_swapping@basic.html">FAIL</a> +5 other tests fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_lmem_swapping@basic.html">FAIL</a> +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +5 other tests fail</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@gem_lmem_swapping@verify-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +5 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ilk-650/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-n3050/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-elk-e7500/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-pnv-d510/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-apl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-apl-1/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-nick/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-kbl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-kbl-2/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-guc/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ivb-3770/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a> +76 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@i915_selftest@live.html">SKIP</a> +48 other tests skip</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@i915_selftest@live.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-1024:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_addfb_basic@bad-pitch-1024.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_addfb_basic@bad-pitch-1024.html">SKIP</a> +110 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-128:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_addfb_basic@bad-pitch-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_addfb_basic@bad-pitch-128.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-999:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_addfb_basic@bad-pitch-999.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_addfb_basic@bad-pitch-999.html">SKIP</a> +63 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html">SKIP</a> +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@no-handle:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_addfb_basic@no-handle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_addfb_basic@no-handle.html">SKIP</a> +110 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_addfb_basic@too-high.html">SKIP</a> +69 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_addfb_basic@unused-offsets.html">SKIP</a> +56 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">SKIP</a> +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> +79 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_force_connector_basic@force-connector-state.html">SKIP</a> +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_force_connector_basic@force-edid.html">SKIP</a> +62 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> +132 other tests skip</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> +74 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@prime_self_import@basic-with_one_bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@prime_self_import@basic-with_one_bo.html">SKIP</a> +132 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-export:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@vgem_basic@dmabuf-export.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@vgem_basic@dmabuf-export.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-apl-1/igt@gem_lmem_swapping@basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-apl-1/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-elk-e7500/igt@gem_lmem_swapping@basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-elk-e7500/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">FAIL</a> +3 other tests fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">FAIL</a> +3 other tests fail</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@gem_lmem_swapping@verify-random.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_mmap@basic.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@gem_mmap@basic.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_mmap@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_mmap_gtt@basic.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_render_tiled_blits@basic.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_render_tiled_blits@basic.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@gem_render_tiled_blits@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_tiled_fence_blits@basic.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@gem_tiled_pread_basic.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@gem_tiled_pread_basic.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031">i915#11031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@gem_tiled_pread_basic.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031">i915#11031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@gem_tiled_pread_basic.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@gem_tiled_pread_basic.html">SKIP</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@gem_tiled_pread_basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@i915_selftest@live.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@intel_hwmon@hwmon-read.html">SKIP</a> +1 other test skip</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> +1 other test skip</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@intel_hwmon@hwmon-read.html">SKIP</a> +1 other test skip</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> +1 other test skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@intel_hwmon@hwmon-read.html">SKIP</a> +1 other test skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> +1 other test skip</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680">i915#11680</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@intel_hwmon@hwmon-read.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@intel_hwmon@hwmon-write.html">SKIP</a> +1 other test skip</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@intel_hwmon@hwmon-write.html">SKIP</a> +1 other test skip</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@intel_hwmon@hwmon-write.html">SKIP</a> +1 other test skip</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> +1 other test skip</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> +7 other tests skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> +8 other tests skip</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> +8 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> +8 other tests skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> +7 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6077">i915#6077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +1 other test skip</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030">i915#11030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +1 other test skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +1 other test skip</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +1 other test skip</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202">i915#10202</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030">i915#11030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202">i915#10202</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6078">i915#6078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032">i915#11032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207">i915#10207</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4093">i915#4093</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +3 other tests skip</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207">i915#10207</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207">i915#10207</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032">i915#11032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6093">i915#6093</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> +4 other tests skip</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4093">i915#4093</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4369">i915#4369</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html">SKIP</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4369">i915#4369</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> +14 other tests skip</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1836">i915#1836</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15205">i915#15205</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@basic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_prop_blob@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7357">i915#7357</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_prop_blob@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> +3 other tests skip</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6094">i915#6094</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> +4 other tests skip</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@prime_vgem@basic-fence-read.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@prime_vgem@basic-fence-read.html">SKIP</a> +1 other test skip</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@prime_vgem@basic-fence-read.html">SKIP</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@prime_vgem@basic-fence-read.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@prime_vgem@basic-gtt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@prime_vgem@basic-read.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@prime_vgem@basic-read.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> +2 other tests skip</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@prime_vgem@basic-read.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@prime_vgem@basic-read.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@prime_vgem@basic-write.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@prime_vgem@basic-write.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@prime_vgem@basic-write.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@prime_vgem@basic-write.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@prime_vgem@basic-write.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158856v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) +3 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-6/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ivb-3770/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ivb-3770/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ilk-650/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ilk-650/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-n3050/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-n3050/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-pnv-d510/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-pnv-d510/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-2/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-twl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-twl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-apl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-apl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-elk-e7500/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-elk-e7500/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arls-5/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arls-5/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rplp-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rplp-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-guc/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-guc/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-3/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-3/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) +3 other tests skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-elk-e7500/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-elk-e7500/igt@gem_basic@create-close.html">SKIP</a> +125 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_basic@create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +44 other tests skip</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-nick/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-nick/igt@gem_basic@create-close.html">SKIP</a> +106 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-apl-1/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-apl-1/igt@gem_close_race@basic-process.html">SKIP</a> +126 other tests skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_close_race@basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html">SKIP</a> +127 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@gem_exec_fence@basic-await.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +52 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html">SKIP</a> +64 other tests skip</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@gem_exec_fence@basic-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@gem_exec_fence@basic-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@gem_exec_fence@nb-await.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@gem_exec_fence@nb-await.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_exec_parallel@engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_exec_parallel@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@basic:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_exec_store@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_exec_store@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_flink_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_flink_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +53 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_linear_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +82 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@gem_sync@basic-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +52 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@gem_sync@basic-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +53 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-kbl-2/igt@gem_tiled_pread_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-kbl-2/igt@gem_tiled_pread_basic.html">SKIP</a> +107 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@gem_wait@wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@gem_wait@wait.html">SKIP</a> +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@i915_getparams_basic@basic-eu-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@i915_getparams_basic@basic-eu-total.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@i915_selftest@live.html">SKIP</a> +106 other tests skip</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@intel_hwmon@hwmon-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@intel_hwmon@hwmon-read.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@intel_hwmon@hwmon-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@intel_hwmon@hwmon-write.html">SKIP</a> +2 other tests skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@intel_hwmon@hwmon-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@intel_hwmon@hwmon-write.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">SKIP</a> +131 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@kms_addfb_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@kms_addfb_basic@basic.html">SKIP</a> +126 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@small-bo:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">SKIP</a> +135 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ivb-3770/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ivb-3770/igt@kms_busy@basic.html">SKIP</a> +126 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> +132 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> +131 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> +3 other tests skip</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_frontbuffer_tracking@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +107 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-llseek-bad:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html">SKIP</a> +125 other tests skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@prime_self_import@basic-llseek-bad.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@prime_self_import@basic-llseek-bad.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +56 other tests skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@prime_self_import@basic-llseek-bad.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@prime_self_import@basic-llseek-bad.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +121 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_fd_dup:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@prime_self_import@basic-with_fd_dup.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@prime_self_import@basic-with_fd_dup.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +47 other tests skip</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@prime_self_import@basic-with_fd_dup.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@prime_self_import@basic-with_fd_dup.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> +118 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-5/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-5/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343">i915#11343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725">i915#11725</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +4 other tests skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724">i915#11724</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680">i915#11680</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +1 other test skip</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@intel_hwmon@hwmon-read.html">SKIP</a> +1 other test skip</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@intel_hwmon@hwmon-write.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4303">i915#4303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> +16 other tests skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_dsc@dsc-basic.html">SKIP</a> +1 other test skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159">i915#9159</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159">i915#9159</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>)</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> +16 other tests skip</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> +16 other tests skip</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>)</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6078">i915#6078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +3 other tests skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +4 other tests skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-11/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-11/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-9/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-9/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adls-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adls-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-adlp-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-adlp-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-11/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-11/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-rpls-4/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-rpls-4/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-14/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-14/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726">i915#11726</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> +2 other tests skip</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-atsm-1/igt@prime_vgem@basic-write.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-atsm-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-mtlp-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-mtlp-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg1-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg1-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/bat-arlh-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158856v2/bat-arlh-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17670 -&gt; Patchwork_158856v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17670: 39f65c105d5b1af093f9df6f3dc688a642f96456 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8664: 28cc709ad89c0ef569569f19f4772d4cca354963 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158856v2: 39f65c105d5b1af093f9df6f3dc688a642f96456 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3958242841147165267==--
