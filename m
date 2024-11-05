Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E699BCDAD
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 14:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D4F10E16C;
	Tue,  5 Nov 2024 13:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4910110E16C;
 Tue,  5 Nov 2024 13:21:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5791861489605064488=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Expose_modifiers/formats_su?=
 =?utf-8?q?pported_by_async_flips?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Nov 2024 13:21:05 -0000
Message-ID: <173081286528.1412189.5153540335159887907@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241105102608.3912133-1-arun.r.murthy@intel.com>
In-Reply-To: <20241105102608.3912133-1-arun.r.murthy@intel.com>
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

--===============5791861489605064488==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Expose modifiers/formats supported by async flips
URL   : https://patchwork.freedesktop.org/series/140935/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15634 -> Patchwork_140935v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140935v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140935v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/index.html

Participating hosts (44 -> 45)
------------------------------

  Additional (2): fi-skl-6600u fi-kbl-8809g 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140935v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-WARN][2] +2 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - bat-arls-2:         [PASS][3] -> [DMESG-WARN][4] +2 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8700k:       [PASS][5] -> [DMESG-WARN][6] +2 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-blb-e6850:       [PASS][7] -> [DMESG-WARN][8] +2 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
    - bat-adlp-6:         [PASS][9] -> [DMESG-WARN][10] +2 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][11] +2 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
    - bat-jsl-3:          [PASS][12] -> [DMESG-WARN][13] +2 other tests dmesg-warn
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html
    - bat-twl-2:          [PASS][14] -> [DMESG-WARN][15] +2 other tests dmesg-warn
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@core_hotunplug@unbind-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@core_hotunplug@unbind-rebind.html
    - fi-ivb-3770:        [PASS][16] -> [DMESG-WARN][17] +2 other tests dmesg-warn
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html
    - fi-elk-e7500:       [PASS][18] -> [DMESG-WARN][19] +2 other tests dmesg-warn
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
    - fi-hsw-4770:        [PASS][20] -> [DMESG-WARN][21] +2 other tests dmesg-warn
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html
    - bat-mtlp-8:         [PASS][22] -> [DMESG-WARN][23] +2 other tests dmesg-warn
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@eof:
    - bat-twl-1:          [PASS][24] -> [SKIP][25] +3 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@fbdev@eof.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@fbdev@eof.html

  * igt@fbdev@nullptr:
    - bat-jsl-1:          [PASS][26] -> [SKIP][27] +3 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@fbdev@nullptr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@fbdev@nullptr.html

  * igt@fbdev@read:
    - bat-twl-2:          [PASS][28] -> [SKIP][29] +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@fbdev@read.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@fbdev@read.html
    - bat-jsl-3:          [PASS][30] -> [SKIP][31] +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@fbdev@read.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@fbdev@read.html

  * igt@gem_lmem_swapping@basic:
    - bat-dg2-11:         [PASS][32] -> [DMESG-WARN][33] +6 other tests dmesg-warn
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@gem_lmem_swapping@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@gem_lmem_swapping@basic.html
    - bat-dg2-14:         [PASS][34] -> [DMESG-WARN][35] +6 other tests dmesg-warn
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@gem_lmem_swapping@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@gem_lmem_swapping@basic.html
    - bat-dg2-8:          [PASS][36] -> [DMESG-WARN][37] +6 other tests dmesg-warn
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@gem_lmem_swapping@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@gem_lmem_swapping@basic.html

  * igt@i915_module_load@load:
    - bat-jsl-1:          [PASS][38] -> [DMESG-WARN][39] +2 other tests dmesg-warn
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@i915_module_load@load.html
    - bat-arls-1:         [PASS][40] -> [DMESG-WARN][41] +2 other tests dmesg-warn
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][42] -> [DMESG-WARN][43] +2 other tests dmesg-warn
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@i915_module_load@load.html
    - bat-dg2-13:         [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-13/igt@i915_module_load@load.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-13/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][46] -> [DMESG-WARN][47] +2 other tests dmesg-warn
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - bat-arlh-3:         [PASS][48] -> [DMESG-WARN][49] +2 other tests dmesg-warn
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@i915_module_load@reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][50] -> [DMESG-WARN][51] +2 other tests dmesg-warn
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@i915_module_load@reload.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@i915_module_load@reload.html
    - bat-dg1-7:          [PASS][52] -> [DMESG-WARN][53] +6 other tests dmesg-warn
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@i915_module_load@reload.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@i915_module_load@reload.html
    - fi-glk-j4005:       [PASS][54] -> [DMESG-WARN][55] +2 other tests dmesg-warn
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-glk-j4005/igt@i915_module_load@reload.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-glk-j4005/igt@i915_module_load@reload.html
    - bat-adlp-9:         [PASS][56] -> [DMESG-WARN][57] +2 other tests dmesg-warn
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@i915_module_load@reload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@i915_module_load@reload.html
    - bat-rpls-4:         [PASS][58] -> [DMESG-WARN][59] +2 other tests dmesg-warn
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@i915_module_load@reload.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@i915_module_load@reload.html
    - fi-kbl-7567u:       [PASS][60] -> [DMESG-WARN][61] +2 other tests dmesg-warn
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-7567u/igt@i915_module_load@reload.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-7567u/igt@i915_module_load@reload.html
    - bat-twl-1:          [PASS][62] -> [DMESG-WARN][63] +2 other tests dmesg-warn
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@i915_module_load@reload.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@i915_module_load@reload.html
    - bat-apl-1:          [PASS][64] -> [DMESG-WARN][65] +2 other tests dmesg-warn
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-apl-1/igt@i915_module_load@reload.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-apl-1/igt@i915_module_load@reload.html
    - bat-rplp-1:         [PASS][66] -> [DMESG-WARN][67] +2 other tests dmesg-warn
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@i915_module_load@reload.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][68] -> [DMESG-WARN][69] +2 other tests dmesg-warn
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@i915_module_load@reload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][70] -> [DMESG-WARN][71] +2 other tests dmesg-warn
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@i915_module_load@reload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-6:         [PASS][72] -> [FAIL][73] +130 other tests fail
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-1:          [PASS][74] -> [INCOMPLETE][75] +1 other test incomplete
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-glk-j4005:       [PASS][76] -> [FAIL][77] +95 other tests fail
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - bat-arls-2:         [PASS][78] -> [FAIL][79] +102 other tests fail
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
    - bat-dg1-6:          [PASS][80] -> [FAIL][81] +29 other tests fail
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-6/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - fi-ilk-650:         [PASS][82] -> [FAIL][83] +80 other tests fail
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-kbl-x1275:       [PASS][84] -> [FAIL][85] +37 other tests fail
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-adlp-11:        [PASS][86] -> [FAIL][87] +37 other tests fail
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - bat-arlh-3:         [PASS][88] -> [FAIL][89] +102 other tests fail
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - bat-adlm-1:         [PASS][90] -> [FAIL][91] +38 other tests fail
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html

  * igt@kms_addfb_basic@basic:
    - fi-hsw-4770:        [PASS][92] -> [FAIL][93] +93 other tests fail
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@kms_addfb_basic@basic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@kms_addfb_basic@basic.html

  * igt@kms_addfb_basic@bo-too-small:
    - bat-kbl-2:          [PASS][94] -> [FAIL][95] +38 other tests fail
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-kbl-2/igt@kms_addfb_basic@bo-too-small.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-kbl-2/igt@kms_addfb_basic@bo-too-small.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-rkl-11600:       [PASS][96] -> [FAIL][97] +95 other tests fail
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - fi-kbl-guc:         [PASS][98] -> [FAIL][99] +38 other tests fail
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-guc/igt@kms_addfb_basic@invalid-get-prop-any.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-guc/igt@kms_addfb_basic@invalid-get-prop-any.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-ivb-3770:        [PASS][100] -> [FAIL][101] +89 other tests fail
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@kms_addfb_basic@invalid-set-prop.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - bat-dg2-9:          [PASS][102] -> [FAIL][103] +28 other tests fail
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@too-high:
    - bat-rpls-4:         [PASS][104] -> [FAIL][105] +122 other tests fail
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@kms_addfb_basic@too-high.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@kms_addfb_basic@too-high.html
    - fi-cfl-8109u:       [PASS][106] -> [FAIL][107] +106 other tests fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][108] +38 other tests fail
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@too-wide:
    - bat-mtlp-6:         [PASS][109] -> [FAIL][110] +28 other tests fail
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@kms_addfb_basic@too-wide.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@kms_addfb_basic@too-wide.html

  * igt@kms_addfb_basic@unused-handle:
    - bat-mtlp-8:         [PASS][111] -> [FAIL][112] +102 other tests fail
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_addfb_basic@unused-handle.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_addfb_basic@unused-handle.html
    - bat-arlh-2:         [PASS][113] -> [FAIL][114] +27 other tests fail
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-2/igt@kms_addfb_basic@unused-handle.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-2/igt@kms_addfb_basic@unused-handle.html

  * igt@kms_addfb_basic@unused-offsets:
    - bat-dg2-14:         [PASS][115] -> [FAIL][116] +96 other tests fail
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@kms_addfb_basic@unused-offsets.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@kms_addfb_basic@unused-offsets.html
    - fi-elk-e7500:       [PASS][117] -> [FAIL][118] +86 other tests fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html
    - bat-dg2-8:          [PASS][119] -> [FAIL][120] +98 other tests fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html
    - fi-bsw-nick:        [PASS][121] -> [FAIL][122] +37 other tests fail
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-bsw-nick/igt@kms_addfb_basic@unused-offsets.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-bsw-nick/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8700k:       [PASS][123] -> [FAIL][124] +94 other tests fail
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - bat-dg2-13:         [PASS][125] -> [FAIL][126] +1 other test fail
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-blb-e6850:       [PASS][127] -> [FAIL][128] +74 other tests fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-guc:         [PASS][129] -> [FAIL][130] +94 other tests fail
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
    - fi-pnv-d510:        [PASS][131] -> [FAIL][132] +74 other tests fail
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-jsl-3:          [PASS][133] -> [FAIL][134] +103 other tests fail
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:
    - fi-tgl-1115g4:      [PASS][135] -> [FAIL][136] +106 other tests fail
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - bat-twl-2:          [PASS][137] -> [FAIL][138] +103 other tests fail
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - bat-dg1-7:          [PASS][139] -> [FAIL][140] +97 other tests fail
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2:
    - bat-dg2-11:         [PASS][141] -> [FAIL][142] +96 other tests fail
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:
    - bat-adlp-9:         [PASS][143] -> [FAIL][144] +106 other tests fail
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-rplp-1:         [PASS][145] -> [FAIL][146] +105 other tests fail
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-hdmi-a-2:
    - bat-arls-1:         [PASS][147] -> [FAIL][148] +96 other tests fail
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-hdmi-a-2.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-hdmi-a-2.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:
    - fi-skl-6600u:       NOTRUN -> [FAIL][149] +99 other tests fail
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:
    - bat-jsl-1:          [PASS][150] -> [FAIL][151] +103 other tests fail
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlp-6:         [PASS][152] -> [INCOMPLETE][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][154]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@kms_pm_backlight@basic-brightness.html
    - bat-jsl-3:          [PASS][155] -> [INCOMPLETE][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html
    - bat-twl-2:          [PASS][157] -> [INCOMPLETE][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html
    - bat-mtlp-8:         [PASS][159] -> [INCOMPLETE][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness.html
    - bat-jsl-1:          [PASS][161] -> [INCOMPLETE][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html
    - bat-arlh-3:         [PASS][163] -> [INCOMPLETE][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_pm_backlight@basic-brightness.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_pm_backlight@basic-brightness.html
    - bat-rplp-1:         [PASS][165] -> [INCOMPLETE][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html
    - bat-arls-2:         [PASS][167] -> [INCOMPLETE][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_pm_backlight@basic-brightness.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][169] -> [FAIL][170] +94 other tests fail
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-twl-1:          [PASS][171] -> [FAIL][172] +103 other tests fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-apl-1:          [PASS][173] -> [FAIL][174] +90 other tests fail
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-arlh-3:         [PASS][175] -> [SKIP][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@prime_vgem@basic-fence-flip.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-blb-e6850:       [SKIP][177] -> [FAIL][178] +3 other tests fail
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html
    - fi-pnv-d510:        [SKIP][179] -> [FAIL][180] +3 other tests fail
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@i915_pm_rpm@module-reload.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - bat-dg1-6:          [SKIP][181] ([i915#12311]) -> [FAIL][182] +8 other tests fail
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-mtlp-6:         [SKIP][183] ([i915#4212] / [i915#9792]) -> [FAIL][184] +8 other tests fail
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - bat-dg2-11:         [SKIP][185] ([i915#4212]) -> [FAIL][186] +7 other tests fail
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          [SKIP][187] ([i915#4212] / [i915#5190]) -> [FAIL][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arls-2:         [SKIP][189] ([i915#10200] / [i915#12203]) -> [FAIL][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-6:         [SKIP][191] ([i915#4212] / [i915#5190] / [i915#9792]) -> [FAIL][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-11:         [SKIP][193] ([i915#4212] / [i915#5190]) -> [FAIL][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-14:         [SKIP][195] ([i915#4212] / [i915#5190]) -> [FAIL][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-bsw-nick:        [SKIP][197] -> [FAIL][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-bsw-nick/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-bsw-nick/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-hsw-4770:        [SKIP][199] ([i915#5190]) -> [FAIL][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-mtlp-8:         [SKIP][201] ([i915#4212] / [i915#5190]) -> [FAIL][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-dg2-8:          [SKIP][203] ([i915#4212] / [i915#5190]) -> [FAIL][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arls-1:         [SKIP][205] ([i915#10200] / [i915#12203]) -> [FAIL][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arlh-3:         [SKIP][207] ([i915#11666] / [i915#12203]) -> [FAIL][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-arlh-2:         [SKIP][209] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203]) -> [FAIL][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-arlh-2:         [SKIP][211] ([i915#10200] / [i915#11346] / [i915#11666]) -> [FAIL][212] +8 other tests fail
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-mtlp-8:         [SKIP][213] ([i915#4212]) -> [FAIL][214] +8 other tests fail
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-8:          [SKIP][215] ([i915#4212] / [i915#4215] / [i915#5190]) -> [FAIL][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-arls-1:         [SKIP][217] ([i915#10200]) -> [FAIL][218] +8 other tests fail
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-7:          [SKIP][219] ([i915#4212] / [i915#4215]) -> [FAIL][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-9:          [SKIP][221] ([i915#4212] / [i915#4215] / [i915#5190]) -> [FAIL][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-11:         [SKIP][223] ([i915#4212] / [i915#4215] / [i915#5190]) -> [FAIL][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg2-14:         [SKIP][225] ([i915#4212] / [i915#4215] / [i915#5190]) -> [FAIL][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - bat-arlh-3:         [SKIP][227] ([i915#11666]) -> [FAIL][228] +8 other tests fail
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - bat-dg1-7:          [SKIP][229] ([i915#4212]) -> [FAIL][230] +7 other tests fail
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          [SKIP][231] ([i915#4212]) -> [FAIL][232] +7 other tests fail
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - bat-arls-2:         [SKIP][233] ([i915#10200]) -> [FAIL][234] +8 other tests fail
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg2-14:         [SKIP][235] ([i915#4212]) -> [FAIL][236] +7 other tests fail
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@kms_addfb_basic@tile-pitch-mismatch.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@kms_addfb_basic@tile-pitch-mismatch.html
    - bat-dg2-8:          [SKIP][237] ([i915#4212]) -> [FAIL][238] +7 other tests fail
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-ilk-650:         [SKIP][239] -> [FAIL][240] +3 other tests fail
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@basic-rte:
    - fi-ivb-3770:        [SKIP][241] -> [FAIL][242] +3 other tests fail
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@kms_pm_rpm@basic-rte.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@kms_pm_rpm@basic-rte.html
    - fi-elk-e7500:       [SKIP][243] -> [FAIL][244] +4 other tests fail
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@kms_pm_rpm@basic-rte.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@kms_pm_rpm@basic-rte.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-mtlp-8:         [SKIP][245] ([i915#4077] / [i915#9688]) -> [FAIL][246] +1 other test fail
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-arlh-3:         [SKIP][247] ([i915#12637]) -> [FAIL][248] +1 other test fail
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
    - bat-arls-2:         [SKIP][249] ([i915#12637] / [i915#4077] / [i915#9688]) -> [FAIL][250] +1 other test fail
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rpls-4:         [SKIP][251] ([i915#3555]) -> [INCOMPLETE][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-cfl-8109u:       [SKIP][253] -> [INCOMPLETE][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-6:         [SKIP][255] ([i915#3555]) -> [INCOMPLETE][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {bat-mtlp-9}:       [PASS][257] -> [DMESG-WARN][258] +2 other tests dmesg-warn
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - {bat-mtlp-9}:       [SKIP][259] ([i915#4212] / [i915#5190]) -> [FAIL][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - {bat-mtlp-9}:       [SKIP][261] ([i915#4212]) -> [FAIL][262] +8 other tests fail
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1:
    - {bat-mtlp-9}:       [PASS][263] -> [FAIL][264] +134 other tests fail
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1.html

  * igt@kms_pm_backlight@basic-brightness:
    - {bat-mtlp-9}:       [PASS][265] -> [INCOMPLETE][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - {bat-mtlp-9}:       [SKIP][267] ([i915#4077] / [i915#9688]) -> [FAIL][268] +1 other test fail
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - {bat-mtlp-9}:       [SKIP][269] ([i915#3555] / [i915#8809]) -> [INCOMPLETE][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html

  
Known issues
------------

  Here are the changes found in Patchwork_140935v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-rpls-4:         [PASS][271] -> [SKIP][272] ([i915#2582]) +3 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@fbdev@eof.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@fbdev@eof.html
    - fi-kbl-7567u:       [PASS][273] -> [SKIP][274] +4 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-7567u/igt@fbdev@eof.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-7567u/igt@fbdev@eof.html
    - bat-apl-1:          [PASS][275] -> [SKIP][276] +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-apl-1/igt@fbdev@eof.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-apl-1/igt@fbdev@eof.html
    - bat-rplp-1:         [PASS][277] -> [SKIP][278] ([i915#2582]) +3 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@fbdev@eof.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@fbdev@eof.html
    - fi-rkl-11600:       [PASS][279] -> [SKIP][280] ([i915#2582]) +3 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@fbdev@eof.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@fbdev@eof.html
    - fi-cfl-8109u:       [PASS][281] -> [SKIP][282] +4 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@fbdev@eof.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@fbdev@eof.html
    - bat-arls-2:         [PASS][283] -> [SKIP][284] ([i915#11191] / [i915#11345]) +3 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@fbdev@eof.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@fbdev@eof.html
    - fi-ilk-650:         [PASS][285] -> [SKIP][286] +4 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@fbdev@eof.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@fbdev@eof.html
    - fi-tgl-1115g4:      [PASS][287] -> [SKIP][288] ([i915#2582]) +3 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@fbdev@eof.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-cfl-8109u:       [PASS][289] -> [SKIP][290] ([i915#1849])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@fbdev@info.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@fbdev@info.html
    - bat-arls-2:         [PASS][291] -> [SKIP][292] ([i915#1849])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@fbdev@info.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@fbdev@info.html
    - fi-ilk-650:         [PASS][293] -> [SKIP][294] ([i915#1849])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@fbdev@info.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@fbdev@info.html
    - fi-blb-e6850:       [PASS][295] -> [SKIP][296] ([i915#1849])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@fbdev@info.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@fbdev@info.html
    - bat-adlp-6:         [PASS][297] -> [SKIP][298] ([i915#1849] / [i915#2582])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@fbdev@info.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@fbdev@info.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][299] ([i915#1849])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@fbdev@info.html
    - bat-jsl-3:          [PASS][300] -> [SKIP][301] ([i915#1849])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@fbdev@info.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@fbdev@info.html
    - bat-twl-2:          [PASS][302] -> [SKIP][303] ([i915#1849])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@fbdev@info.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@fbdev@info.html
    - bat-dg2-11:         [PASS][304] -> [SKIP][305] ([i915#1849] / [i915#2582])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@fbdev@info.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@fbdev@info.html
    - fi-cfl-8700k:       [PASS][306] -> [SKIP][307] ([i915#1849])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8700k/igt@fbdev@info.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8700k/igt@fbdev@info.html
    - bat-dg2-14:         [PASS][308] -> [SKIP][309] ([i915#1849] / [i915#2582])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@fbdev@info.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@fbdev@info.html
    - fi-elk-e7500:       [PASS][310] -> [SKIP][311] ([i915#1849])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@fbdev@info.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@fbdev@info.html
    - fi-hsw-4770:        [PASS][312] -> [SKIP][313] ([i915#1849] / [i915#2582])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@fbdev@info.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@fbdev@info.html
    - fi-ivb-3770:        [PASS][314] -> [SKIP][315] ([i915#1849])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@fbdev@info.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@fbdev@info.html
    - bat-mtlp-8:         [PASS][316] -> [SKIP][317] ([i915#1849] / [i915#2582])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@fbdev@info.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@fbdev@info.html
    - bat-dg2-8:          [PASS][318] -> [SKIP][319] ([i915#1849] / [i915#2582])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@fbdev@info.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@fbdev@info.html
    - bat-jsl-1:          [PASS][320] -> [SKIP][321] ([i915#1849])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@fbdev@info.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@fbdev@info.html
    - bat-arls-1:         [PASS][322] -> [SKIP][323] ([i915#1849])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@fbdev@info.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@fbdev@info.html
    - fi-rkl-11600:       [PASS][324] -> [SKIP][325] ([i915#1849] / [i915#2582])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@fbdev@info.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@fbdev@info.html
    - bat-arlh-3:         [PASS][326] -> [SKIP][327] ([i915#1849])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@fbdev@info.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@fbdev@info.html
    - fi-pnv-d510:        [PASS][328] -> [SKIP][329] ([i915#1849])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@fbdev@info.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@fbdev@info.html
    - bat-dg1-7:          [PASS][330] -> [SKIP][331] ([i915#1849] / [i915#2582])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@fbdev@info.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@fbdev@info.html
    - fi-glk-j4005:       [PASS][332] -> [SKIP][333] ([i915#1849])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-glk-j4005/igt@fbdev@info.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-glk-j4005/igt@fbdev@info.html
    - bat-adlp-9:         [PASS][334] -> [SKIP][335] ([i915#1849] / [i915#2582])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@fbdev@info.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@fbdev@info.html
    - bat-rpls-4:         [PASS][336] -> [SKIP][337] ([i915#1849] / [i915#2582])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@fbdev@info.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@fbdev@info.html
    - fi-kbl-7567u:       [PASS][338] -> [SKIP][339] ([i915#1849])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-7567u/igt@fbdev@info.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-7567u/igt@fbdev@info.html
    - bat-twl-1:          [PASS][340] -> [SKIP][341] ([i915#1849])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@fbdev@info.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@fbdev@info.html
    - bat-apl-1:          [PASS][342] -> [SKIP][343] ([i915#1849])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-apl-1/igt@fbdev@info.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-apl-1/igt@fbdev@info.html
    - bat-rplp-1:         [PASS][344] -> [SKIP][345] ([i915#1849] / [i915#2582])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@fbdev@info.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@fbdev@info.html
    - fi-tgl-1115g4:      [PASS][346] -> [SKIP][347] ([i915#1849] / [i915#2582])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@fbdev@info.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@fbdev@info.html
    - fi-cfl-guc:         [PASS][348] -> [SKIP][349] ([i915#1849])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-guc/igt@fbdev@info.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-guc/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - bat-arls-1:         [PASS][350] -> [SKIP][351] ([i915#11191] / [i915#11345]) +3 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@fbdev@nullptr.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@fbdev@nullptr.html
    - fi-hsw-4770:        [PASS][352] -> [SKIP][353] ([i915#2582]) +3 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@fbdev@nullptr.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@fbdev@nullptr.html
    - bat-mtlp-8:         [PASS][354] -> [SKIP][355] ([i915#2582]) +3 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@fbdev@nullptr.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@fbdev@nullptr.html
    - bat-arlh-3:         [PASS][356] -> [SKIP][357] ([i915#11345]) +3 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@fbdev@nullptr.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@fbdev@nullptr.html
    - fi-pnv-d510:        [PASS][358] -> [SKIP][359] +4 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@fbdev@nullptr.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@fbdev@nullptr.html
    - bat-dg1-7:          [PASS][360] -> [SKIP][361] ([i915#2582]) +3 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@fbdev@nullptr.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@fbdev@nullptr.html
    - bat-adlp-9:         [PASS][362] -> [SKIP][363] ([i915#2582]) +3 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@fbdev@nullptr.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@fbdev@nullptr.html

  * igt@fbdev@read:
    - bat-dg2-11:         [PASS][364] -> [SKIP][365] ([i915#2582]) +3 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@fbdev@read.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@fbdev@read.html
    - fi-cfl-8700k:       [PASS][366] -> [SKIP][367] +4 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8700k/igt@fbdev@read.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8700k/igt@fbdev@read.html
    - bat-dg2-14:         [PASS][368] -> [SKIP][369] ([i915#2582]) +3 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@fbdev@read.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@fbdev@read.html
    - bat-dg2-8:          [PASS][370] -> [SKIP][371] ([i915#2582]) +3 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@fbdev@read.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@fbdev@read.html

  * igt@fbdev@write:
    - fi-blb-e6850:       [PASS][372] -> [SKIP][373] +4 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@fbdev@write.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@fbdev@write.html
    - fi-cfl-guc:         [PASS][374] -> [SKIP][375] +4 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-guc/igt@fbdev@write.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-guc/igt@fbdev@write.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][376] +14 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@fbdev@write.html
    - bat-adlp-6:         [PASS][377] -> [SKIP][378] ([i915#2582]) +3 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@fbdev@write.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@fbdev@write.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][379] ([i915#2190])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][380] ([i915#2190])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][381] ([i915#4613]) +3 other tests skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6600u:       NOTRUN -> [SKIP][382] ([i915#4613]) +3 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live:
    - bat-twl-1:          [PASS][383] -> [INCOMPLETE][384] ([i915#12133])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@i915_selftest@live.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-mtlp-6:         [PASS][385] -> [ABORT][386] ([i915#12061] / [i915#12133])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@i915_selftest@live.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][387] -> [ABORT][388] ([i915#12061])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][389] +30 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-jsl-3:          [PASS][390] -> [SKIP][391]
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@prime_vgem@basic-fence-flip.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@prime_vgem@basic-fence-flip.html
    - bat-twl-2:          [PASS][392] -> [SKIP][393] ([i915#3708])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@prime_vgem@basic-fence-flip.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@prime_vgem@basic-fence-flip.html
    - fi-ivb-3770:        [PASS][394] -> [SKIP][395] +4 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@prime_vgem@basic-fence-flip.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@prime_vgem@basic-fence-flip.html
    - fi-elk-e7500:       [PASS][396] -> [SKIP][397] +4 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@prime_vgem@basic-fence-flip.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@prime_vgem@basic-fence-flip.html
    - bat-arls-1:         [PASS][398] -> [SKIP][399] ([i915#3708])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@prime_vgem@basic-fence-flip.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@prime_vgem@basic-fence-flip.html
    - fi-hsw-4770:        [PASS][400] -> [SKIP][401]
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@prime_vgem@basic-fence-flip.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@prime_vgem@basic-fence-flip.html
    - fi-glk-j4005:       [PASS][402] -> [SKIP][403] +4 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-glk-j4005/igt@prime_vgem@basic-fence-flip.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-glk-j4005/igt@prime_vgem@basic-fence-flip.html
    - bat-mtlp-8:         [PASS][404] -> [SKIP][405] ([i915#3708])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@prime_vgem@basic-fence-flip.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@prime_vgem@basic-fence-flip.html
    - bat-adlp-9:         [PASS][406] -> [SKIP][407] ([i915#3708])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@prime_vgem@basic-fence-flip.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@prime_vgem@basic-fence-flip.html
    - bat-jsl-1:          [PASS][408] -> [SKIP][409]
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html
    - fi-rkl-11600:       [PASS][410] -> [SKIP][411] ([i915#3708])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html
    - bat-rpls-4:         [PASS][412] -> [SKIP][413] ([i915#3708])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@prime_vgem@basic-fence-flip.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@prime_vgem@basic-fence-flip.html
    - bat-twl-1:          [PASS][414] -> [SKIP][415] ([i915#3708])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@prime_vgem@basic-fence-flip.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@prime_vgem@basic-fence-flip.html
    - bat-rplp-1:         [PASS][416] -> [SKIP][417] ([i915#3708])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html
    - fi-tgl-1115g4:      [PASS][418] -> [SKIP][419]
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html
    - bat-arls-2:         [PASS][420] -> [SKIP][421] ([i915#3708])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@prime_vgem@basic-fence-flip.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@prime_vgem@basic-fence-flip.html
    - bat-adlp-6:         [PASS][422] -> [SKIP][423] ([i915#3708])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@prime_vgem@basic-fence-flip.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [ABORT][424] ([i915#12133]) -> [PASS][425]
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@i915_selftest@live.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][426] ([i915#12061]) -> [PASS][427]
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11191]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11191
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
  [i915#12311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9792]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792


Build changes
-------------

  * Linux: CI_DRM_15634 -> Patchwork_140935v1

  CI-20190529: 20190529
  CI_DRM_15634: 913062707a924df0837c0d9eb9745ba52fd92958 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8097: 2e7c8e4b88a50e33e10d6c13286818aa833bef9b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140935v1: 913062707a924df0837c0d9eb9745ba52fd92958 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/index.html

--===============5791861489605064488==
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
<tr><td><b>Series:</b></td><td>Expose modifiers/formats supported by async flips</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140935/">https://patchwork.freedesktop.org/series/140935/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15634 -&gt; Patchwork_140935v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140935v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140935v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/index.html</p>
<h2>Participating hosts (44 -&gt; 45)</h2>
<p>Additional (2): fi-skl-6600u fi-kbl-8809g <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140935v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@fbdev@eof.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@fbdev@nullptr.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@fbdev@read.html">SKIP</a> +3 other tests skip</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@fbdev@read.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@gem_lmem_swapping@basic.html">DMESG-WARN</a> +6 other tests dmesg-warn</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@gem_lmem_swapping@basic.html">DMESG-WARN</a> +6 other tests dmesg-warn</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@gem_lmem_swapping@basic.html">DMESG-WARN</a> +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@i915_module_load@load.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@i915_module_load@load.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@i915_module_load@load.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-13/igt@i915_module_load@load.html">DMESG-WARN</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@i915_module_load@load.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@i915_module_load@reload.html">DMESG-WARN</a> +6 other tests dmesg-warn</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-glk-j4005/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-glk-j4005/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-apl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-apl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">FAIL</a> +130 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">FAIL</a> +95 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-modifier-no-flag:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">FAIL</a> +102 other tests fail</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-6/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">FAIL</a> +29 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">FAIL</a> +80 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a> +37 other tests fail</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a> +37 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">FAIL</a> +102 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-63:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html">FAIL</a> +38 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@kms_addfb_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@kms_addfb_basic@basic.html">FAIL</a> +93 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-kbl-2/igt@kms_addfb_basic@bo-too-small.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-kbl-2/igt@kms_addfb_basic@bo-too-small.html">FAIL</a> +38 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">FAIL</a> +95 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-guc/igt@kms_addfb_basic@invalid-get-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-guc/igt@kms_addfb_basic@invalid-get-prop-any.html">FAIL</a> +38 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@kms_addfb_basic@invalid-set-prop.html">FAIL</a> +89 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">FAIL</a> +28 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@kms_addfb_basic@too-high.html">FAIL</a> +122 other tests fail</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">FAIL</a> +106 other tests fail</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">FAIL</a> +38 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-wide:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@kms_addfb_basic@too-wide.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@kms_addfb_basic@too-wide.html">FAIL</a> +28 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-handle:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_addfb_basic@unused-handle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_addfb_basic@unused-handle.html">FAIL</a> +102 other tests fail</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-2/igt@kms_addfb_basic@unused-handle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-2/igt@kms_addfb_basic@unused-handle.html">FAIL</a> +27 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@kms_addfb_basic@unused-offsets.html">FAIL</a> +96 other tests fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html">FAIL</a> +86 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">FAIL</a> +98 other tests fail</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-bsw-nick/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-bsw-nick/igt@kms_addfb_basic@unused-offsets.html">FAIL</a> +37 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8700k/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html">FAIL</a> +94 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">FAIL</a> +74 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">FAIL</a> +94 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-vga1:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">FAIL</a> +74 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">FAIL</a> +103 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html">FAIL</a> +106 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> +103 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">FAIL</a> +97 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html">FAIL</a> +96 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">FAIL</a> +106 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">FAIL</a> +105 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-hdmi-a-2:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-hdmi-a-2.html">FAIL</a> +96 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">FAIL</a> +99 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">FAIL</a> +103 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +94 other tests fail</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +103 other tests fail</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +90 other tests fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html">FAIL</a> +3 other tests fail</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@i915_pm_rpm@module-reload.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@i915_pm_rpm@module-reload.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">FAIL</a> +8 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">FAIL</a> +8 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">FAIL</a> +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-bsw-nick/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-bsw-nick/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203">i915#12203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">FAIL</a> +8 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a> +8 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a> +8 other tests fail</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666">i915#11666</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">FAIL</a> +8 other tests fail</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">FAIL</a> +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">FAIL</a> +7 other tests fail</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200">i915#10200</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">FAIL</a> +8 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@kms_addfb_basic@tile-pitch-mismatch.html">FAIL</a> +7 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html">FAIL</a> +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@kms_pm_rpm@basic-rte.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@kms_pm_rpm@basic-rte.html">FAIL</a> +3 other tests fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@kms_pm_rpm@basic-rte.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@kms_pm_rpm@basic-rte.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html">FAIL</a> +1 other test fail</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt@edp-1:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">FAIL</a> +8 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1.html">FAIL</a> +134 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140935v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-7567u/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-7567u/igt@fbdev@eof.html">SKIP</a> +4 other tests skip</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-apl-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-apl-1/igt@fbdev@eof.html">SKIP</a> +4 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@fbdev@eof.html">SKIP</a> +4 other tests skip</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11191">i915#11191</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) +3 other tests skip</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@fbdev@eof.html">SKIP</a> +4 other tests skip</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8109u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8109u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ilk-650/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ilk-650/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8700k/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8700k/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-glk-j4005/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-glk-j4005/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-kbl-7567u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-7567u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-apl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-apl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-guc/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-guc/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11191">i915#11191</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) +3 other tests skip</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) +3 other tests skip</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-pnv-d510/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-pnv-d510/igt@fbdev@nullptr.html">SKIP</a> +4 other tests skip</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg1-7/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg1-7/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-11/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-11/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-8700k/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-8700k/igt@fbdev@read.html">SKIP</a> +4 other tests skip</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-14/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-14/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-dg2-8/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-dg2-8/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-blb-e6850/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-blb-e6850/igt@fbdev@write.html">SKIP</a> +4 other tests skip</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-cfl-guc/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-cfl-guc/igt@fbdev@write.html">SKIP</a> +4 other tests skip</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@fbdev@write.html">SKIP</a> +14 other tests skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-3/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-3/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-2/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-ivb-3770/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-ivb-3770/igt@prime_vgem@basic-fence-flip.html">SKIP</a> +4 other tests skip</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-elk-e7500/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-elk-e7500/igt@prime_vgem@basic-fence-flip.html">SKIP</a> +4 other tests skip</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-hsw-4770/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-hsw-4770/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-glk-j4005/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-glk-j4005/igt@prime_vgem@basic-fence-flip.html">SKIP</a> +4 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-mtlp-8/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-mtlp-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-9/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rpls-4/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rpls-4/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-twl-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-twl-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arls-2/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-adlp-6/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-adlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15634/bat-arlh-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15634 -&gt; Patchwork_140935v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15634: 913062707a924df0837c0d9eb9745ba52fd92958 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8097: 2e7c8e4b88a50e33e10d6c13286818aa833bef9b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140935v1: 913062707a924df0837c0d9eb9745ba52fd92958 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5791861489605064488==--
