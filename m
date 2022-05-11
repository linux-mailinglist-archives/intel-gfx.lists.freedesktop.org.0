Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B037E523AFC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 18:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ECE31120D7;
	Wed, 11 May 2022 16:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65DA51120D6;
 Wed, 11 May 2022 16:58:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CA45AA3D8;
 Wed, 11 May 2022 16:58:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3811220104582123481=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 11 May 2022 16:58:02 -0000
Message-ID: <165228828234.2700.1056720596051212778@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220511133732.2626686-1-andrzej.hajda@intel.com>
In-Reply-To: <20220511133732.2626686-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_disable_HPD_workers_before_display_driver_unre?=
 =?utf-8?q?gister_=28rev5=29?=
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

--===============3811220104582123481==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: disable HPD workers before display driver unregister (rev5)
URL   : https://patchwork.freedesktop.org/series/103811/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11636 -> Patchwork_103811v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_103811v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103811v5, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (4): bat-jsl-2 fi-hsw-g3258 fi-skl-6600u bat-adlp-4 
  Missing    (4): fi-ctg-p8600 bat-adlm-1 fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103811v5:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
    - fi-elk-e7500:       [PASS][3] -> [DMESG-WARN][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
    - fi-ivb-3770:        [PASS][5] -> [DMESG-WARN][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html
    - fi-ilk-650:         [PASS][7] -> [DMESG-WARN][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-n3050:       [PASS][9] -> [DMESG-WARN][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-guc:         [PASS][11] -> [DMESG-WARN][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-soraka:      [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
    - fi-snb-2600:        [PASS][15] -> [DMESG-WARN][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-kefka:       [PASS][17] -> [DMESG-WARN][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-glk-j4005:       [PASS][19] -> [DMESG-WARN][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-glk-j4005/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-glk-j4005/igt@i915_module_load@reload.html
    - fi-adl-ddr5:        [PASS][21] -> [DMESG-WARN][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-adl-ddr5/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-adl-ddr5/igt@i915_module_load@reload.html
    - fi-blb-e6850:       [PASS][23] -> [DMESG-WARN][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-blb-e6850/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-blb-e6850/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][25] -> [DMESG-WARN][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-snb-2520m/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [PASS][27] -> [DMESG-WARN][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bxt-dsi/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-tgl-1115g4:      [PASS][29] -> [DMESG-WARN][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-tgl-1115g4/igt@i915_module_load@reload.html
    - fi-pnv-d510:        [PASS][31] -> [DMESG-WARN][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-pnv-d510/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-pnv-d510/igt@i915_module_load@reload.html
    - fi-bdw-5557u:       [PASS][33] -> [DMESG-WARN][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bdw-5557u/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bdw-5557u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][35] -> [DMESG-WARN][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][37] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8700k:       [PASS][38] -> [DMESG-WARN][39] +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
    - fi-skl-guc:         [PASS][40] -> [DMESG-WARN][41] +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_suspend@system-suspend-without-i915:
    - fi-rkl-guc:         [PASS][42] -> [DMESG-WARN][43] +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-rkl-guc/igt@i915_suspend@system-suspend-without-i915.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-rkl-guc/igt@i915_suspend@system-suspend-without-i915.html
    - bat-adlp-4:         NOTRUN -> [DMESG-WARN][44] +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@i915_suspend@system-suspend-without-i915.html
    - fi-kbl-7500u:       [PASS][45] -> [DMESG-WARN][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-7500u/igt@i915_suspend@system-suspend-without-i915.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-7500u/igt@i915_suspend@system-suspend-without-i915.html
    - fi-bwr-2160:        [PASS][47] -> [DMESG-WARN][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bwr-2160/igt@i915_suspend@system-suspend-without-i915.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bwr-2160/igt@i915_suspend@system-suspend-without-i915.html
    - fi-hsw-g3258:       NOTRUN -> [DMESG-WARN][49] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@i915_suspend@system-suspend-without-i915.html
    - fi-snb-2600:        NOTRUN -> [DMESG-WARN][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2600/igt@i915_suspend@system-suspend-without-i915.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
    - fi-bdw-gvtdvm:      [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-8809g:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {bat-jsl-2}:        NOTRUN -> [DMESG-WARN][59] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-jsl-2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-2}:       NOTRUN -> [DMESG-WARN][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [DMESG-WARN][61] ([i915#5950]) -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-rpls-2/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-rpls-2/igt@i915_module_load@reload.html
    - {fi-ehl-2}:         [PASS][63] -> [DMESG-WARN][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-ehl-2/igt@i915_module_load@reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-ehl-2/igt@i915_module_load@reload.html
    - {bat-adlp-6}:       [PASS][65] -> [DMESG-WARN][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-adlp-6/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-6/igt@i915_module_load@reload.html
    - {bat-dg2-9}:        [PASS][67] -> [DMESG-WARN][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-dg2-9/igt@i915_module_load@reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-dg2-9/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-jsl-1}:        [PASS][69] -> [DMESG-WARN][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-jsl-1/igt@i915_pm_rpm@module-reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-jsl-1/igt@i915_pm_rpm@module-reload.html
    - {fi-jsl-1}:         [PASS][71] -> [DMESG-WARN][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-jsl-1/igt@i915_pm_rpm@module-reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-jsl-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_suspend@system-suspend-without-i915:
    - {fi-tgl-dsi}:       [PASS][73] -> [DMESG-WARN][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-dg2-8}:        [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_103811v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2190])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][78] ([i915#4613]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-skl-6600u:       NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#4613]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][80] ([i915#3282])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][81] -> [DMESG-WARN][82] ([i915#1982]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-soraka/igt@i915_module_load@reload.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3012])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-kefka:       [PASS][84] -> [DMESG-WARN][85] ([i915#1982]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-n3050:       [PASS][86] -> [DMESG-WARN][87] ([i915#1982])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][88] ([i915#3921])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][89] -> [DMESG-FAIL][90] ([i915#4528])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-snb-2600:        NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - bat-adlp-4:         NOTRUN -> [SKIP][93] ([fdo#111827]) +8 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html
    - fi-hsw-g3258:       NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][96] ([fdo#109271]) +6 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adlp-4:         NOTRUN -> [SKIP][97] ([i915#4103]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - bat-adlp-4:         NOTRUN -> [DMESG-WARN][98] ([i915#3576]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-4:         NOTRUN -> [SKIP][99] ([i915#4093]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#533])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#533])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#1072]) +3 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][103] ([fdo#109271]) +9 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-4:         NOTRUN -> [SKIP][104] ([i915#3555] / [i915#4579])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-4:         NOTRUN -> [SKIP][105] ([i915#3291] / [i915#3708]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-userptr:
    - bat-adlp-4:         NOTRUN -> [SKIP][106] ([i915#3301] / [i915#3708])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-rpls-2}:       [DMESG-WARN][107] ([i915#4391]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bsw-kefka:       [INCOMPLETE][109] ([i915#4831]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@coherency:
    - fi-bdw-5557u:       [INCOMPLETE][111] ([i915#5674] / [i915#5685]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bdw-5557u/igt@i915_selftest@live@coherency.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bdw-5557u/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][113] ([i915#3921]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][115] ([i915#3576]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4831]: https://gitlab.freedesktop.org/drm/intel/issues/4831
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5674]: https://gitlab.freedesktop.org/drm/intel/issues/5674
  [i915#5685]: https://gitlab.freedesktop.org/drm/intel/issues/5685
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5879]: https://gitlab.freedesktop.org/drm/intel/issues/5879
  [i915#5950]: https://gitlab.freedesktop.org/drm/intel/issues/5950


Build changes
-------------

  * Linux: CI_DRM_11636 -> Patchwork_103811v5

  CI-20190529: 20190529
  CI_DRM_11636: 33aecbb0608df8e3e541c2cd8e43f1a87d1aca7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103811v5: 33aecbb0608df8e3e541c2cd8e43f1a87d1aca7c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

10489ef9d648 drm/i915/display: disable HPD workers before display driver unregister

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/index.html

--===============3811220104582123481==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: disable HPD workers before display driver unregister (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103811/">https://patchwork.freedesktop.org/series/103811/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11636 -&gt; Patchwork_103811v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_103811v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_103811v5, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (4): bat-jsl-2 fi-hsw-g3258 fi-skl-6600u bat-adlp-4 <br />
  Missing    (4): fi-ctg-p8600 bat-adlm-1 fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_103811v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-glk-j4005/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-glk-j4005/igt@i915_module_load@reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-adl-ddr5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-adl-ddr5/igt@i915_module_load@reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-blb-e6850/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-blb-e6850/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2520m/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-tgl-1115g4/igt@i915_module_load@reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-pnv-d510/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-pnv-d510/igt@i915_module_load@reload.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bdw-5557u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bdw-5557u/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@system-suspend-without-i915:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-rkl-guc/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-rkl-guc/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-7500u/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-7500u/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bwr-2160/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bwr-2160/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2600/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
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
<li>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-jsl-2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5950">i915#5950</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-ehl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-ehl-2/igt@i915_module_load@reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-adlp-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-6/igt@i915_module_load@reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-dg2-9/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-jsl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-jsl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@system-suspend-without-i915:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103811v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-hsw-g3258/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4831">i915#4831</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-bdw-5557u/igt@i915_selftest@live@coherency.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5674">i915#5674</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5685">i915#5685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-bdw-5557u/igt@i915_selftest@live@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11636/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103811v5/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11636 -&gt; Patchwork_103811v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11636: 33aecbb0608df8e3e541c2cd8e43f1a87d1aca7c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103811v5: 33aecbb0608df8e3e541c2cd8e43f1a87d1aca7c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>10489ef9d648 drm/i915/display: disable HPD workers before display driver unregister</p>

</body>
</html>

--===============3811220104582123481==--
