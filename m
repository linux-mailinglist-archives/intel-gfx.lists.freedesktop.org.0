Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7F7CC5355
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 22:27:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85DAD10E98F;
	Tue, 16 Dec 2025 21:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1721C10E98D;
 Tue, 16 Dec 2025 21:27:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0769962106109023629=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Dec 2025 21:27:40 -0000
Message-ID: <176592046008.95338.13693566461161888623@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251216092226.1777909-18-dev@lankhorst.se>
In-Reply-To: <20251216092226.1777909-18-dev@lankhorst.se>
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

--===============0769962106109023629==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev3)
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17693 -> Patchwork_159035v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_159035v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159035v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/index.html

Participating hosts (42 -> 40)
------------------------------

  Additional (1): bat-adls-6 
  Missing    (3): bat-dg2-13 fi-snb-2520m fi-skl-6600u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159035v3:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests:
    - fi-ilk-650:         [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-ilk-650/igt@dmabuf@all-tests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-ilk-650/igt@dmabuf@all-tests.html

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-bsw-n3050/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-pnv-d510/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-hsw-4770/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-hsw-4770/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - fi-ivb-3770:        [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-ivb-3770/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-ivb-3770/igt@i915_selftest@live.html
    - bat-mtlp-8:         [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-mtlp-8/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-8:          [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-8/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-8/igt@i915_selftest@live.html
    - bat-adls-6:         NOTRUN -> [ABORT][15] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@i915_selftest@live.html
    - bat-jsl-1:          [PASS][16] -> [ABORT][17] +1 other test abort
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-jsl-1/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-jsl-1/igt@i915_selftest@live.html
    - bat-arlh-3:         [PASS][18] -> [ABORT][19] +1 other test abort
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-arlh-3/igt@i915_selftest@live.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-arlh-3/igt@i915_selftest@live.html
    - bat-dg1-7:          [PASS][20] -> [ABORT][21] +1 other test abort
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg1-7/igt@i915_selftest@live.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg1-7/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][22] -> [ABORT][23] +1 other test abort
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-twl-1/igt@i915_selftest@live.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-twl-1/igt@i915_selftest@live.html
    - bat-arls-5:         [PASS][24] -> [ABORT][25] +1 other test abort
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-arls-5/igt@i915_selftest@live.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-arls-5/igt@i915_selftest@live.html
    - bat-rplp-1:         [PASS][26] -> [INCOMPLETE][27] +1 other test incomplete
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-rplp-1/igt@i915_selftest@live.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-rplp-1/igt@i915_selftest@live.html
    - bat-arlh-2:         [PASS][28] -> [ABORT][29] +1 other test abort
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-arlh-2/igt@i915_selftest@live.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-arlh-2/igt@i915_selftest@live.html
    - bat-adlp-11:        [PASS][30] -> [ABORT][31] +1 other test abort
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-adlp-11/igt@i915_selftest@live.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adlp-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][32] -> [ABORT][33] +1 other test abort
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
    - bat-adlp-6:         [PASS][34] -> [ABORT][35] +1 other test abort
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-adlp-6/igt@i915_selftest@live@gt_engines.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adlp-6/igt@i915_selftest@live@gt_engines.html
    - bat-twl-2:          [PASS][36] -> [ABORT][37] +1 other test abort
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-twl-2/igt@i915_selftest@live@gt_engines.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-twl-2/igt@i915_selftest@live@gt_engines.html
    - bat-dg2-11:         [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-11/igt@i915_selftest@live@gt_engines.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-11/igt@i915_selftest@live@gt_engines.html
    - bat-dg2-14:         [PASS][40] -> [ABORT][41] +1 other test abort
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-14/igt@i915_selftest@live@gt_engines.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-14/igt@i915_selftest@live@gt_engines.html
    - bat-atsm-1:         [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-atsm-1/igt@i915_selftest@live@gt_engines.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-atsm-1/igt@i915_selftest@live@gt_engines.html
    - bat-mtlp-9:         [PASS][44] -> [ABORT][45] +1 other test abort
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-mtlp-9/igt@i915_selftest@live@gt_engines.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-mtlp-9/igt@i915_selftest@live@gt_engines.html
    - bat-arls-6:         [PASS][46] -> [ABORT][47] +1 other test abort
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-arls-6/igt@i915_selftest@live@gt_engines.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-arls-6/igt@i915_selftest@live@gt_engines.html
    - bat-adlp-9:         [PASS][48] -> [ABORT][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-adlp-9/igt@i915_selftest@live@gt_engines.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adlp-9/igt@i915_selftest@live@gt_engines.html
    - bat-dg2-9:          [PASS][50] -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-9/igt@i915_selftest@live@gt_engines.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-9/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@workarounds:
    - fi-glk-j4005:       [PASS][52] -> [ABORT][53] +1 other test abort
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-glk-j4005/igt@i915_selftest@live@workarounds.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-glk-j4005/igt@i915_selftest@live@workarounds.html
    - bat-rpls-4:         [PASS][54] -> [ABORT][55] +1 other test abort
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-rpls-4/igt@i915_selftest@live@workarounds.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-rpls-4/igt@i915_selftest@live@workarounds.html
    - fi-kbl-7567u:       [PASS][56] -> [ABORT][57] +1 other test abort
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html
    - bat-jsl-5:          [PASS][58] -> [ABORT][59] +1 other test abort
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-jsl-5/igt@i915_selftest@live@workarounds.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-jsl-5/igt@i915_selftest@live@workarounds.html
    - bat-apl-1:          [PASS][60] -> [ABORT][61] +1 other test abort
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-apl-1/igt@i915_selftest@live@workarounds.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-apl-1/igt@i915_selftest@live@workarounds.html
    - fi-rkl-11600:       [PASS][62] -> [ABORT][63] +1 other test abort
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-rkl-11600/igt@i915_selftest@live@workarounds.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-rkl-11600/igt@i915_selftest@live@workarounds.html
    - fi-cfl-guc:         [PASS][64] -> [ABORT][65] +1 other test abort
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
    - fi-kbl-x1275:       [PASS][66] -> [ABORT][67] +1 other test abort
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
    - fi-kbl-8809g:       [PASS][68] -> [ABORT][69] +1 other test abort
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
    - fi-tgl-1115g4:      [PASS][70] -> [ABORT][71] +1 other test abort
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8700k:       [PASS][72] -> [ABORT][73] +1 other test abort
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
    - bat-kbl-2:          [PASS][74] -> [ABORT][75] +1 other test abort
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-kbl-2/igt@i915_selftest@live@workarounds.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-kbl-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-bsw-nick:        [PASS][76] -> [ABORT][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-dg2-9:          [DMESG-FAIL][78] ([i915#12061]) -> [ABORT][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-9/igt@i915_selftest@live.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-9/igt@i915_selftest@live.html
    - bat-dg2-11:         [DMESG-FAIL][80] ([i915#12061]) -> [ABORT][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-11/igt@i915_selftest@live.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-11/igt@i915_selftest@live.html
    - bat-atsm-1:         [DMESG-FAIL][82] ([i915#12061] / [i915#14204]) -> [ABORT][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-atsm-1/igt@i915_selftest@live.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-atsm-1/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_159035v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adls-6:         NOTRUN -> [SKIP][84] ([i915#4613]) +3 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-adls-6:         NOTRUN -> [SKIP][85] ([i915#3282])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live:
    - bat-adlp-9:         [PASS][86] -> [ABORT][87] ([i915#14365])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-adlp-9/igt@i915_selftest@live.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adlp-9/igt@i915_selftest@live.html

  * igt@intel_hwmon@hwmon-read:
    - bat-adls-6:         NOTRUN -> [SKIP][88] ([i915#7707]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@intel_hwmon@hwmon-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adls-6:         NOTRUN -> [SKIP][89] ([i915#4103]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-adls-6:         NOTRUN -> [SKIP][90] ([i915#3555] / [i915#3840])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adls-6:         NOTRUN -> [SKIP][91]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adls-6:         NOTRUN -> [SKIP][92] ([i915#5354])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-adls-6:         NOTRUN -> [SKIP][93] ([i915#1072] / [i915#9732]) +3 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adls-6:         NOTRUN -> [SKIP][94] ([i915#3555])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adls-6:         NOTRUN -> [SKIP][95] ([i915#3291]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [DMESG-FAIL][96] ([i915#12061]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         [DMESG-FAIL][98] ([i915#12061]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_17693 -> Patchwork_159035v3

  CI-20190529: 20190529
  CI_DRM_17693: 72428bdb20b6c86beaeddb9d69bf698d0697aa41 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8667: 2d7ec9a36c550c48af4bdd6e748f6753369ab8ff @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_159035v3: 72428bdb20b6c86beaeddb9d69bf698d0697aa41 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/index.html

--===============0769962106109023629==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159035/">https://patchwork.freedesktop.org/series/159035/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17693 -&gt; Patchwork_159035v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_159035v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_159035v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Additional (1): bat-adls-6 <br />
  Missing    (3): bat-dg2-13 fi-snb-2520m fi-skl-6600u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_159035v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-ilk-650/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-ilk-650/igt@dmabuf@all-tests.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-ivb-3770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-ivb-3770/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-jsl-1/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg1-7/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg1-7/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-arls-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-arls-5/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-rplp-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-rplp-1/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adlp-11/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-adlp-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adlp-6/igt@i915_selftest@live@gt_engines.html">ABORT</a> +1 other test abort</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-twl-2/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-twl-2/igt@i915_selftest@live@gt_engines.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-11/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-11/igt@i915_selftest@live@gt_engines.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-14/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-14/igt@i915_selftest@live@gt_engines.html">ABORT</a> +1 other test abort</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-mtlp-9/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-mtlp-9/igt@i915_selftest@live@gt_engines.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-arls-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-arls-6/igt@i915_selftest@live@gt_engines.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-adlp-9/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adlp-9/igt@i915_selftest@live@gt_engines.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-9/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-9/igt@i915_selftest@live@gt_engines.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-glk-j4005/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-glk-j4005/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-rpls-4/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-rpls-4/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-jsl-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-jsl-5/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-apl-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-apl-1/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-rkl-11600/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-rkl-11600/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-cfl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-cfl-guc/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-kbl-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-kbl-2/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-9/igt@i915_selftest@live.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-11/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-atsm-1/igt@i915_selftest@live.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159035v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-adls-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v3/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17693 -&gt; Patchwork_159035v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17693: 72428bdb20b6c86beaeddb9d69bf698d0697aa41 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8667: 2d7ec9a36c550c48af4bdd6e748f6753369ab8ff @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_159035v3: 72428bdb20b6c86beaeddb9d69bf698d0697aa41 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0769962106109023629==--
