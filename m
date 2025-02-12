Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AF6A32E26
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 19:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D48E10E06A;
	Wed, 12 Feb 2025 18:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 982C610E951;
 Wed, 12 Feb 2025 18:07:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5468931927545309226=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Improve_type-safety_on_PO?=
 =?utf-8?q?WER=5FDOMAIN=5F*=28=29_macros?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2025 18:07:46 -0000
Message-ID: <173938366661.1375118.3044373417190929675@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250212132658.323640-1-gustavo.sousa@intel.com>
In-Reply-To: <20250212132658.323640-1-gustavo.sousa@intel.com>
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

--===============5468931927545309226==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Improve type-safety on POWER_DOMAIN_*() macros
URL   : https://patchwork.freedesktop.org/series/144726/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16121 -> Patchwork_144726v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_144726v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144726v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/index.html

Participating hosts (43 -> 42)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): bat-arlh-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144726v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-dg2-13:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-13/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-13/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-adlp-9/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-adlp-9/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-twl-2/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-twl-2/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-11/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-11/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-twl-1/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-twl-1/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-14/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-14/igt@i915_module_load@load.html
    - bat-arls-5:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-arls-5/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-arls-5/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-rplp-1/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-rplp-1/igt@i915_module_load@load.html
    - bat-arls-6:         [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-arls-6/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-arls-6/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-9/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-9/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-8/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-8/igt@i915_module_load@load.html
    - bat-adls-6:         [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-adls-6/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-adls-6/igt@i915_module_load@load.html

  * igt@kms_busy@basic:
    - bat-jsl-1:          [PASS][25] -> [ABORT][26] +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-jsl-1/igt@kms_busy@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-jsl-1/igt@kms_busy@basic.html
    - fi-bsw-n3050:       [PASS][27] -> [ABORT][28] +1 other test abort
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-bsw-n3050/igt@kms_busy@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-bsw-n3050/igt@kms_busy@basic.html
    - bat-dg1-7:          [PASS][29] -> [ABORT][30] +1 other test abort
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg1-7/igt@kms_busy@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg1-7/igt@kms_busy@basic.html
    - bat-rpls-4:         [PASS][31] -> [ABORT][32] +1 other test abort
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-rpls-4/igt@kms_busy@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-rpls-4/igt@kms_busy@basic.html
    - fi-rkl-11600:       [PASS][33] -> [ABORT][34] +1 other test abort
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-rkl-11600/igt@kms_busy@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-rkl-11600/igt@kms_busy@basic.html
    - bat-jsl-3:          [PASS][35] -> [ABORT][36] +1 other test abort
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-jsl-3/igt@kms_busy@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-jsl-3/igt@kms_busy@basic.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8700k:       [PASS][37] -> [ABORT][38] +1 other test abort
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - fi-bsw-nick:        [PASS][39] -> [ABORT][40] +1 other test abort
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-bsw-nick/igt@kms_busy@basic@flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-bsw-nick/igt@kms_busy@basic@flip.html
    - fi-tgl-1115g4:      [PASS][41] -> [ABORT][42] +1 other test abort
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-tgl-1115g4/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-dg1-7:          [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg1-7/igt@kms_busy@basic@modeset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg1-7/igt@kms_busy@basic@modeset.html
    - bat-jsl-3:          [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-jsl-3/igt@kms_busy@basic@modeset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-jsl-3/igt@kms_busy@basic@modeset.html
    - fi-glk-j4005:       [PASS][47] -> [ABORT][48] +1 other test abort
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-glk-j4005/igt@kms_busy@basic@modeset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-glk-j4005/igt@kms_busy@basic@modeset.html
    - bat-rpls-4:         [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-rpls-4/igt@kms_busy@basic@modeset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-rpls-4/igt@kms_busy@basic@modeset.html
    - fi-cfl-8700k:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
    - fi-bsw-nick:        [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-bsw-nick/igt@kms_busy@basic@modeset.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-bsw-nick/igt@kms_busy@basic@modeset.html
    - fi-rkl-11600:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-rkl-11600/igt@kms_busy@basic@modeset.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-rkl-11600/igt@kms_busy@basic@modeset.html
    - fi-tgl-1115g4:      [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
    - bat-jsl-1:          [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-jsl-1/igt@kms_busy@basic@modeset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-jsl-1/igt@kms_busy@basic@modeset.html
    - fi-bsw-n3050:       [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-bsw-n3050/igt@kms_busy@basic@modeset.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-adlm-1:         [PASS][63] -> [ABORT][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
    - bat-mtlp-6:         [PASS][65] -> [ABORT][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
    - bat-kbl-2:          [PASS][67] -> [ABORT][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-8809g:       [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][71] -> [ABORT][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-6:          [PASS][73] -> [ABORT][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-apl-1:          [PASS][75] -> [ABORT][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_144726v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-arlh-3:         [PASS][77] -> [INCOMPLETE][78] ([i915#1982])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-arlh-3/igt@i915_module_load@load.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-arlh-3/igt@i915_module_load@load.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:
    - fi-pnv-d510:        NOTRUN -> [SKIP][79] +33 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][80] -> [ABORT][81] ([i915#10553])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-cfl-guc:         [PASS][82] -> [ABORT][83] ([i915#10553])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-cfl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-cfl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-x1275:       [PASS][84] -> [ABORT][85] ([i915#10553])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-kbl-x1275/igt@kms_pm_rpm@basic-pci-d3-state.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-kbl-x1275/igt@kms_pm_rpm@basic-pci-d3-state.html
    - fi-cfl-8109u:       [PASS][86] -> [ABORT][87] ([i915#10553])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-cfl-8109u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-cfl-8109u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-adlp-11:        [DMESG-WARN][88] ([i915#13570]) -> [PASS][89] +1 other test pass
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-adlp-11/igt@i915_selftest@live.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-adlp-11/igt@i915_selftest@live.html

  
  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#13570]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13570
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_16121 -> Patchwork_144726v1

  CI-20190529: 20190529
  CI_DRM_16121: b9696aa14a67620661572e94f4141df2a4b6b5cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8228: 8228
  Patchwork_144726v1: b9696aa14a67620661572e94f4141df2a4b6b5cd @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/index.html

--===============5468931927545309226==
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
<tr><td><b>Series:</b></td><td>Improve type-safety on POWER_DOMAIN_*() macros</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/144726/">https://patchwork.freedesktop.org/series/144726/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16121 -&gt; Patchwork_144726v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_144726v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_144726v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): bat-arlh-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_144726v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-13/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-arls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-arls-5/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-arls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-arls-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-adls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-adls-6/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-jsl-1/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-jsl-1/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-bsw-n3050/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-bsw-n3050/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg1-7/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg1-7/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-rpls-4/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-rpls-4/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-rkl-11600/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-rkl-11600/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-jsl-3/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-jsl-3/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-cfl-8700k/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-bsw-nick/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-bsw-nick/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg1-7/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg1-7/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-jsl-3/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-jsl-3/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-glk-j4005/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-glk-j4005/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-rpls-4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-rpls-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-cfl-8700k/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-cfl-8700k/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-bsw-nick/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-bsw-nick/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-rkl-11600/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-rkl-11600/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-jsl-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-jsl-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-bsw-n3050/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-bsw-n3050/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144726v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-arlh-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-arlh-3/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html">SKIP</a> +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-cfl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-cfl-guc/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-kbl-x1275/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-kbl-x1275/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/fi-cfl-8109u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/fi-cfl-8109u/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/bat-adlp-11/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13570">i915#13570</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v1/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16121 -&gt; Patchwork_144726v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16121: b9696aa14a67620661572e94f4141df2a4b6b5cd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8228: 8228<br />
  Patchwork_144726v1: b9696aa14a67620661572e94f4141df2a4b6b5cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5468931927545309226==--
