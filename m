Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DD3855748
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 00:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D95A10E12E;
	Wed, 14 Feb 2024 23:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF0E10E0F8;
 Wed, 14 Feb 2024 23:29:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8660998861563208132=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Add_support_for_getting_EDI?=
 =?utf-8?q?D_over_ACPI_to_DRM?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mario Limonciello" <mario.limonciello@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Feb 2024 23:29:26 -0000
Message-ID: <170795336609.1238464.16168533502920066128@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240214215756.6530-1-mario.limonciello@amd.com>
In-Reply-To: <20240214215756.6530-1-mario.limonciello@amd.com>
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

--===============8660998861563208132==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for getting EDID over ACPI to DRM
URL   : https://patchwork.freedesktop.org/series/129920/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14274 -> Patchwork_129920v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129920v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129920v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/index.html

Participating hosts (36 -> 35)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129920v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-atsm-1:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_fence@basic-wait:
    - bat-rplp-1:         NOTRUN -> [SKIP][3] +12 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@gem_exec_fence@basic-wait.html

  * igt@gem_linear_blits@basic:
    - bat-rplp-1:         [PASS][4] -> [SKIP][5] +47 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@gem_linear_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@gem_linear_blits@basic.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [FAIL][6] +5 other tests fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - bat-atsm-1:         NOTRUN -> [FAIL][7] +3 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_lmem_swapping@basic.html
    - bat-dg1-7:          NOTRUN -> [FAIL][8] +3 other tests fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_lmem_swapping@basic.html
    - bat-dg2-11:         NOTRUN -> [FAIL][9] +3 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adlm-1:         NOTRUN -> [FAIL][10] +4 other tests fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-dg2-9:          NOTRUN -> [FAIL][11] +3 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html
    - bat-dg2-8:          NOTRUN -> [FAIL][12] +3 other tests fail
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][13] -> [FAIL][14] +1 other test fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ilk-650/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@i915_module_load@load.html
    - bat-jsl-1:          [PASS][15] -> [FAIL][16] +1 other test fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][17] -> [FAIL][18] +1 other test fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-blb-e6850/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][19] -> [FAIL][20] +1 other test fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@i915_module_load@load.html
    - bat-jsl-3:          [PASS][21] -> [FAIL][22] +1 other test fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@i915_module_load@load.html
    - bat-adln-1:         [PASS][23] -> [FAIL][24] +1 other test fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][25] -> [FAIL][26] +1 other test fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-elk-e7500/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@i915_module_load@load.html
    - bat-adlm-1:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][29] -> [FAIL][30] +1 other test fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - bat-adlp-6:         [PASS][31] -> [FAIL][32] +1 other test fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@i915_module_load@reload.html
    - bat-mtlp-6:         [PASS][33] -> [FAIL][34] +1 other test fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][35] -> [FAIL][36] +1 other test fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-6600u/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][37] -> [FAIL][38] +1 other test fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-pnv-d510/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@i915_module_load@reload.html
    - bat-dg1-7:          [PASS][39] -> [FAIL][40] +1 other test fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@i915_module_load@reload.html
    - fi-glk-j4005:       [PASS][41] -> [FAIL][42] +1 other test fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-glk-j4005/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@i915_module_load@reload.html
    - bat-adlp-9:         [PASS][43] -> [FAIL][44] +1 other test fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][45] -> [FAIL][46] +1 other test fail
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-guc/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-guc/igt@i915_module_load@reload.html
    - bat-dg2-11:         [PASS][47] -> [FAIL][48] +1 other test fail
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@i915_module_load@reload.html
    - fi-kbl-7567u:       [PASS][49] -> [FAIL][50] +1 other test fail
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-7567u/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][51] -> [FAIL][52] +1 other test fail
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8700k/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][53] -> [FAIL][54] +1 other test fail
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-bsw-nick/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-bsw-nick/igt@i915_module_load@reload.html
    - bat-kbl-2:          [PASS][55] -> [FAIL][56] +1 other test fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-kbl-2/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-kbl-2/igt@i915_module_load@reload.html
    - bat-rplp-1:         [PASS][57] -> [FAIL][58] +1 other test fail
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@i915_module_load@reload.html
    - bat-atsm-1:         [PASS][59] -> [FAIL][60] +1 other test fail
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][61] -> [FAIL][62] +1 other test fail
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-guc/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-guc/igt@i915_module_load@reload.html
    - bat-dg2-9:          [PASS][63] -> [FAIL][64] +1 other test fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@i915_module_load@reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][65] -> [FAIL][66] +1 other test fail
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-x1275/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][67] -> [FAIL][68] +1 other test fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8109u/igt@i915_module_load@reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][69] -> [FAIL][70] +1 other test fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ivb-3770/igt@i915_module_load@reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ivb-3770/igt@i915_module_load@reload.html
    - bat-dg2-8:          [PASS][71] -> [FAIL][72] +1 other test fail
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@i915_module_load@reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][73] -> [FAIL][74] +1 other test fail
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@i915_module_load@reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-6:         [PASS][75] -> [SKIP][76] +4 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
    - fi-rkl-11600:       [PASS][77] -> [SKIP][78] +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-adln-1:         NOTRUN -> [SKIP][79] +12 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@i915_selftest@live.html
    - bat-dg2-8:          NOTRUN -> [SKIP][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-jsl-1:          NOTRUN -> [SKIP][81] +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@i915_selftest@live.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@i915_selftest@live.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@i915_selftest@live.html
    - bat-dg1-7:          NOTRUN -> [SKIP][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@i915_selftest@live.html
    - bat-adlp-9:         NOTRUN -> [SKIP][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@i915_selftest@live.html
    - bat-dg2-11:         NOTRUN -> [SKIP][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@i915_selftest@live.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@i915_selftest@live.html
    - bat-atsm-1:         NOTRUN -> [SKIP][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@i915_selftest@live.html
    - bat-dg2-9:          NOTRUN -> [SKIP][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@i915_selftest@live.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-jsl-1:          [PASS][90] -> [SKIP][91] +4 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@kms_frontbuffer_tracking@basic.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_frontbuffer_tracking@basic.html
    - bat-adlp-9:         [PASS][92] -> [SKIP][93] +4 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_frontbuffer_tracking@basic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlp-6:         NOTRUN -> [SKIP][94] +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html
    - bat-jsl-3:          NOTRUN -> [SKIP][95] +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-adln-1:         [PASS][96] -> [SKIP][97] +55 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-adlm-1:         NOTRUN -> [SKIP][98] +6 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-tgl-1115g4:      [PASS][99] -> [SKIP][100] +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-dg1-7:          [PASS][101] -> [SKIP][102] +4 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_pm_rpm@basic-rte.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_pm_rpm@basic-rte.html
    - bat-jsl-3:          [PASS][103] -> [SKIP][104] +4 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@debugfs_test@basic-hwmon:
    - bat-rplp-1:         [SKIP][105] ([i915#9318]) -> [SKIP][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@debugfs_test@basic-hwmon.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        [SKIP][107] ([fdo#109271]) -> [FAIL][108] +3 other tests fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
    - bat-jsl-3:          [SKIP][109] ([i915#4613]) -> [FAIL][110] +3 other tests fail
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@gem_lmem_swapping@basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html
    - fi-glk-j4005:       [SKIP][111] ([fdo#109271] / [i915#4613]) -> [FAIL][112] +3 other tests fail
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - bat-adlp-9:         [SKIP][113] ([i915#4613]) -> [FAIL][114] +3 other tests fail
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@gem_lmem_swapping@basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html
    - fi-skl-guc:         [SKIP][115] ([fdo#109271] / [i915#4613]) -> [FAIL][116] +3 other tests fail
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-guc/igt@gem_lmem_swapping@basic.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-7567u:       [SKIP][117] ([fdo#109271] / [i915#4613]) -> [FAIL][118] +3 other tests fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
    - bat-adln-1:         [SKIP][119] ([i915#4613]) -> [FAIL][120] +3 other tests fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@gem_lmem_swapping@basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@gem_lmem_swapping@basic.html
    - fi-cfl-8700k:       [SKIP][121] ([fdo#109271] / [i915#4613]) -> [FAIL][122] +3 other tests fail
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html
    - fi-elk-e7500:       [SKIP][123] ([fdo#109271]) -> [FAIL][124] +3 other tests fail
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-elk-e7500/igt@gem_lmem_swapping@basic.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        [SKIP][125] ([fdo#109271]) -> [FAIL][126] +3 other tests fail
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-kbl-2:          [SKIP][127] ([fdo#109271]) -> [FAIL][128] +3 other tests fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-rplp-1:         [SKIP][129] ([i915#4613]) -> [FAIL][130] +3 other tests fail
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-rkl-11600:       [SKIP][131] ([i915#4613]) -> [FAIL][132] +3 other tests fail
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-tgl-1115g4:      [SKIP][133] ([i915#4613]) -> [FAIL][134] +3 other tests fail
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-blb-e6850:       [SKIP][135] ([fdo#109271]) -> [FAIL][136] +3 other tests fail
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-blb-e6850/igt@gem_lmem_swapping@random-engines.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@gem_lmem_swapping@random-engines.html
    - bat-adlp-6:         [SKIP][137] ([i915#4613]) -> [FAIL][138] +3 other tests fail
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
    - fi-skl-6600u:       [SKIP][139] ([fdo#109271] / [i915#4613]) -> [FAIL][140] +3 other tests fail
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-guc:         [SKIP][141] ([fdo#109271] / [i915#4613]) -> [FAIL][142] +3 other tests fail
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
    - bat-mtlp-6:         [SKIP][143] ([i915#4613]) -> [FAIL][144] +3 other tests fail
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-x1275:       [SKIP][145] ([fdo#109271] / [i915#4613]) -> [FAIL][146] +3 other tests fail
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       [SKIP][147] ([fdo#109271] / [i915#4613]) -> [FAIL][148] +3 other tests fail
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
    - fi-ivb-3770:        [SKIP][149] ([fdo#109271]) -> [FAIL][150] +3 other tests fail
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html
    - fi-kbl-guc:         [SKIP][151] ([fdo#109271] / [i915#4613]) -> [FAIL][152] +3 other tests fail
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html
    - fi-ilk-650:         [SKIP][153] ([fdo#109271]) -> [FAIL][154] +3 other tests fail
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html
    - bat-jsl-1:          [SKIP][155] ([i915#4613]) -> [FAIL][156] +3 other tests fail
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-rplp-1:         [SKIP][157] ([i915#3282]) -> [SKIP][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@gem_tiled_pread_basic.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-rplp-1:         [SKIP][159] ([i915#6621]) -> [SKIP][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@i915_pm_rps@basic-api.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-adln-1:         [SKIP][161] ([i915#4213]) -> [SKIP][162] +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - bat-adln-1:         [SKIP][163] ([i915#3555] / [i915#3840]) -> [SKIP][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_dsc@dsc-basic.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_dsc@dsc-basic.html
    - bat-adlm-1:         [SKIP][165] ([i915#9875] / [i915#9900]) -> [SKIP][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@kms_dsc@dsc-basic.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_dsc@dsc-basic.html
    - bat-rplp-1:         [SKIP][167] ([i915#3555] / [i915#3840]) -> [SKIP][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_dsc@dsc-basic.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          [SKIP][169] ([i915#3555] / [i915#9886]) -> [SKIP][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@kms_dsc@dsc-basic.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html
    - bat-adlp-6:         [SKIP][171] ([i915#3555] / [i915#3840]) -> [SKIP][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@kms_dsc@dsc-basic.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_dsc@dsc-basic.html
    - bat-dg1-7:          [SKIP][173] ([i915#3555] / [i915#3840]) -> [SKIP][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_dsc@dsc-basic.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html
    - bat-jsl-3:          [SKIP][175] ([i915#3555] / [i915#9886]) -> [SKIP][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_dsc@dsc-basic.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_dsc@dsc-basic.html
    - bat-adlp-9:         [SKIP][177] ([i915#3555] / [i915#3840]) -> [SKIP][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_dsc@dsc-basic.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adln-1:         [SKIP][179] ([fdo#109285]) -> [SKIP][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-atsm-1:         [SKIP][181] ([i915#6078]) -> [SKIP][182] +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_pm_backlight@basic-brightness.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg1-7:          [SKIP][183] ([i915#5354]) -> [SKIP][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
    - bat-adlp-9:         [SKIP][185] ([i915#9812]) -> [SKIP][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adln-1:         [SKIP][187] ([i915#3555]) -> [SKIP][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-read:
    - bat-rplp-1:         [SKIP][189] ([i915#3708]) -> [SKIP][190] +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@prime_vgem@basic-read.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@prime_vgem@basic-read.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@basic:
    - {bat-dg2-14}:       NOTRUN -> [FAIL][191] +3 other tests fail
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-14/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - {bat-arls-1}:       [SKIP][192] ([i915#10213]) -> [FAIL][193] +3 other tests fail
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-arls-1/igt@gem_lmem_swapping@random-engines.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-arls-1/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_module_load@load:
    - {bat-arls-1}:       [PASS][194] -> [FAIL][195] +1 other test fail
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-arls-1/igt@i915_module_load@load.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-arls-1/igt@i915_module_load@load.html
    - {bat-dg2-13}:       [PASS][196] -> [FAIL][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-13/igt@i915_module_load@load.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-13/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - {bat-dg2-14}:       [PASS][198] -> [FAIL][199] +1 other test fail
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-14/igt@i915_module_load@reload.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-14/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - {bat-arls-1}:       NOTRUN -> [SKIP][200]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-arls-1/igt@i915_selftest@live.html
    - {bat-dg2-14}:       NOTRUN -> [SKIP][201]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-14/igt@i915_selftest@live.html

  * {igt@kms_psr@psr-cursor-plane-move}:
    - bat-adlp-6:         NOTRUN -> [SKIP][202] +3 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * {igt@kms_psr@psr-primary-page-flip}:
    - bat-dg1-7:          [SKIP][203] ([i915#9732]) -> [SKIP][204] +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html

  * {igt@kms_psr@psr-sprite-plane-onoff}:
    - bat-adlp-9:         [SKIP][205] ([i915#9673] / [i915#9732]) -> [SKIP][206] +3 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-rplp-1:         [SKIP][207] ([i915#9673] / [i915#9732]) -> [SKIP][208] +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-atsm-1:         [SKIP][209] ([i915#6078]) -> [SKIP][210] +3 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_psr@psr-sprite-plane-onoff.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-jsl-3:          NOTRUN -> [SKIP][211] +3 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-adln-1:         NOTRUN -> [SKIP][212] +3 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-adlm-1:         NOTRUN -> [SKIP][213] +3 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-jsl-1:          NOTRUN -> [SKIP][214] +3 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html

  
Known issues
------------

  Here are the changes found in Patchwork_129920v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-apl-guc:         [FAIL][215] ([i915#8293]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-apl-guc/boot.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-9:         [PASS][217] -> [SKIP][218] ([i915#2575]) +93 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@core_auth@basic-auth.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@core_auth@basic-auth.html

  * igt@core_hotunplug@unbind-rebind:
    - bat-mtlp-6:         [PASS][219] -> [SKIP][220] ([i915#9977])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html
    - bat-dg2-9:          [PASS][221] -> [SKIP][222] ([i915#10076])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
    - bat-dg2-11:         [PASS][223] -> [SKIP][224] ([i915#10076])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
    - bat-dg2-8:          [PASS][225] -> [SKIP][226] ([i915#10076])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [PASS][227] -> [SKIP][228] ([fdo#109271]) +93 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@info:
    - fi-ilk-650:         [PASS][229] -> [SKIP][230] ([fdo#109271] / [i915#1849])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ilk-650/igt@fbdev@info.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@fbdev@info.html
    - fi-blb-e6850:       [PASS][231] -> [SKIP][232] ([fdo#109271] / [i915#1849])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-blb-e6850/igt@fbdev@info.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@fbdev@info.html
    - fi-pnv-d510:        [PASS][233] -> [SKIP][234] ([fdo#109271] / [i915#1849])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-pnv-d510/igt@fbdev@info.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@fbdev@info.html
    - fi-elk-e7500:       [PASS][235] -> [SKIP][236] ([fdo#109271] / [i915#1849])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-elk-e7500/igt@fbdev@info.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@fbdev@info.html

  * igt@gem_basic@bad-close:
    - bat-adlp-6:         [PASS][237] -> [SKIP][238] ([i915#2575]) +93 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@gem_basic@bad-close.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@gem_basic@bad-close.html

  * igt@gem_basic@create-close:
    - fi-elk-e7500:       [PASS][239] -> [SKIP][240] ([fdo#109271]) +100 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-elk-e7500/igt@gem_basic@create-close.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@gem_basic@create-close.html
    - bat-dg2-8:          [PASS][241] -> [SKIP][242] ([i915#2575]) +73 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@gem_basic@create-close.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_basic@create-close.html
    - fi-bsw-nick:        [PASS][243] -> [SKIP][244] ([fdo#109271]) +99 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-bsw-nick/igt@gem_basic@create-close.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-bsw-nick/igt@gem_basic@create-close.html

  * igt@gem_busy@busy:
    - fi-elk-e7500:       NOTRUN -> [SKIP][245] ([fdo#109271]) +22 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@gem_busy@busy.html
    - bat-dg2-8:          NOTRUN -> [SKIP][246] ([i915#2575]) +21 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_busy@busy.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][247] ([fdo#109271]) +10 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@gem_busy@busy.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][248] ([fdo#109315] / [i915#2575]) +10 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@gem_busy@busy.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][249] ([i915#2575]) +9 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_busy@busy.html

  * igt@gem_ctx_create@basic-files:
    - bat-mtlp-6:         [PASS][250] -> [SKIP][251] ([i915#2575]) +36 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_ctx_create@basic-files.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_basic@basic:
    - fi-ilk-650:         NOTRUN -> [SKIP][252] ([fdo#109271]) +22 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@gem_exec_basic@basic.html

  * igt@gem_exec_fence@basic-await:
    - bat-adlp-6:         NOTRUN -> [SKIP][253] ([i915#2575]) +21 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-busy:
    - bat-dg2-9:          NOTRUN -> [SKIP][254] ([i915#2575]) +21 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_exec_fence@basic-busy.html

  * igt@gem_exec_fence@basic-wait:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][255] ([fdo#109271]) +22 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html
    - bat-adln-1:         NOTRUN -> [SKIP][256] ([i915#2575]) +10 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - bat-kbl-2:          NOTRUN -> [SKIP][257] ([fdo#109271]) +10 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-kbl-2/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_parallel@engines:
    - fi-skl-guc:         NOTRUN -> [SKIP][258] ([fdo#109271]) +22 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-guc/igt@gem_exec_parallel@engines.html
    - bat-dg2-11:         NOTRUN -> [SKIP][259] ([i915#2575]) +21 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_exec_parallel@engines.html

  * igt@gem_flink_basic@bad-flink:
    - bat-adln-1:         [PASS][260] -> [SKIP][261] ([i915#2575]) +42 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@gem_flink_basic@bad-flink.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@gem_flink_basic@bad-flink.html
    - fi-ivb-3770:        [PASS][262] -> [SKIP][263] ([fdo#109271]) +98 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ivb-3770/igt@gem_flink_basic@bad-flink.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ivb-3770/igt@gem_flink_basic@bad-flink.html

  * igt@gem_render_linear_blits@basic:
    - fi-rkl-11600:       [PASS][264] -> [SKIP][265] ([fdo#109315]) +43 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@gem_render_linear_blits@basic.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_render_linear_blits@basic.html

  * igt@gem_softpin@allocator-basic:
    - bat-dg2-11:         [PASS][266] -> [SKIP][267] ([i915#2575]) +73 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@gem_softpin@allocator-basic.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_softpin@allocator-basic.html

  * igt@gem_sync@basic-each:
    - bat-atsm-1:         [PASS][268] -> [SKIP][269] ([i915#2575]) +37 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@gem_sync@basic-each.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_sync@basic-each.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-guc:         [PASS][270] -> [SKIP][271] ([fdo#109271]) +95 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@gem_tiled_blits@basic.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-kbl-2:          [PASS][272] -> [SKIP][273] ([fdo#109271]) +94 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-kbl-2/igt@gem_tiled_pread_basic.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-kbl-2/igt@gem_tiled_pread_basic.html

  * igt@gem_wait@busy:
    - bat-atsm-1:         NOTRUN -> [SKIP][274] ([i915#2575]) +9 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_wait@busy.html
    - bat-dg1-7:          NOTRUN -> [SKIP][275] ([i915#2575]) +21 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_wait@busy.html
    - bat-jsl-3:          NOTRUN -> [SKIP][276] ([i915#2575]) +21 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@gem_wait@busy.html

  * igt@gem_wait@wait:
    - fi-rkl-11600:       NOTRUN -> [SKIP][277] ([fdo#109315]) +10 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_wait@wait.html

  * igt@i915_getparams_basic@basic-eu-total:
    - bat-dg1-7:          [PASS][278] -> [SKIP][279] ([i915#2575]) +76 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@i915_getparams_basic@basic-eu-total.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_pm_rpm@module-reload:
    - bat-atsm-1:         [PASS][280] -> [SKIP][281] ([i915#9980])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@i915_pm_rpm@module-reload.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@i915_pm_rpm@module-reload.html
    - bat-mtlp-6:         [PASS][282] -> [SKIP][283] ([i915#9980])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][284] ([fdo#109271]) +10 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@i915_selftest@live.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - bat-jsl-3:          [PASS][285] -> [SKIP][286] ([i915#2575]) +97 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html
    - fi-glk-j4005:       [PASS][287] -> [SKIP][288] ([fdo#109271]) +102 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - fi-tgl-1115g4:      [PASS][289] -> [SKIP][290] ([i915#2575]) +49 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-legacy:
    - bat-dg2-9:          [PASS][291] -> [SKIP][292] ([i915#2575] / [i915#5190]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
    - bat-dg2-11:         [PASS][293] -> [SKIP][294] ([i915#2575] / [i915#5190]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
    - bat-dg2-8:          [PASS][295] -> [SKIP][296] ([i915#2575] / [i915#5190]) +1 other test skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - fi-tgl-1115g4:      [PASS][297] -> [SKIP][298] ([fdo#111615] / [i915#2575])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - bat-adlm-1:         [PASS][299] -> [SKIP][300] ([i915#2575]) +75 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-blb-e6850:       [PASS][301] -> [SKIP][302] ([fdo#109271]) +94 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-rkl-11600:       [PASS][303] -> [SKIP][304] ([i915#2575]) +50 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-cfl-8109u:       [PASS][305] -> [SKIP][306] ([fdo#109271]) +102 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - bat-dg2-9:          [PASS][307] -> [SKIP][308] ([i915#2575]) +73 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@size-max:
    - fi-cfl-guc:         [PASS][309] -> [SKIP][310] ([fdo#109271]) +103 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-guc/igt@kms_addfb_basic@size-max.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-guc/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@small-bo:
    - fi-skl-6600u:       [PASS][311] -> [SKIP][312] ([fdo#109271]) +102 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8700k:       [PASS][313] -> [SKIP][314] ([fdo#109271]) +102 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8700k/igt@kms_addfb_basic@too-high.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@too-wide:
    - bat-mtlp-6:         [PASS][315] -> [SKIP][316] ([i915#2575] / [i915#9792]) +31 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_addfb_basic@too-wide.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_addfb_basic@too-wide.html

  * igt@kms_busy@basic:
    - fi-ivb-3770:        NOTRUN -> [SKIP][317] ([fdo#109271]) +22 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ivb-3770/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-rplp-1:         [PASS][318] -> [SKIP][319] ([i915#2575]) +50 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][320] ([fdo#109315])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_dsc@dsc-basic.html
    - bat-dg2-8:          NOTRUN -> [SKIP][321] ([fdo#109315])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-guc:         NOTRUN -> [SKIP][322] ([fdo#109271]) +22 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - bat-jsl-1:          NOTRUN -> [SKIP][323] ([i915#2575]) +21 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][324] ([fdo#109271]) +22 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][325] ([fdo#109271]) +22 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-dg2-8:          [PASS][326] -> [SKIP][327] ([fdo#109315])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html
    - bat-dg2-11:         [PASS][328] -> [SKIP][329] ([fdo#109315])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_frontbuffer_tracking@basic.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_frontbuffer_tracking@basic.html
    - bat-dg2-9:          [PASS][330] -> [SKIP][331] ([fdo#109315])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - fi-rkl-11600:       NOTRUN -> [SKIP][332] ([i915#2575]) +10 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][333] ([fdo#109271]) +23 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-adlm-1:         NOTRUN -> [SKIP][334] ([i915#2575]) +34 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html
    - bat-rplp-1:         NOTRUN -> [SKIP][335] ([i915#2575]) +10 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][336] ([i915#2575]) +10 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - fi-apl-guc:         NOTRUN -> [SKIP][337] ([fdo#109271]) +133 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-apl-guc/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][338] ([fdo#109271]) +22 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][339] ([fdo#109271]) +22 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][340] ([i915#2575]) +21 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][341] ([fdo#109271]) +22 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - fi-bsw-nick:        NOTRUN -> [SKIP][342] ([fdo#109271]) +22 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][343] -> [SKIP][344] ([fdo#109271]) +102 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-dg2-8:          [PASS][345] -> [SKIP][346] ([i915#9980]) +2 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-mtlp-6:         [PASS][347] -> [SKIP][348] ([i915#9792] / [i915#9980]) +1 other test skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-dg2-9:          [PASS][349] -> [SKIP][350] ([i915#9980]) +2 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_pm_rpm@basic-rte.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_pm_rpm@basic-rte.html
    - bat-dg2-11:         [PASS][351] -> [SKIP][352] ([i915#9980]) +2 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_pm_rpm@basic-rte.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_pm_rpm@basic-rte.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-ilk-650:         [PASS][353] -> [SKIP][354] ([fdo#109271]) +102 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html
    - bat-jsl-1:          [PASS][355] -> [SKIP][356] ([i915#2575]) +97 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@prime_self_import@basic-llseek-bad.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@prime_self_import@basic-llseek-bad.html
    - fi-tgl-1115g4:      [PASS][357] -> [SKIP][358] ([fdo#109315] / [i915#2575]) +47 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@prime_self_import@basic-llseek-bad.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@prime_self_import@basic-llseek-bad.html

  * igt@prime_vgem@basic-fence-mmap:
    - fi-pnv-d510:        [PASS][359] -> [SKIP][360] ([fdo#109271]) +94 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-read:
    - fi-skl-guc:         [PASS][361] -> [SKIP][362] ([fdo#109271]) +103 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-guc/igt@prime_vgem@basic-read.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-guc/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - fi-kbl-guc:         [SKIP][363] ([fdo#109271]) -> [PASS][364] +3 other tests pass
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@fbdev@eof.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-kbl-guc:         [SKIP][365] ([fdo#109271] / [i915#1849]) -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@fbdev@info.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@fbdev@info.html

  * igt@vgem_basic@unload:
    - {bat-arls-1}:       [DMESG-WARN][367] ([i915#10194]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-arls-1/igt@vgem_basic@unload.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-arls-1/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-9:         [SKIP][369] ([i915#9318]) -> [SKIP][370] ([i915#2575])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@debugfs_test@basic-hwmon.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@debugfs_test@basic-hwmon.html
    - bat-adlp-6:         [SKIP][371] ([i915#9318]) -> [SKIP][372] ([i915#2575])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@debugfs_test@basic-hwmon.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@debugfs_test@basic-hwmon.html
    - fi-rkl-11600:       [SKIP][373] ([i915#9318]) -> [SKIP][374] ([fdo#109315])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-3:          [SKIP][375] ([i915#9318]) -> [SKIP][376] ([i915#2575])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@debugfs_test@basic-hwmon.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html
    - bat-adln-1:         [SKIP][377] ([i915#9318]) -> [SKIP][378] ([i915#2575])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@debugfs_test@basic-hwmon.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@debugfs_test@basic-hwmon.html
    - bat-adlm-1:         [SKIP][379] ([i915#3826]) -> [SKIP][380] ([i915#2575])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@debugfs_test@basic-hwmon.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-1:          [SKIP][381] ([i915#9318]) -> [SKIP][382] ([i915#2575])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
    - fi-tgl-1115g4:      [SKIP][383] ([i915#9318]) -> [SKIP][384] ([fdo#109315] / [i915#2575])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html
    - bat-mtlp-6:         [SKIP][385] ([i915#9318]) -> [SKIP][386] ([i915#2575])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       [SKIP][387] ([fdo#109271] / [i915#2190]) -> [SKIP][388] ([fdo#109271])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       [SKIP][389] ([fdo#109271] / [i915#2190]) -> [SKIP][390] ([fdo#109271])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-1115g4:      [SKIP][391] ([i915#2190]) -> [SKIP][392] ([fdo#109315] / [i915#2575])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          [SKIP][393] ([i915#2190]) -> [SKIP][394] ([i915#2575])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       [SKIP][395] ([fdo#109271] / [i915#2190]) -> [SKIP][396] ([fdo#109271])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       [SKIP][397] ([i915#2190]) -> [SKIP][398] ([fdo#109315])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       [SKIP][399] ([fdo#109271] / [i915#2190]) -> [SKIP][400] ([fdo#109271])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-3:          [SKIP][401] ([i915#2190]) -> [SKIP][402] ([i915#2575])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@gem_huc_copy@huc-copy.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       [SKIP][403] ([fdo#109271] / [i915#2190]) -> [SKIP][404] ([fdo#109271])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       [SKIP][405] ([fdo#109271] / [i915#2190]) -> [SKIP][406] ([fdo#109271])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap@basic:
    - bat-atsm-1:         [SKIP][407] ([i915#4083]) -> [SKIP][408] ([i915#2575])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@gem_mmap@basic.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_mmap@basic.html
    - bat-dg1-7:          [SKIP][409] ([i915#4083]) -> [SKIP][410] ([i915#2575])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@gem_mmap@basic.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_mmap@basic.html
    - bat-dg2-9:          [SKIP][411] ([i915#4083]) -> [SKIP][412] ([i915#2575])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@gem_mmap@basic.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_mmap@basic.html
    - bat-dg2-11:         [SKIP][413] ([i915#4083]) -> [SKIP][414] ([i915#2575])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@gem_mmap@basic.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_mmap@basic.html
    - bat-dg2-8:          [SKIP][415] ([i915#4083]) -> [SKIP][416] ([i915#2575])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@gem_mmap@basic.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_mmap@basic.html
    - bat-mtlp-6:         [SKIP][417] ([i915#4083]) -> [SKIP][418] ([i915#2575])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_mmap@basic.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-9:          [SKIP][419] ([i915#4077]) -> [SKIP][420] ([i915#2575]) +2 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@gem_mmap_gtt@basic.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html
    - bat-dg2-8:          [SKIP][421] ([i915#4077]) -> [SKIP][422] ([i915#2575]) +2 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@gem_mmap_gtt@basic.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg2-9:          [SKIP][423] ([i915#4079]) -> [SKIP][424] ([i915#2575]) +1 other test skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@gem_render_tiled_blits@basic.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-mtlp-6:         [SKIP][425] ([i915#4077]) -> [SKIP][426] ([i915#2575]) +2 other tests skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_tiled_blits@basic.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-atsm-1:         [SKIP][427] ([i915#4077]) -> [SKIP][428] ([i915#2575]) +2 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html
    - bat-dg1-7:          [SKIP][429] ([i915#4077]) -> [SKIP][430] ([i915#2575]) +2 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
    - bat-dg2-11:         [SKIP][431] ([i915#4077]) -> [SKIP][432] ([i915#2575]) +2 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-6:         [SKIP][433] ([i915#3282]) -> [SKIP][434] ([i915#2575])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@gem_tiled_pread_basic.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@gem_tiled_pread_basic.html
    - fi-rkl-11600:       [SKIP][435] ([i915#3282]) -> [SKIP][436] ([fdo#109315])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@gem_tiled_pread_basic.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html
    - bat-atsm-1:         [SKIP][437] ([i915#4079]) -> [SKIP][438] ([i915#2575]) +1 other test skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@gem_tiled_pread_basic.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_tiled_pread_basic.html
    - bat-dg1-7:          [SKIP][439] ([i915#4079]) -> [SKIP][440] ([i915#2575]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@gem_tiled_pread_basic.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_tiled_pread_basic.html
    - bat-adlp-9:         [SKIP][441] ([i915#3282]) -> [SKIP][442] ([i915#2575])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@gem_tiled_pread_basic.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@gem_tiled_pread_basic.html
    - bat-dg2-11:         [SKIP][443] ([i915#4079]) -> [SKIP][444] ([i915#2575]) +1 other test skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@gem_tiled_pread_basic.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_tiled_pread_basic.html
    - bat-adln-1:         [SKIP][445] ([i915#3282]) -> [SKIP][446] ([i915#2575])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@gem_tiled_pread_basic.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@gem_tiled_pread_basic.html
    - bat-dg2-8:          [SKIP][447] ([i915#4079]) -> [SKIP][448] ([i915#2575]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@gem_tiled_pread_basic.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_tiled_pread_basic.html
    - bat-adlm-1:         [SKIP][449] ([i915#3282]) -> [SKIP][450] ([i915#2575])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@gem_tiled_pread_basic.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@gem_tiled_pread_basic.html
    - bat-mtlp-6:         [SKIP][451] ([i915#4079]) -> [SKIP][452] ([i915#2575]) +1 other test skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_tiled_pread_basic.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          [SKIP][453] ([i915#6621]) -> [SKIP][454] ([i915#2575])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@i915_pm_rps@basic-api.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-adlp-9:         [SKIP][455] ([i915#6621]) -> [SKIP][456] ([i915#2575])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@i915_pm_rps@basic-api.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@i915_pm_rps@basic-api.html
    - bat-adlp-6:         [SKIP][457] ([i915#6621]) -> [SKIP][458] ([i915#2575])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@i915_pm_rps@basic-api.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html
    - bat-atsm-1:         [SKIP][459] ([i915#6621]) -> [SKIP][460] ([i915#2575])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@i915_pm_rps@basic-api.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html
    - bat-dg2-9:          [SKIP][461] ([i915#6621]) -> [SKIP][462] ([i915#2575])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@i915_pm_rps@basic-api.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-11:         [SKIP][463] ([i915#6621]) -> [SKIP][464] ([i915#2575])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html
    - bat-adln-1:         [SKIP][465] ([i915#6621]) -> [SKIP][466] ([i915#2575])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@i915_pm_rps@basic-api.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          [SKIP][467] ([i915#6621]) -> [SKIP][468] ([i915#2575])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@i915_pm_rps@basic-api.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html
    - bat-mtlp-6:         [SKIP][469] ([i915#6621]) -> [SKIP][470] ([i915#2575])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@i915_pm_rps@basic-api.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-mtlp-6:         [SKIP][471] ([i915#4212] / [i915#9792]) -> [SKIP][472] ([i915#2575] / [i915#9792]) +8 other tests skip
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - bat-dg1-7:          [SKIP][473] ([i915#4212]) -> [SKIP][474] ([i915#2575]) +7 other tests skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
    - bat-dg2-11:         [SKIP][475] ([i915#4212]) -> [SKIP][476] ([i915#2575]) +7 other tests skip
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          [SKIP][477] ([i915#5190]) -> [SKIP][478] ([i915#2575] / [i915#5190])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-8:          [SKIP][479] ([i915#5190]) -> [SKIP][480] ([i915#2575] / [i915#5190])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-6:         [SKIP][481] ([i915#5190] / [i915#9792]) -> [SKIP][482] ([i915#2575] / [i915#9792])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-11:         [SKIP][483] ([i915#5190]) -> [SKIP][484] ([i915#2575] / [i915#5190])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          [SKIP][485] ([i915#4215] / [i915#5190]) -> [SKIP][486] ([i915#2575] / [i915#5190])
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-8:          [SKIP][487] ([i915#4215] / [i915#5190]) -> [SKIP][488] ([i915#2575] / [i915#5190])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-7:          [SKIP][489] ([i915#4215]) -> [SKIP][490] ([i915#2575])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-11:         [SKIP][491] ([i915#4215] / [i915#5190]) -> [SKIP][492] ([i915#2575] / [i915#5190])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          [SKIP][493] ([i915#4212]) -> [SKIP][494] ([i915#2575]) +7 other tests skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - bat-dg2-8:          [SKIP][495] ([i915#4212]) -> [SKIP][496] ([i915#2575]) +7 other tests skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@size-max:
    - bat-atsm-1:         [SKIP][497] ([i915#6077]) -> [SKIP][498] ([i915#2575]) +37 other tests skip
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_addfb_basic@size-max.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-adlp-9:         [SKIP][499] ([i915#4103]) -> [SKIP][500] ([i915#2575]) +1 other test skip
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-dg2-11:         [SKIP][501] ([i915#4103] / [i915#4213]) -> [SKIP][502] ([i915#2575]) +1 other test skip
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-tgl-1115g4:      [SKIP][503] ([i915#4103]) -> [SKIP][504] ([i915#2575]) +1 other test skip
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-rplp-1:         [SKIP][505] ([i915#4103] / [i915#4213]) -> [SKIP][506] ([i915#2575]) +1 other test skip
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-rkl-11600:       [SKIP][507] ([i915#4103]) -> [SKIP][508] ([i915#2575]) +1 other test skip
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-3:          [SKIP][509] ([i915#4103]) -> [SKIP][510] ([i915#2575]) +1 other test skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg2-9:          [SKIP][511] ([i915#4103] / [i915#4213]) -> [SKIP][512] ([i915#2575]) +1 other test skip
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg2-8:          [SKIP][513] ([i915#4103] / [i915#4213]) -> [SKIP][514] ([i915#2575]) +1 other test skip
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-1:          [SKIP][515] ([i915#4103]) -> [SKIP][516] ([i915#2575]) +1 other test skip
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adlp-6:         [SKIP][517] ([i915#4103]) -> [SKIP][518] ([i915#2575]) +1 other test skip
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-dg1-7:          [SKIP][519] ([i915#4103] / [i915#4213]) -> [SKIP][520] ([i915#2575]) +1 other test skip
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-atsm-1:         [SKIP][521] ([i915#6078]) -> [SKIP][522] ([i915#2575]) +12 other tests skip
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-mtlp-6:         [SKIP][523] ([i915#9792]) -> [SKIP][524] ([i915#2575] / [i915#9792]) +16 other tests skip
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-adlm-1:         [SKIP][525] ([i915#9875] / [i915#9900]) -> [SKIP][526] ([i915#2575]) +8 other tests skip
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg2-11:         [SKIP][527] ([i915#3555] / [i915#3840]) -> [SKIP][528] ([fdo#109315])
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_dsc@dsc-basic.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_dsc@dsc-basic.html
    - fi-rkl-11600:       [SKIP][529] ([i915#3555] / [i915#3840]) -> [SKIP][530] ([fdo#109315])
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@kms_dsc@dsc-basic.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_dsc@dsc-basic.html
    - fi-tgl-1115g4:      [SKIP][531] ([i915#3555] / [i915#3840]) -> [SKIP][532] ([fdo#109315] / [i915#2575])
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-mtlp-6:         [SKIP][533] ([i915#3637] / [i915#9792]) -> [SKIP][534] ([i915#2575] / [i915#9792]) +3 other tests skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-plain-flip:
    - bat-adlm-1:         [SKIP][535] ([i915#3637]) -> [SKIP][536] ([i915#2575]) +3 other tests skip
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@kms_flip@basic-plain-flip.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rplp-1:         [SKIP][537] ([fdo#109285]) -> [SKIP][538] ([i915#2575])
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
    - fi-rkl-11600:       [SKIP][539] ([fdo#109285]) -> [SKIP][540] ([i915#2575])
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-1115g4:      [SKIP][541] ([fdo#109285]) -> [SKIP][542] ([i915#2575])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
    - bat-mtlp-6:         [SKIP][543] ([fdo#109285] / [i915#9792]) -> [SKIP][544] ([i915#2575] / [i915#9792])
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-3:          [SKIP][545] ([fdo#109285]) -> [SKIP][546] ([i915#2575])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-9:          [SKIP][547] ([fdo#109285]) -> [SKIP][548] ([i915#2575])
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-8:          [SKIP][549] ([fdo#109285]) -> [SKIP][550] ([i915#2575])
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-1:          [SKIP][551] ([fdo#109285]) -> [SKIP][552] ([i915#2575])
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-6:         [SKIP][553] ([fdo#109285]) -> [SKIP][554] ([i915#2575])
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-7:          [SKIP][555] ([fdo#109285]) -> [SKIP][556] ([i915#2575])
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-9:         [SKIP][557] ([fdo#109285]) -> [SKIP][558] ([i915#2575])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg2-11:         [SKIP][559] ([fdo#109285]) -> [SKIP][560] ([i915#2575])
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-atsm-1:         [SKIP][561] ([i915#6093]) -> [SKIP][562] ([i915#2575]) +4 other tests skip
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-9:          [SKIP][563] ([i915#5274]) -> [SKIP][564] ([i915#2575])
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-11:         [SKIP][565] ([i915#5274]) -> [SKIP][566] ([i915#2575])
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-8:          [SKIP][567] ([i915#5274]) -> [SKIP][568] ([i915#2575])
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-mtlp-6:         [SKIP][569] ([i915#5274] / [i915#9792]) -> [SKIP][570] ([i915#2575] / [i915#9792])
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         [SKIP][571] ([i915#4342] / [i915#5354] / [i915#9792]) -> [SKIP][572] ([i915#2575] / [i915#9792])
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-7:          [SKIP][573] ([i915#433]) -> [SKIP][574] ([i915#2575])
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - bat-atsm-1:         [SKIP][575] ([i915#1836]) -> [SKIP][576] ([i915#2575]) +6 other tests skip
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_pm_backlight@basic-brightness:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/index.html

--===============8660998861563208132==
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
<tr><td><b>Series:</b></td><td>Add support for getting EDID over ACPI to DRM</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129920/">https://patchwork.freedesktop.org/series/129920/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14274 -&gt; Patchwork_129920v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129920v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129920v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129920v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@gem_exec_fence@basic-wait.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@gem_linear_blits@basic.html">SKIP</a> +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">FAIL</a> +5 other tests fail</li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@i915_module_load@load.html">FAIL</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-glk-j4005/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-guc/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-bsw-nick/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-kbl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-kbl-2/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-guc/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-x1275/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ivb-3770/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a> +4 other tests skip</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@i915_selftest@live.html">SKIP</a> +12 other tests skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@i915_selftest@live.html">SKIP</a> +1 other test skip</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@i915_selftest@live.html">SKIP</a></li>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@i915_selftest@live.html">SKIP</a></li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@i915_selftest@live.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> +4 other tests skip</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +1 other test skip</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +55 other tests skip</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +6 other tests skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +4 other tests skip</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-elk-e7500/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-blb-e6850/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@gem_lmem_swapping@random-engines.html">FAIL</a> +3 other tests fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">FAIL</a> +3 other tests fail</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ivb-3770/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@gem_tiled_pread_basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#9875] / [i915#9900]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#9886]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#9886]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#6078]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +2 other tests skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#9812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>{bat-dg2-14}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-14/igt@gem_lmem_swapping@basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-arls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#10213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-arls-1/igt@gem_lmem_swapping@random-engines.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-arls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-arls-1/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-13/igt@i915_module_load@load.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-14/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-14/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>{bat-arls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-arls-1/igt@i915_selftest@live.html">SKIP</a></li>
<li>{bat-dg2-14}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-14/igt@i915_selftest@live.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr-cursor-plane-move}:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr-primary-page-flip}:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> ([i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr-sprite-plane-onoff}:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> ([i915#9673] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> ([i915#9673] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> ([i915#6078]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129920v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-apl-guc/boot.html">FAIL</a> ([i915#8293]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-apl-guc/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@core_auth@basic-auth.html">SKIP</a> ([i915#2575]) +93 other tests skip</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html">SKIP</a> ([i915#9977])</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">SKIP</a> ([i915#10076])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">SKIP</a> ([i915#10076])</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html">SKIP</a> ([i915#10076])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">SKIP</a> ([fdo#109271]) +93 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ilk-650/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@fbdev@info.html">SKIP</a> ([fdo#109271] / [i915#1849])</li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-blb-e6850/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@fbdev@info.html">SKIP</a> ([fdo#109271] / [i915#1849])</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-pnv-d510/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@fbdev@info.html">SKIP</a> ([fdo#109271] / [i915#1849])</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-elk-e7500/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@fbdev@info.html">SKIP</a> ([fdo#109271] / [i915#1849])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@gem_basic@bad-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@gem_basic@bad-close.html">SKIP</a> ([i915#2575]) +93 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-elk-e7500/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@gem_basic@create-close.html">SKIP</a> ([fdo#109271]) +100 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_basic@create-close.html">SKIP</a> ([i915#2575]) +73 other tests skip</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-bsw-nick/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-bsw-nick/igt@gem_basic@create-close.html">SKIP</a> ([fdo#109271]) +99 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-elk-e7500/igt@gem_busy@busy.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_busy@busy.html">SKIP</a> ([i915#2575]) +21 other tests skip</li>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@gem_busy@busy.html">SKIP</a> ([fdo#109271]) +10 other tests skip</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@gem_busy@busy.html">SKIP</a> ([fdo#109315] / [i915#2575]) +10 other tests skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_busy@busy.html">SKIP</a> ([i915#2575]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_ctx_create@basic-files.html">SKIP</a> ([i915#2575]) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@gem_exec_basic@basic.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@gem_exec_fence@basic-await.html">SKIP</a> ([i915#2575]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_exec_fence@basic-busy.html">SKIP</a> ([i915#2575]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@gem_exec_fence@basic-wait.html">SKIP</a> ([i915#2575]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-kbl-2/igt@gem_exec_fence@nb-await.html">SKIP</a> ([fdo#109271]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-guc/igt@gem_exec_parallel@engines.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_exec_parallel@engines.html">SKIP</a> ([i915#2575]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@gem_flink_basic@bad-flink.html">SKIP</a> ([i915#2575]) +42 other tests skip</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ivb-3770/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ivb-3770/igt@gem_flink_basic@bad-flink.html">SKIP</a> ([fdo#109271]) +98 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_render_linear_blits@basic.html">SKIP</a> ([fdo#109315]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_softpin@allocator-basic.html">SKIP</a> ([i915#2575]) +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_sync@basic-each.html">SKIP</a> ([i915#2575]) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@gem_tiled_blits@basic.html">SKIP</a> ([fdo#109271]) +95 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-kbl-2/igt@gem_tiled_pread_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-kbl-2/igt@gem_tiled_pread_basic.html">SKIP</a> ([fdo#109271]) +94 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_wait@busy.html">SKIP</a> ([i915#2575]) +9 other tests skip</li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_wait@busy.html">SKIP</a> ([i915#2575]) +21 other tests skip</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@gem_wait@busy.html">SKIP</a> ([i915#2575]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_wait@wait.html">SKIP</a> ([fdo#109315]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@i915_getparams_basic@basic-eu-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@i915_getparams_basic@basic-eu-total.html">SKIP</a> ([i915#2575]) +76 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#9980])</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#9980])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@i915_selftest@live.html">SKIP</a> ([fdo#109271]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_addfb_basic@addfb25-bad-modifier.html">SKIP</a> ([i915#2575]) +97 other tests skip</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">SKIP</a> ([fdo#109271]) +102 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#2575]) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 other test skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 other test skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">SKIP</a> ([fdo#111615] / [i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-63:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html">SKIP</a> ([i915#2575]) +75 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> ([fdo#109271]) +94 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#2575]) +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> ([fdo#109271]) +102 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">SKIP</a> ([i915#2575]) +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-guc/igt@kms_addfb_basic@size-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-guc/igt@kms_addfb_basic@size-max.html">SKIP</a> ([fdo#109271]) +103 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@small-bo:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">SKIP</a> ([fdo#109271]) +102 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8700k/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@kms_addfb_basic@too-high.html">SKIP</a> ([fdo#109271]) +102 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-wide:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_addfb_basic@too-wide.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_addfb_basic@too-wide.html">SKIP</a> ([i915#2575] / [i915#9792]) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ivb-3770/igt@kms_busy@basic.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> ([i915#2575]) +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_dsc@dsc-basic.html">SKIP</a> ([fdo#109315])</li>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_dsc@dsc-basic.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> ([i915#2575]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-blb-e6850/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> ([fdo#109315])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> ([fdo#109315])</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> ([i915#2575]) +10 other tests skip</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> ([fdo#109271]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> ([i915#2575]) +34 other tests skip</li>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> ([i915#2575]) +10 other tests skip</li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> ([i915#2575]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-apl-guc/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> ([fdo#109271]) +133 other tests skip</li>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> ([i915#2575]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> ([fdo#109271]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([fdo#109271]) +102 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([i915#9980]) +2 other tests skip</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([i915#9792] / [i915#9980]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_pm_rpm@basic-rte.html">SKIP</a> ([i915#9980]) +2 other tests skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_pm_rpm@basic-rte.html">SKIP</a> ([i915#9980]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-llseek-bad:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html">SKIP</a> ([fdo#109271]) +102 other tests skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@prime_self_import@basic-llseek-bad.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@prime_self_import@basic-llseek-bad.html">SKIP</a> ([i915#2575]) +97 other tests skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@prime_self_import@basic-llseek-bad.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@prime_self_import@basic-llseek-bad.html">SKIP</a> ([fdo#109315] / [i915#2575]) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> ([fdo#109271]) +94 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-guc/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-guc/igt@prime_vgem@basic-read.html">SKIP</a> ([fdo#109271]) +103 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@fbdev@eof.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@fbdev@eof.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-guc/igt@fbdev@info.html">SKIP</a> ([fdo#109271] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-guc/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-arls-1/igt@vgem_basic@unload.html">DMESG-WARN</a> ([i915#10194]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-arls-1/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([fdo#109315])</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#3826]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([fdo#109315] / [i915#2575])</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109315] / [i915#2575])</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2575])</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109315])</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2575])</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_mmap@basic.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_mmap@basic.html">SKIP</a> ([i915#2575])</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_mmap@basic.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@gem_mmap_gtt@basic.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_tiled_blits@basic.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575])</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> ([fdo#109315])</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575])</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adln-1/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adln-1/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#4212] / [i915#9792]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#9792]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#2575]) +7 other tests skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#2575]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#5190] / [i915#9792]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#2575] / [i915#9792])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#2575]) +7 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#2575]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> ([i915#6077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> ([i915#2575]) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> ([i915#6078]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> ([i915#2575]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> ([i915#9792]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> ([i915#2575] / [i915#9792]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> ([i915#9875] / [i915#9900]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> ([i915#2575]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> ([fdo#109315])</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_dsc@dsc-basic.html">SKIP</a> ([fdo#109315])</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html">SKIP</a> ([fdo#109315] / [i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> ([i915#3637] / [i915#9792]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> ([i915#2575] / [i915#9792]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlm-1/igt@kms_flip@basic-plain-flip.html">SKIP</a> ([i915#3637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlm-1/igt@kms_flip@basic-plain-flip.html">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285] / [i915#9792]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575] / [i915#9792])</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#6093]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#2575]) +4 other tests skip</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#5274]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#5274]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#2575])</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#5274]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#2575])</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#5274] / [i915#9792]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#2575] / [i915#9792])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> ([i915#4342] / [i915#5354] / [i915#9792]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> ([i915#2575] / [i915#9792])</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#433]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14274/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> ([i915#1836]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129920v1/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> ([i915#2575]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
</li>
</ul>

</body>
</html>

--===============8660998861563208132==--
