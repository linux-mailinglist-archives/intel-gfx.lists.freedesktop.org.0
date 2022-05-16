Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AE85283CF
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84CCB10E244;
	Mon, 16 May 2022 12:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74D7210E107;
 Mon, 16 May 2022 12:04:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C5A2A8830;
 Mon, 16 May 2022 12:04:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6856927321950797587=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Mon, 16 May 2022 12:04:48 -0000
Message-ID: <165270268841.21522.3613462076124909077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
In-Reply-To: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Prevent_system_hang_when_modesetting_disconnected_T?=
 =?utf-8?q?ype-C_ports?=
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

--===============6856927321950797587==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tc: Prevent system hang when modesetting disconnected Type-C ports
URL   : https://patchwork.freedesktop.org/series/104019/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11656 -> Patchwork_104019v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104019v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104019v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/index.html

Participating hosts (41 -> 43)
------------------------------

  Additional (4): bat-adlm-1 bat-adln-1 fi-rkl-11600 bat-dg2-9 
  Missing    (2): fi-elk-e7500 fi-bsw-n3050 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104019v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html
    - fi-skl-6600u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-skl-6600u/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-6600u/igt@kms_busy@basic@modeset.html
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
    - fi-ilk-650:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-ilk-650/igt@kms_busy@basic@modeset.html
    - fi-skl-6700k2:      [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-rkl-guc:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-rkl-guc/igt@kms_busy@basic@modeset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-guc/igt@kms_busy@basic@modeset.html
    - bat-dg1-6:          [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-dg1-6/igt@kms_busy@basic@modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg1-6/igt@kms_busy@basic@modeset.html
    - fi-hsw-g3258:       [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-hsw-g3258/igt@kms_busy@basic@modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-hsw-g3258/igt@kms_busy@basic@modeset.html
    - fi-bsw-kefka:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-guc/igt@kms_busy@basic@modeset.html
    - fi-bdw-5557u:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-bdw-5557u/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bdw-5557u/igt@kms_busy@basic@modeset.html
    - fi-rkl-11600:       NOTRUN -> [DMESG-WARN][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-11600/igt@kms_busy@basic@modeset.html
    - fi-cfl-8109u:       [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
    - fi-cfl-8700k:       [PASS][26] -> [DMESG-WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
    - fi-adl-ddr5:        [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-adl-ddr5/igt@kms_busy@basic@modeset.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-adl-ddr5/igt@kms_busy@basic@modeset.html
    - fi-glk-j4005:       [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-glk-j4005/igt@kms_busy@basic@modeset.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-glk-j4005/igt@kms_busy@basic@modeset.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
    - fi-bdw-gvtdvm:      [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
    - bat-dg1-5:          [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
#### Warnings ####

  * igt@kms_busy@basic@modeset:
    - bat-adlp-4:         [DMESG-WARN][40] ([i915#3576]) -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-adlp-4/igt@kms_busy@basic@modeset.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlp-4/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@modeset:
    - {bat-dg2-9}:        NOTRUN -> [DMESG-WARN][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg2-9/igt@kms_busy@basic@modeset.html
    - {bat-adlm-1}:       NOTRUN -> [DMESG-WARN][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlm-1/igt@kms_busy@basic@modeset.html
    - {bat-jsl-2}:        [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-jsl-2/igt@kms_busy@basic@modeset.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-jsl-2/igt@kms_busy@basic@modeset.html
    - {bat-jsl-1}:        [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-jsl-1/igt@kms_busy@basic@modeset.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-jsl-1/igt@kms_busy@basic@modeset.html
    - {fi-ehl-2}:         [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-ehl-2/igt@kms_busy@basic@modeset.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-ehl-2/igt@kms_busy@basic@modeset.html
    - {bat-rpls-2}:       [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-rpls-2/igt@kms_busy@basic@modeset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-rpls-2/igt@kms_busy@basic@modeset.html
    - {bat-adlp-6}:       [DMESG-WARN][52] ([i915#3576]) -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlp-6/igt@kms_busy@basic@modeset.html
    - {fi-jsl-1}:         [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-jsl-1/igt@kms_busy@basic@modeset.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-jsl-1/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - {bat-adln-1}:       NOTRUN -> [DMESG-WARN][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adln-1/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-dg2-8}:        [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_104019v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-snb-2600:        [PASS][59] -> [FAIL][60] ([i915#4338])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-snb-2600/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-snb-2600/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-rkl-11600:       NOTRUN -> [SKIP][61] ([i915#2190])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][62] ([i915#3282])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][63] -> [INCOMPLETE][64] ([i915#4785])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][65] -> [DMESG-FAIL][66] ([i915#4528])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][67] ([i915#4312])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][68] ([i915#4312])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-ilk-650/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][69] ([i915#4312])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][70] ([i915#4312])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][71] ([i915#4312] / [i915#5257])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][72] ([i915#4312] / [i915#5257])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][73] ([i915#4312] / [i915#5257])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-8109u/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][74] ([i915#4312] / [i915#5257])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg1-5/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][75] ([i915#4312])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][76] ([i915#4312])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-hsw-g3258/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][77] ([i915#4312] / [i915#5257])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][78] ([fdo#109271] / [i915#4312] / [i915#5594])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][79] ([i915#4312] / [i915#5257])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-guc/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][80] ([i915#4312])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlp-4/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][81] ([i915#4312])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][82] ([i915#4312])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-adl-ddr5/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][83] ([i915#4312] / [i915#5257])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg1-6/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][84] ([i915#4312] / [i915#5257])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-guc/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][85] ([i915#4312] / [i915#5257])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][86] ([i915#4312] / [i915#5257])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][87] ([i915#4312] / [i915#5257])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][88] ([i915#4312] / [i915#5257])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][89] ([i915#3576]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-adlp-6/igt@kms_busy@basic@flip.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594


Build changes
-------------

  * Linux: CI_DRM_11656 -> Patchwork_104019v1

  CI-20190529: 20190529
  CI_DRM_11656: 416780e079b848ddd4da752cb90b619b97eb773e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6472: c815c94f0ceb33ae852622538f0136cf44c5725d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104019v1: 416780e079b848ddd4da752cb90b619b97eb773e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7329eafbafb4 drm/i915: Reject the atomic modeset if an associated Type-C port is disconnected
7bcaf190f5b9 drm/i915/tc: Don't default disconnected legacy Type-C ports to TBT mode

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/index.html

--===============6856927321950797587==
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
<tr><td><b>Series:</b></td><td>drm/i915/tc: Prevent system hang when modesetting disconnected Type-C ports</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104019/">https://patchwork.freedesktop.org/series/104019/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11656 -&gt; Patchwork_104019v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104019v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_104019v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/index.html</p>
<h2>Participating hosts (41 -&gt; 43)</h2>
<p>Additional (4): bat-adlm-1 bat-adln-1 fi-rkl-11600 bat-dg2-9 <br />
  Missing    (2): fi-elk-e7500 fi-bsw-n3050 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104019v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-cfl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-skl-6600u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-6600u/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-kbl-soraka/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-soraka/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-ilk-650/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-skl-6700k2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-6700k2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-rkl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-guc/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-dg1-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg1-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-hsw-g3258/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-hsw-g3258/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-bsw-kefka/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bsw-kefka/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-skl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-guc/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-bdw-5557u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bdw-5557u/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-11600/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-cfl-8109u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-8109u/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-cfl-8700k/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-8700k/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-adl-ddr5/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-adl-ddr5/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-glk-j4005/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-glk-j4005/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_busy@basic@modeset:<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-adlp-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlp-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg2-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlm-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-jsl-2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-jsl-2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-jsl-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-jsl-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-ehl-2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-ehl-2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-rpls-2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-rpls-2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-jsl-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-jsl-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adln-1/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104019v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-snb-2600/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4338">i915#4338</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_busy@basic@flip:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11656/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104019v1/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11656 -&gt; Patchwork_104019v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11656: 416780e079b848ddd4da752cb90b619b97eb773e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6472: c815c94f0ceb33ae852622538f0136cf44c5725d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104019v1: 416780e079b848ddd4da752cb90b619b97eb773e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7329eafbafb4 drm/i915: Reject the atomic modeset if an associated Type-C port is disconnected<br />
7bcaf190f5b9 drm/i915/tc: Don't default disconnected legacy Type-C ports to TBT mode</p>

</body>
</html>

--===============6856927321950797587==--
