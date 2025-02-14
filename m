Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 877B0A3641A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 18:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D8310E4AB;
	Fri, 14 Feb 2025 17:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0615510E354;
 Fri, 14 Feb 2025 17:09:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0071602257880782527=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Introduce_drm_sharpness_p?=
 =?utf-8?q?roperty_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2025 17:09:59 -0000
Message-ID: <173955299901.2105557.4000230447065253783@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250214150924.1811372-1-nemesa.garg@intel.com>
In-Reply-To: <20250214150924.1811372-1-nemesa.garg@intel.com>
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

--===============0071602257880782527==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce drm sharpness property (rev8)
URL   : https://patchwork.freedesktop.org/series/138754/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16136 -> Patchwork_138754v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_138754v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138754v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/index.html

Participating hosts (42 -> 42)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138754v8:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-elk-e7500:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - bat-adls-6:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adls-6/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adls-6/igt@debugfs_test@read_all_entries.html
    - bat-jsl-1:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-jsl-1/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-jsl-1/igt@debugfs_test@read_all_entries.html
    - fi-tgl-1115g4:      [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
    - fi-blb-e6850:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
    - fi-bsw-n3050:       [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
    - bat-arlh-3:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arlh-3/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arlh-3/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        NOTRUN -> [ABORT][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - bat-dg1-7:          [PASS][16] -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg1-7/igt@debugfs_test@read_all_entries.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg1-7/igt@debugfs_test@read_all_entries.html
    - fi-glk-j4005:       [PASS][18] -> [ABORT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
    - bat-twl-1:          [PASS][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-twl-1/igt@debugfs_test@read_all_entries.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-twl-1/igt@debugfs_test@read_all_entries.html
    - fi-bsw-nick:        [PASS][22] -> [ABORT][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
    - bat-rplp-1:         [PASS][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-rplp-1/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-rplp-1/igt@debugfs_test@read_all_entries.html
    - fi-rkl-11600:       [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
    - bat-jsl-3:          [PASS][28] -> [ABORT][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-jsl-3/igt@debugfs_test@read_all_entries.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-jsl-3/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][30] -> [ABORT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-ilk-650/igt@i915_module_load@load.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-ilk-650/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][32] -> [ABORT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-hsw-4770/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-ivb-3770/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-ivb-3770/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-kbl-2:          [PASS][36] -> [FAIL][37] +4 other tests fail
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
    - bat-arlh-2:         [PASS][38] -> [FAIL][39] +2 other tests fail
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arlh-2/igt@i915_pm_rpm@module-reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arlh-2/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-11:        [PASS][40] -> [FAIL][41] +2 other tests fail
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-11/igt@i915_pm_rpm@module-reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-kbl-guc:         [PASS][42] -> [DMESG-WARN][43] +39 other tests dmesg-warn
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-guc/igt@i915_selftest@live@client.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@dmabuf:
    - bat-arlh-2:         [PASS][44] -> [DMESG-WARN][45] +39 other tests dmesg-warn
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arlh-2/igt@i915_selftest@live@dmabuf.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arlh-2/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [PASS][46] -> [DMESG-WARN][47] +39 other tests dmesg-warn
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-adlp-11:        [PASS][48] -> [DMESG-WARN][49] +7 other tests dmesg-warn
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-11/igt@i915_selftest@live@gt_timelines.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-11/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-dg1-6:          [PASS][50] -> [DMESG-WARN][51] +47 other tests dmesg-warn
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@perf:
    - fi-kbl-x1275:       [PASS][52] -> [DMESG-WARN][53] +39 other tests dmesg-warn
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-x1275/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - bat-kbl-2:          [PASS][54] -> [DMESG-WARN][55] +39 other tests dmesg-warn
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-kbl-2/igt@i915_selftest@live@requests.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-kbl-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@ring_submission:
    - fi-kbl-8809g:       [PASS][56] -> [DMESG-WARN][57] +39 other tests dmesg-warn
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-8809g/igt@i915_selftest@live@ring_submission.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-8809g/igt@i915_selftest@live@ring_submission.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-dg2-13:         [PASS][58] -> [FAIL][59] +6 other tests fail
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-mtlp-6:         [PASS][60] -> [FAIL][61] +4 other tests fail
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-8809g:       [PASS][62] -> [FAIL][63] +4 other tests fail
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-guc:         [PASS][64] -> [FAIL][65] +4 other tests fail
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
    - bat-dg1-6:          [PASS][66] -> [FAIL][67] +4 other tests fail
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@basic-rte:
    - fi-kbl-x1275:       [PASS][68] -> [FAIL][69] +3 other tests fail
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - bat-dg2-13:         [SKIP][70] ([Intel XE#484] / [i915#4550]) -> [FAIL][71] +1 other test fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-x1275:       [SKIP][72] -> [FAIL][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-x1275/igt@kms_hdmi_inject@inject-audio.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-x1275/igt@kms_hdmi_inject@inject-audio.html

  
Known issues
------------

  Here are the changes found in Patchwork_138754v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-cfl-8109u:       [PASS][74] -> [ABORT][75] ([i915#13525])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7567u:       [PASS][76] -> [ABORT][77] ([i915#13525])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
    - bat-dg2-8:          [PASS][78] -> [ABORT][79] ([i915#13525])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-8/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][80] -> [ABORT][81] ([i915#13525])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
    - bat-arls-6:         [PASS][82] -> [ABORT][83] ([i915#13525])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arls-6/igt@debugfs_test@read_all_entries.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arls-6/igt@debugfs_test@read_all_entries.html
    - bat-adlp-9:         [PASS][84] -> [ABORT][85] ([i915#13525])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-9/igt@debugfs_test@read_all_entries.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-9/igt@debugfs_test@read_all_entries.html
    - bat-rpls-4:         [PASS][86] -> [ABORT][87] ([i915#13525])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-rpls-4/igt@debugfs_test@read_all_entries.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-rpls-4/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][88] -> [ABORT][89] ([i915#13525])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - bat-apl-1:          [PASS][90] -> [ABORT][91] ([i915#13525])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-apl-1/igt@debugfs_test@read_all_entries.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-apl-1/igt@debugfs_test@read_all_entries.html
    - bat-dg2-14:         [PASS][92] -> [ABORT][93] ([i915#13525])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-14/igt@debugfs_test@read_all_entries.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-14/igt@debugfs_test@read_all_entries.html
    - bat-arls-5:         [PASS][94] -> [ABORT][95] ([i915#13525])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arls-5/igt@debugfs_test@read_all_entries.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arls-5/igt@debugfs_test@read_all_entries.html
    - bat-adlp-6:         [PASS][96] -> [ABORT][97] ([i915#13525])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-6/igt@debugfs_test@read_all_entries.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-6/igt@debugfs_test@read_all_entries.html
    - bat-dg2-9:          [PASS][98] -> [ABORT][99] ([i915#13525])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-9/igt@debugfs_test@read_all_entries.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-9/igt@debugfs_test@read_all_entries.html
    - bat-dg2-11:         [PASS][100] -> [ABORT][101] ([i915#13525])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-11/igt@debugfs_test@read_all_entries.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-11/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live:
    - bat-adlp-11:        [PASS][102] -> [ABORT][103] ([i915#9413]) +1 other test abort
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-11/igt@i915_selftest@live.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-11/igt@i915_selftest@live.html

  
  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [i915#13525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525
  [i915#4550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_16136 -> Patchwork_138754v8

  CI-20190529: 20190529
  CI_DRM_16136: 371df966fcc8fbfb21725c2e5eb32b5c1eb12b36 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8230: 8230
  Patchwork_138754v8: 371df966fcc8fbfb21725c2e5eb32b5c1eb12b36 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/index.html

--===============0071602257880782527==
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
<tr><td><b>Series:</b></td><td>Introduce drm sharpness property (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138754/">https://patchwork.freedesktop.org/series/138754/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16136 -&gt; Patchwork_138754v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_138754v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_138754v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/index.html</p>
<h2>Participating hosts (42 -&gt; 42)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138754v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adls-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adls-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-jsl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-jsl-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-blb-e6850/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-blb-e6850/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arlh-3/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arlh-3/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg1-7/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg1-7/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-glk-j4005/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-glk-j4005/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-twl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-twl-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-rplp-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-rplp-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-jsl-3/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-jsl-3/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">FAIL</a> +4 other tests fail</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arlh-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arlh-2/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 other tests fail</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arlh-2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arlh-2/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-11/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-11/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> +7 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg1-6/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> +47 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-x1275/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-x1275/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-kbl-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-kbl-2/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-8809g/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-8809g/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">FAIL</a> +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-8809g/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +4 other tests fail</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +4 other tests fail</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg1-6/igt@kms_pm_rpm@basic-pci-d3-state.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-x1275/igt@kms_pm_rpm@basic-rte.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550">i915#4550</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-x1275/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-x1275/igt@kms_hdmi_inject@inject-audio.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138754v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-8/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arls-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arls-6/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-rpls-4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-rpls-4/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-apl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-apl-1/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-14/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-14/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-arls-5/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-arls-5/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-6/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-9/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-dg2-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-dg2-11/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16136/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138754v8/bat-adlp-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) +1 other test abort</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16136 -&gt; Patchwork_138754v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16136: 371df966fcc8fbfb21725c2e5eb32b5c1eb12b36 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8230: 8230<br />
  Patchwork_138754v8: 371df966fcc8fbfb21725c2e5eb32b5c1eb12b36 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0071602257880782527==--
