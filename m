Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 750E36CF1AC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 20:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1478310E176;
	Wed, 29 Mar 2023 18:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 48CB910EBE5;
 Wed, 29 Mar 2023 18:05:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4154DAADE0;
 Wed, 29 Mar 2023 18:05:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0595991993010642661=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Wed, 29 Mar 2023 18:05:34 -0000
Message-ID: <168011313422.23904.3562682878813046113@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230329132130.105355-1-christian.koenig@amd.com>
In-Reply-To: <20230329132130.105355-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/debugfs=3A_drop_debugfs=5Finit?=
 =?utf-8?q?=28=29_for_the_render_and_accel_node_v2?=
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

--===============0595991993010642661==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/5] drm/debugfs: drop debugfs_init() for the render and accel node v2
URL   : https://patchwork.freedesktop.org/series/115793/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12936 -> Patchwork_115793v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_115793v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_115793v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115793v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-1115g4:      [PASS][4] -> [SKIP][5] +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - bat-rplp-1:         [PASS][6] -> [SKIP][7] +5 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html
    - fi-rkl-11600:       [PASS][8] -> [SKIP][9] +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
    - bat-dg2-9:          [PASS][10] -> [SKIP][11] +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-5:         [PASS][12] -> [SKIP][13] +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-adls-5/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-adls-5/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-5:          [PASS][14] -> [SKIP][15] +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg1-5/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html
    - bat-dg2-11:         [PASS][16] -> [SKIP][17] +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@force-edid:
    - bat-dg2-8:          [PASS][18] -> [SKIP][19] +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html
    - bat-jsl-1:          [PASS][20] -> [SKIP][21] +5 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-jsl-1/igt@kms_force_connector_basic@force-edid.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-jsl-1/igt@kms_force_connector_basic@force-edid.html
    - bat-rpls-1:         [PASS][22] -> [SKIP][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-rpls-1/igt@kms_force_connector_basic@force-edid.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@kms_force_connector_basic@force-edid.html
    - bat-adlp-9:         [PASS][24] -> [SKIP][25] +5 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-adlp-9/igt@kms_force_connector_basic@force-edid.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-adlp-9/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg1-7:          [PASS][26] -> [SKIP][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg1-7/igt@kms_force_connector_basic@prune-stale-modes.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg1-7/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-jsl-3:          [PASS][28] -> [SKIP][29] +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-jsl-3/igt@kms_force_connector_basic@prune-stale-modes.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-jsl-3/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adln-1:         [PASS][30] -> [SKIP][31] +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-adln-1/igt@kms_frontbuffer_tracking@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-adln-1/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-kbl-8809g:       [SKIP][32] ([fdo#109271]) -> [FAIL][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-9:          [SKIP][34] ([i915#5274]) -> [SKIP][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-11:         [SKIP][36] ([i915#5274]) -> [SKIP][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-8:          [SKIP][38] ([i915#5274]) -> [SKIP][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html

  
Known issues
------------

  Here are the changes found in Patchwork_115793v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-guc:         [PASS][40] -> [SKIP][41] ([fdo#109271]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-apl-guc:         [PASS][42] -> [SKIP][43] ([fdo#109271]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-8809g:       [PASS][44] -> [SKIP][45] ([fdo#109271])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][46] ([fdo#109271]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-rpls-1:         NOTRUN -> [SKIP][47] ([i915#7828])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-guc:         [PASS][48] -> [SKIP][49] ([fdo#109271]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-guc/igt@kms_force_connector_basic@force-edid.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-guc/igt@kms_force_connector_basic@force-edid.html
    - fi-ilk-650:         [PASS][50] -> [SKIP][51] ([fdo#109271]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-ilk-650/igt@kms_force_connector_basic@force-edid.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-ilk-650/igt@kms_force_connector_basic@force-edid.html
    - fi-bsw-n3050:       [PASS][52] -> [SKIP][53] ([fdo#109271]) +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-bsw-n3050/igt@kms_force_connector_basic@force-edid.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-bsw-n3050/igt@kms_force_connector_basic@force-edid.html
    - fi-skl-6600u:       [PASS][54] -> [SKIP][55] ([fdo#109271]) +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-skl-6600u/igt@kms_force_connector_basic@force-edid.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-skl-6600u/igt@kms_force_connector_basic@force-edid.html
    - fi-pnv-d510:        [PASS][56] -> [SKIP][57] ([fdo#109271]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-pnv-d510/igt@kms_force_connector_basic@force-edid.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-pnv-d510/igt@kms_force_connector_basic@force-edid.html
    - fi-glk-j4005:       [PASS][58] -> [SKIP][59] ([fdo#109271]) +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-glk-j4005/igt@kms_force_connector_basic@force-edid.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-glk-j4005/igt@kms_force_connector_basic@force-edid.html
    - fi-cfl-8700k:       [PASS][60] -> [SKIP][61] ([fdo#109271]) +5 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-cfl-8700k/igt@kms_force_connector_basic@force-edid.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-cfl-8700k/igt@kms_force_connector_basic@force-edid.html
    - fi-bsw-nick:        [PASS][62] -> [SKIP][63] ([fdo#109271]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-skl-guc:         [PASS][64] -> [SKIP][65] ([fdo#109271]) +5 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-skl-guc/igt@kms_force_connector_basic@prune-stale-modes.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-skl-guc/igt@kms_force_connector_basic@prune-stale-modes.html
    - fi-kbl-x1275:       [PASS][66] -> [SKIP][67] ([fdo#109271]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
    - fi-kbl-7567u:       [PASS][68] -> [SKIP][69] ([fdo#109271]) +5 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-7567u/igt@kms_force_connector_basic@prune-stale-modes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-7567u/igt@kms_force_connector_basic@prune-stale-modes.html
    - fi-elk-e7500:       [PASS][70] -> [SKIP][71] ([fdo#109271]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-elk-e7500/igt@kms_force_connector_basic@prune-stale-modes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-elk-e7500/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-4770:        [PASS][72] -> [SKIP][73] ([fdo#109271]) +5 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-hsw-4770/igt@kms_frontbuffer_tracking@basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-hsw-4770/igt@kms_frontbuffer_tracking@basic.html
    - fi-cfl-8109u:       [PASS][74] -> [SKIP][75] ([fdo#109271]) +5 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
    - fi-ivb-3770:        [PASS][76] -> [SKIP][77] ([fdo#109271]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-ivb-3770/igt@kms_frontbuffer_tracking@basic.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-ivb-3770/igt@kms_frontbuffer_tracking@basic.html
    - fi-tgl-1115g4:      [PASS][78] -> [SKIP][79] ([i915#5721])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-tgl-1115g4/igt@kms_frontbuffer_tracking@basic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-tgl-1115g4/igt@kms_frontbuffer_tracking@basic.html
    - bat-dg1-5:          [PASS][80] -> [SKIP][81] ([i915#5721])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg1-5/igt@kms_frontbuffer_tracking@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg1-5/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][82] -> [FAIL][83] ([i915#7932])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-1:         NOTRUN -> [SKIP][84] ([i915#1845])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         [ABORT][85] ([i915#6687] / [i915#7978]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][87] ([i915#7911] / [i915#7913]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [TIMEOUT][89] ([i915#6794]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-rpls-1/igt@i915_selftest@live@mman.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@i915_selftest@live@mman.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       [SKIP][91] ([fdo#109271] / [i915#4613]) -> [SKIP][92] ([fdo#109271]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-8809g:       [CRASH][93] ([i915#8299]) -> [SKIP][94] ([fdo#109271])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8299]: https://gitlab.freedesktop.org/drm/intel/issues/8299


Build changes
-------------

  * Linux: CI_DRM_12936 -> Patchwork_115793v1

  CI-20190529: 20190529
  CI_DRM_12936: 906438caae695f109636f82e2d1845a258f57d8b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7226: 41be8b4ab86f9e11388c10366dfd71e5032589c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115793v1: 906438caae695f109636f82e2d1845a258f57d8b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5b2278bcac9a drm/debugfs: remove debugfs_root pointer from minor
6cd2ebfc0af9 drm/debugfs: rework drm_debugfs_create_files implementation
4c807af0b1bc drm/debugfs: remove dev->debugfs_list and debugfs_mutex v2
5e1aae2872f9 drm/debugfs: rework debugfs directory creation v2
dd29b59b6881 drm/debugfs: drop debugfs_init() for the render and accel node v2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/index.html

--===============0595991993010642661==
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
<tr><td><b>Series:</b></td><td>series starting with [1/5] drm/debugfs: drop debugfs_init() for the render and accel node v2</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115793/">https://patchwork.freedesktop.org/series/115793/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12936 -&gt; Patchwork_115793v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_115793v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_115793v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115793v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@i915_module_load@reload.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-9/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-adls-5/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-adls-5/igt@i915_pm_rpm@module-reload.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">SKIP</a> +4 similar issues</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">SKIP</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">SKIP</a> +4 similar issues</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-jsl-1/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-jsl-1/igt@kms_force_connector_basic@force-edid.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-rpls-1/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@kms_force_connector_basic@force-edid.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-adlp-9/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-adlp-9/igt@kms_force_connector_basic@force-edid.html">SKIP</a> +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg1-7/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg1-7/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-jsl-3/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-jsl-3/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-adln-1/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-adln-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> +5 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a></p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115793v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-guc/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-guc/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-ilk-650/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-ilk-650/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-bsw-n3050/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-bsw-n3050/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-skl-6600u/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-skl-6600u/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-pnv-d510/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-pnv-d510/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-glk-j4005/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-glk-j4005/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-cfl-8700k/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-cfl-8700k/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-bsw-nick/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-skl-guc/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-skl-guc/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-7567u/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-7567u/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-elk-e7500/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-elk-e7500/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-hsw-4770/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-hsw-4770/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-ivb-3770/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-ivb-3770/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-tgl-1115g4/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-tgl-1115g4/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5721">i915#5721</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg1-5/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg1-5/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5721">i915#5721</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12936/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115793v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12936 -&gt; Patchwork_115793v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12936: 906438caae695f109636f82e2d1845a258f57d8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7226: 41be8b4ab86f9e11388c10366dfd71e5032589c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115793v1: 906438caae695f109636f82e2d1845a258f57d8b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5b2278bcac9a drm/debugfs: remove debugfs_root pointer from minor<br />
6cd2ebfc0af9 drm/debugfs: rework drm_debugfs_create_files implementation<br />
4c807af0b1bc drm/debugfs: remove dev-&gt;debugfs_list and debugfs_mutex v2<br />
5e1aae2872f9 drm/debugfs: rework debugfs directory creation v2<br />
dd29b59b6881 drm/debugfs: drop debugfs_init() for the render and accel node v2</p>

</body>
</html>

--===============0595991993010642661==--
