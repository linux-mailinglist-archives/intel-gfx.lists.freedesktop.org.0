Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C777FA3C3CC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 16:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BBB010E839;
	Wed, 19 Feb 2025 15:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4139D10E549;
 Wed, 19 Feb 2025 15:39:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8331262828925453281=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Introduce_drm_sharpness_p?=
 =?utf-8?q?roperty_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2025 15:39:57 -0000
Message-ID: <173997959725.4019194.9459435509490152574@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250219115359.2320992-1-nemesa.garg@intel.com>
In-Reply-To: <20250219115359.2320992-1-nemesa.garg@intel.com>
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

--===============8331262828925453281==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce drm sharpness property (rev9)
URL   : https://patchwork.freedesktop.org/series/138754/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16157 -> Patchwork_138754v9
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_138754v9 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138754v9, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138754v9:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-cfl-8109u:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7567u:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
    - fi-elk-e7500:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - bat-dg2-8:          [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-8/igt@debugfs_test@read_all_entries.html
    - bat-adls-6:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adls-6/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adls-6/igt@debugfs_test@read_all_entries.html
    - bat-jsl-1:          [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-jsl-1/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-jsl-1/igt@debugfs_test@read_all_entries.html
    - fi-tgl-1115g4:      [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
    - fi-blb-e6850:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
    - fi-bsw-n3050:       [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
    - bat-arls-6:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arls-6/igt@debugfs_test@read_all_entries.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arls-6/igt@debugfs_test@read_all_entries.html
    - bat-arlh-3:         [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arlh-3/igt@debugfs_test@read_all_entries.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arlh-3/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        NOTRUN -> [ABORT][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - bat-dg1-7:          [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg1-7/igt@debugfs_test@read_all_entries.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg1-7/igt@debugfs_test@read_all_entries.html
    - fi-glk-j4005:       [PASS][28] -> [ABORT][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
    - bat-adlp-9:         [PASS][30] -> [ABORT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adlp-9/igt@debugfs_test@read_all_entries.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adlp-9/igt@debugfs_test@read_all_entries.html
    - bat-twl-2:          [PASS][32] -> [ABORT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-twl-2/igt@debugfs_test@read_all_entries.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-twl-2/igt@debugfs_test@read_all_entries.html
    - bat-rpls-4:         [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-rpls-4/igt@debugfs_test@read_all_entries.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-rpls-4/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - bat-twl-1:          [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-twl-1/igt@debugfs_test@read_all_entries.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-twl-1/igt@debugfs_test@read_all_entries.html
    - bat-dg2-14:         [PASS][40] -> [ABORT][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-14/igt@debugfs_test@read_all_entries.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-14/igt@debugfs_test@read_all_entries.html
    - fi-bsw-nick:        [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
    - bat-arls-5:         [PASS][44] -> [ABORT][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arls-5/igt@debugfs_test@read_all_entries.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arls-5/igt@debugfs_test@read_all_entries.html
    - bat-adlp-6:         [PASS][46] -> [ABORT][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adlp-6/igt@debugfs_test@read_all_entries.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adlp-6/igt@debugfs_test@read_all_entries.html
    - bat-rplp-1:         [PASS][48] -> [ABORT][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-rplp-1/igt@debugfs_test@read_all_entries.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-rplp-1/igt@debugfs_test@read_all_entries.html
    - fi-rkl-11600:       [PASS][50] -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
    - bat-mtlp-9:         [PASS][52] -> [ABORT][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-mtlp-9/igt@debugfs_test@read_all_entries.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-mtlp-9/igt@debugfs_test@read_all_entries.html
    - bat-jsl-3:          [PASS][54] -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-jsl-3/igt@debugfs_test@read_all_entries.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-jsl-3/igt@debugfs_test@read_all_entries.html
    - bat-dg2-9:          [PASS][56] -> [ABORT][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-9/igt@debugfs_test@read_all_entries.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-9/igt@debugfs_test@read_all_entries.html
    - bat-dg2-11:         [PASS][58] -> [ABORT][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-11/igt@debugfs_test@read_all_entries.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-11/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][60] -> [ABORT][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-ilk-650/igt@i915_module_load@load.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-ilk-650/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][62] -> [ABORT][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-hsw-4770/igt@i915_module_load@load.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][64] -> [ABORT][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-ivb-3770/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-ivb-3770/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-kbl-2:          [PASS][66] -> [FAIL][67] +4 other tests fail
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
    - bat-arlh-2:         [PASS][68] -> [FAIL][69] +2 other tests fail
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arlh-2/igt@i915_pm_rpm@module-reload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arlh-2/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-11:        [PASS][70] -> [FAIL][71] +2 other tests fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adlp-11/igt@i915_pm_rpm@module-reload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adlp-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-kbl-guc:         [PASS][72] -> [DMESG-WARN][73] +39 other tests dmesg-warn
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-guc/igt@i915_selftest@live@client.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@dmabuf:
    - bat-arlh-2:         [PASS][74] -> [DMESG-WARN][75] +39 other tests dmesg-warn
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arlh-2/igt@i915_selftest@live@dmabuf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arlh-2/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [PASS][76] -> [DMESG-WARN][77] +39 other tests dmesg-warn
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-dg1-6:          [PASS][78] -> [DMESG-WARN][79] +47 other tests dmesg-warn
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@perf:
    - fi-kbl-x1275:       [PASS][80] -> [DMESG-WARN][81] +39 other tests dmesg-warn
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-x1275/igt@i915_selftest@live@perf.html
    - bat-adlp-11:        [PASS][82] -> [DMESG-WARN][83] +39 other tests dmesg-warn
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adlp-11/igt@i915_selftest@live@perf.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adlp-11/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - bat-kbl-2:          [PASS][84] -> [DMESG-WARN][85] +39 other tests dmesg-warn
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-kbl-2/igt@i915_selftest@live@requests.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-kbl-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@ring_submission:
    - fi-kbl-8809g:       [PASS][86] -> [DMESG-WARN][87] +39 other tests dmesg-warn
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-8809g/igt@i915_selftest@live@ring_submission.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-8809g/igt@i915_selftest@live@ring_submission.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-dg2-13:         [PASS][88] -> [FAIL][89] +6 other tests fail
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-mtlp-6:         [PASS][90] -> [FAIL][91] +4 other tests fail
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:
    - bat-apl-1:          [PASS][92] -> [FAIL][93] +4 other tests fail
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-8809g:       [PASS][94] -> [FAIL][95] +4 other tests fail
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-guc:         [PASS][96] -> [FAIL][97] +4 other tests fail
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-dg1-6:          [PASS][98] -> [FAIL][99] +4 other tests fail
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@basic-rte:
    - fi-kbl-x1275:       [PASS][100] -> [FAIL][101] +3 other tests fail
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@kms_busy@basic@flip:
    - bat-apl-1:          [DMESG-WARN][102] ([i915#11621] / [i915#180] / [i915#1982]) -> [FAIL][103] +1 other test fail
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_busy@basic@flip.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - bat-dg2-13:         [SKIP][104] ([Intel XE#484] / [i915#4550]) -> [FAIL][105] +1 other test fail
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - bat-apl-1:          [DMESG-WARN][106] ([i915#11621] / [i915#180]) -> [FAIL][107] +26 other tests fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-x1275:       [SKIP][108] -> [FAIL][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-x1275/igt@kms_hdmi_inject@inject-audio.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-x1275/igt@kms_hdmi_inject@inject-audio.html

  
Known issues
------------

  Here are the changes found in Patchwork_138754v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - bat-atsm-1:         [PASS][110] -> [INCOMPLETE][111] ([i915#12445])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-atsm-1/igt@i915_selftest@live@requests.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-atsm-1/igt@i915_selftest@live@requests.html

  * igt@vgem_basic@unload:
    - bat-apl-1:          [PASS][112] -> [DMESG-WARN][113] ([i915#11621])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@vgem_basic@unload.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - bat-apl-1:          [DMESG-WARN][114] ([i915#11621] / [i915#180] / [i915#1982]) -> [DMESG-WARN][115] ([i915#11621]) +2 other tests dmesg-warn
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@i915_module_load@reload.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - bat-atsm-1:         [ABORT][116] ([i915#13679]) -> [INCOMPLETE][117] ([i915#12445])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-atsm-1/igt@i915_selftest@live.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-atsm-1/igt@i915_selftest@live.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-apl-1:          [DMESG-WARN][118] ([i915#11621] / [i915#180] / [i915#1982]) -> [DMESG-FAIL][119] ([i915#11621]) +1 other test dmesg-fail
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-apl-1:          [DMESG-WARN][120] ([i915#11621]) -> [DMESG-FAIL][121] ([i915#11621])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_frontbuffer_tracking@basic.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-apl-1:          [DMESG-WARN][122] ([i915#11621] / [i915#180]) -> [DMESG-FAIL][123] ([i915#11621]) +15 other tests dmesg-fail
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-apl-1:          [DMESG-WARN][124] ([i915#11621]) -> [SKIP][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@prime_vgem@basic-fence-flip.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@prime_vgem@basic-fence-flip.html

  
  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#13679]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13679
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#4550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550


Build changes
-------------

  * Linux: CI_DRM_16157 -> Patchwork_138754v9

  CI-20190529: 20190529
  CI_DRM_16157: 2050e0325a3fa692d86d64e8d05d10b6959166d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8238: 7df82badac410a7ce2505df6064d44f0e094650c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_138754v9: 2050e0325a3fa692d86d64e8d05d10b6959166d7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/index.html

--===============8331262828925453281==
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
<tr><td><b>Series:</b></td><td>Introduce drm sharpness property (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138754/">https://patchwork.freedesktop.org/series/138754/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16157 -&gt; Patchwork_138754v9</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_138754v9 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_138754v9, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138754v9:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-8/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adls-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adls-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-jsl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-jsl-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-blb-e6850/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-blb-e6850/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arls-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arls-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arlh-3/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arlh-3/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg1-7/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg1-7/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-glk-j4005/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-glk-j4005/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-twl-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-twl-2/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-rpls-4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-rpls-4/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-twl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-twl-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-14/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-14/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arls-5/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arls-5/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adlp-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-rplp-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-rplp-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-mtlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-mtlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-jsl-3/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-jsl-3/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-11/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">FAIL</a> +4 other tests fail</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arlh-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arlh-2/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 other tests fail</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adlp-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adlp-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-arlh-2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-arlh-2/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> +47 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-x1275/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-x1275/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-adlp-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-adlp-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-kbl-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-kbl-2/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-8809g/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-8809g/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">FAIL</a> +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +4 other tests fail</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +4 other tests fail</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_busy@basic@flip.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550">i915#4550</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">FAIL</a> +26 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/fi-kbl-x1275/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/fi-kbl-x1275/igt@kms_hdmi_inject@inject-audio.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138754v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-atsm-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-atsm-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-atsm-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13679">i915#13679</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +15 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16157/bat-apl-1/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v9/bat-apl-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16157 -&gt; Patchwork_138754v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16157: 2050e0325a3fa692d86d64e8d05d10b6959166d7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8238: 7df82badac410a7ce2505df6064d44f0e094650c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_138754v9: 2050e0325a3fa692d86d64e8d05d10b6959166d7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8331262828925453281==--
