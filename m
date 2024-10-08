Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E540993DB2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 05:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112A910E1F8;
	Tue,  8 Oct 2024 03:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6C0E10E1F8;
 Tue,  8 Oct 2024 03:53:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3712349794132402031=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/dg2=3A_enable_G8_w?=
 =?utf-8?q?ith_a_workaround?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Oct 2024 03:53:17 -0000
Message-ID: <172835959773.1201522.12438148484951253772@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241007122424.642796-1-raag.jadav@intel.com>
In-Reply-To: <20241007122424.642796-1-raag.jadav@intel.com>
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

--===============3712349794132402031==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: enable G8 with a workaround
URL   : https://patchwork.freedesktop.org/series/139628/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15489 -> Patchwork_139628v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139628v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139628v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): bat-arls-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139628v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_render_linear_blits@basic:
    - fi-glk-j4005:       [PASS][1] -> [DMESG-FAIL][2] +2 other tests dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-glk-j4005/igt@gem_render_linear_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-glk-j4005/igt@gem_render_linear_blits@basic.html
    - fi-kbl-7567u:       [PASS][3] -> [DMESG-FAIL][4] +2 other tests dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-7567u/igt@gem_render_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-7567u/igt@gem_render_linear_blits@basic.html
    - bat-apl-1:          [PASS][5] -> [DMESG-FAIL][6] +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@gem_render_linear_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@gem_render_linear_blits@basic.html
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-FAIL][8] +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-x1275/igt@gem_render_linear_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-x1275/igt@gem_render_linear_blits@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-kbl-2:          [PASS][9] -> [DMESG-FAIL][10] +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-kbl-2/igt@gem_render_tiled_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-kbl-2/igt@gem_render_tiled_blits@basic.html
    - fi-kbl-guc:         [PASS][11] -> [DMESG-FAIL][12] +1 other test dmesg-fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@i915_hangman@error-state-basic:
    - bat-apl-1:          [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@i915_hangman@error-state-basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@i915_hangman@error-state-basic.html

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-bsw-n3050/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - bat-arlh-2:         [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-arlh-2/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-arlh-2/igt@i915_module_load@load.html
    - bat-dg2-13:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-13/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-13/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-cfl-guc/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-mtlp-6:         [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-mtlp-6/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-mtlp-6/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-9/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-9/igt@i915_module_load@load.html
    - bat-arls-2:         [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-arls-2/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-arls-2/igt@i915_module_load@load.html
    - fi-ilk-650:         [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-ilk-650/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-ilk-650/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-blb-e6850/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-blb-e6850/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-11/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-11/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-cfl-8700k/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-14/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-14/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-elk-e7500/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-bsw-nick/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-bsw-nick/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-hsw-4770/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-ivb-3770/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-ivb-3770/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-mtlp-8/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-mtlp-8/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][49] -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-8/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-kbl-2:          [PASS][51] -> [DMESG-WARN][52] +42 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-6:         [PASS][53] -> [DMESG-WARN][54] +41 other tests dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-kbl-guc:         [PASS][55] -> [DMESG-WARN][56] +42 other tests dmesg-warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-guc/igt@i915_selftest@live@client.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-guc/igt@i915_selftest@live@client.html
    - bat-adls-6:         [PASS][57] -> [DMESG-WARN][58] +41 other tests dmesg-warn
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adls-6/igt@i915_selftest@live@client.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adls-6/igt@i915_selftest@live@client.html
    - bat-adlm-1:         [PASS][59] -> [DMESG-WARN][60] +34 other tests dmesg-warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlm-1/igt@i915_selftest@live@client.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlm-1/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - fi-kbl-x1275:       [PASS][61] -> [DMESG-WARN][62] +42 other tests dmesg-warn
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
    - bat-adlp-11:        [PASS][63] -> [DMESG-WARN][64] +41 other tests dmesg-warn
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlp-11/igt@i915_selftest@live@coherency.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlp-11/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gem:
    - fi-rkl-11600:       [PASS][65] -> [DMESG-WARN][66] +34 other tests dmesg-warn
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-rkl-11600/igt@i915_selftest@live@gem.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-rkl-11600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-jsl-1:          [PASS][67] -> [DMESG-WARN][68] +40 other tests dmesg-warn
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-rpls-4:         [PASS][69] -> [DMESG-WARN][70] +41 other tests dmesg-warn
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [PASS][71] -> [DMESG-WARN][72] +34 other tests dmesg-warn
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][73] -> [DMESG-WARN][74] +41 other tests dmesg-warn
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-9:         [PASS][75] -> [DMESG-WARN][76] +41 other tests dmesg-warn
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@hangcheck:
    - bat-jsl-3:          [PASS][77] -> [DMESG-WARN][78] +39 other tests dmesg-warn
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-3/igt@i915_selftest@live@hangcheck.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-3/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-glk-j4005:       [PASS][79] -> [DMESG-WARN][80] +35 other tests dmesg-warn
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-glk-j4005/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][81] -> [DMESG-WARN][82] +42 other tests dmesg-warn
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][83] -> [DMESG-WARN][84] +41 other tests dmesg-warn
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - bat-twl-1:          [PASS][85] -> [DMESG-WARN][86] +33 other tests dmesg-warn
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-rplp-1:         [PASS][87] -> [DMESG-WARN][88] +41 other tests dmesg-warn
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - bat-dg1-7:          [PASS][89] -> [DMESG-WARN][90] +38 other tests dmesg-warn
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg1-7/igt@i915_selftest@live@uncore.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][91] -> [DMESG-FAIL][92] +2 other tests dmesg-fail
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-arls-5:         [DMESG-WARN][93] ([i915#11637]) -> [ABORT][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-arls-5/igt@i915_module_load@load.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-arls-5/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-apl-1:          [DMESG-WARN][95] ([i915#11621]) -> [INCOMPLETE][96] +1 other test incomplete
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@i915_selftest@live.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@i915_selftest@live.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-apl-1:          [DMESG-WARN][97] ([i915#11621]) -> [DMESG-FAIL][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@kms_frontbuffer_tracking@basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@kms_frontbuffer_tracking@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-arlh-3}:       [PASS][99] -> [ABORT][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-arlh-3/igt@i915_module_load@load.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-arlh-3/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_engines:
    - {bat-dg1-6}:        [PASS][101] -> [DMESG-WARN][102] +45 other tests dmesg-warn
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_139628v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-jsl-1:          [PASS][103] -> [DMESG-WARN][104] ([i915#1982])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [PASS][105] -> [DMESG-WARN][106] ([i915#1982])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-7567u/igt@i915_module_load@reload.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-7567u/igt@i915_module_load@reload.html
    - bat-twl-1:          [PASS][107] -> [DMESG-WARN][108] ([i915#1982])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-1/igt@i915_module_load@reload.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-1/igt@i915_module_load@reload.html
    - bat-jsl-3:          [PASS][109] -> [DMESG-WARN][110] ([i915#1982])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-3/igt@i915_module_load@reload.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-3/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - bat-adlm-1:         [PASS][111] -> [DMESG-WARN][112] ([i915#12133]) +6 other tests dmesg-warn
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlm-1/igt@i915_selftest@live.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlm-1/igt@i915_selftest@live.html
    - bat-jsl-3:          [PASS][113] -> [DMESG-WARN][114] ([i915#12010])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-3/igt@i915_selftest@live.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-twl-1:          [PASS][115] -> [DMESG-WARN][116] ([i915#12133]) +6 other tests dmesg-warn
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html
    - fi-rkl-11600:       [PASS][117] -> [DMESG-WARN][118] ([i915#12133]) +6 other tests dmesg-warn
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-rkl-11600/igt@i915_selftest@live@gt_heartbeat.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-rkl-11600/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-twl-2:          [PASS][119] -> [DMESG-WARN][120] ([i915#12133]) +6 other tests dmesg-warn
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-2/igt@i915_selftest@live@late_gt_pm.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-2/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@migrate:
    - bat-dg1-7:          [PASS][121] -> [DMESG-WARN][122] ([i915#12133]) +6 other tests dmesg-warn
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg1-7/igt@i915_selftest@live@migrate.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg1-7/igt@i915_selftest@live@migrate.html
    - fi-glk-j4005:       [PASS][123] -> [DMESG-WARN][124] ([i915#12133]) +6 other tests dmesg-warn
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-glk-j4005/igt@i915_selftest@live@migrate.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-glk-j4005/igt@i915_selftest@live@migrate.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - bat-apl-1:          [DMESG-WARN][125] ([i915#180] / [i915#1982]) -> [DMESG-WARN][126] ([i915#180]) +1 other test dmesg-warn
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@i915_module_load@reload.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-apl-1:          [DMESG-WARN][127] ([i915#11621] / [i915#180] / [i915#1982]) -> [DMESG-WARN][128] ([i915#11621] / [i915#180])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@i915_pm_rpm@module-reload.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#12010]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12010
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_15489 -> Patchwork_139628v1

  CI-20190529: 20190529
  CI_DRM_15489: fc6867c683c18ec3ac31682fd37d418d8a8ebde1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8054: 3f627b7fd48c6ab324ceaa80dd8cf0131292bf63 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_139628v1: fc6867c683c18ec3ac31682fd37d418d8a8ebde1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/index.html

--===============3712349794132402031==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: enable G8 with a workaround</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139628/">https://patchwork.freedesktop.org/series/139628/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15489 -&gt; Patchwork_139628v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139628v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139628v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): bat-arls-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139628v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-glk-j4005/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-glk-j4005/igt@gem_render_linear_blits@basic.html">DMESG-FAIL</a> +2 other tests dmesg-fail</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-7567u/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-7567u/igt@gem_render_linear_blits@basic.html">DMESG-FAIL</a> +2 other tests dmesg-fail</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@gem_render_linear_blits@basic.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-x1275/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-x1275/igt@gem_render_linear_blits@basic.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-kbl-2/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-kbl-2/igt@gem_render_tiled_blits@basic.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-arlh-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-arlh-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-13/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-mtlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-mtlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-arls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-arls-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-blb-e6850/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-elk-e7500/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-bsw-nick/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adls-6/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adls-6/igt@i915_selftest@live@client.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlm-1/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlm-1/igt@i915_selftest@live@client.html">DMESG-WARN</a> +34 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlp-11/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlp-11/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-rkl-11600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-rkl-11600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +34 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-1/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-rpls-4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +34 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> +35 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +33 other tests dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg1-7/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> +2 other tests dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-arls-5/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-arls-5/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-arlh-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-arlh-3/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>{bat-dg1-6}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +45 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139628v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-3/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-3/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-adlm-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-adlm-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +6 other tests dmesg-warn</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-jsl-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-jsl-3/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12010">i915#12010</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +6 other tests dmesg-warn</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-rkl-11600/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-rkl-11600/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-twl-2/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-twl-2/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-dg1-7/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-dg1-7/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +6 other tests dmesg-warn</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/fi-glk-j4005/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/fi-glk-j4005/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15489/bat-apl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139628v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15489 -&gt; Patchwork_139628v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15489: fc6867c683c18ec3ac31682fd37d418d8a8ebde1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8054: 3f627b7fd48c6ab324ceaa80dd8cf0131292bf63 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_139628v1: fc6867c683c18ec3ac31682fd37d418d8a8ebde1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3712349794132402031==--
