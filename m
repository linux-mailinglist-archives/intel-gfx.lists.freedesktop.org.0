Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F9757CBE5
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 15:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37BFC908DB;
	Thu, 21 Jul 2022 13:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 861DC908DB;
 Thu, 21 Jul 2022 13:29:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C61AA00CC;
 Thu, 21 Jul 2022 13:29:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3713518706575934284=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>
Date: Thu, 21 Jul 2022 13:29:46 -0000
Message-ID: <165841018647.29948.7828657379642298577@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_D3Cold-Off_support_for_runtime-pm_=28rev3=29?=
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

--===============3713518706575934284==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add D3Cold-Off support for runtime-pm (rev3)
URL   : https://patchwork.freedesktop.org/series/105427/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11933 -> Patchwork_105427v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105427v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105427v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/index.html

Participating hosts (47 -> 45)
------------------------------

  Additional (3): fi-kbl-soraka bat-adls-5 bat-jsl-3 
  Missing    (5): fi-hsw-4200u fi-icl-u2 fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105427v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-adl-ddr5:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-adl-ddr5/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-adl-ddr5/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-cfl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-cfl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bdw-5557u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bdw-5557u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bdw-5557u/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-rkl-guc:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-cfl-8700k:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bdw-gvtdvm:      [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bdw-gvtdvm/igt@i915_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bdw-gvtdvm/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-skl-guc:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-skl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - bat-adlp-4:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-hsw-g3258:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-hsw-g3258/igt@i915_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-hsw-g3258/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-glk-dsi:         [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-glk-j4005:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-rkl-11600:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-skl-6700k2:      [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-skl-6700k2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-6700k2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-cfl-8109u:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-cfl-8109u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-8109u/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-7567u:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-kbl-7567u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-7567u/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-8809g:       [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-kbl-8809g/igt@i915_pm_rpm@basic-pci-d3-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-8809g/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-adl-ddr5:        [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html
    - fi-rkl-guc:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-bsw-kefka:       [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html
    - bat-dg1-5:          [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-dg1-5/igt@i915_pm_rpm@basic-rte.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-dg1-5/igt@i915_pm_rpm@basic-rte.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {bat-adlp-6}:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-adlp-6/igt@i915_pm_rpm@basic-pci-d3-state.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adlp-6/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-jsl-3}:        NOTRUN -> [INCOMPLETE][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-jsl-3/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-dg2-8}:        [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-adlm-1}:       [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-jsl-1}:        [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {fi-jsl-1}:         [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-rpls-1}:       [PASS][52] -> [DMESG-WARN][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-rplp-1}:       [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-rplp-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-rplp-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-adls-5}:       NOTRUN -> [DMESG-WARN][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adls-5/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-dg2-9}:        [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-adln-1}:       [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-adln-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adln-1/igt@i915_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_105427v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][61] ([fdo#109271]) +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2190])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [PASS][63] -> [DMESG-WARN][64] ([i915#4391])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][65] ([i915#4391])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bxt-dsi:         [PASS][66] -> [DMESG-WARN][67] ([i915#4391])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-x1275:       [PASS][68] -> [DMESG-WARN][69] ([i915#4391])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-n3050:       [PASS][70] -> [INCOMPLETE][71] ([i915#5847])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-elk-e7500:       NOTRUN -> [SKIP][72] ([fdo#109271])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-elk-e7500/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][74] ([i915#4312])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adlp-4/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][75] ([i915#4312] / [i915#5257])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bxt-dsi/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][76] ([fdo#109271] / [i915#4312])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bsw-n3050/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][77] ([i915#4312] / [i915#5257])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-glk-dsi/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][78] ([i915#4312] / [i915#5257])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-glk-j4005/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][79] ([i915#4312])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-11600/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][80] ([i915#4312])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][81] ([fdo#109271] / [i915#4312] / [i915#5257])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][82] ([fdo#109271] / [i915#4312] / [i915#5257])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-x1275/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][83] ([i915#4312] / [i915#5257])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-6700k2/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][84] ([fdo#109271] / [i915#4312] / [i915#5257])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-8809g/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][85] ([i915#4312] / [i915#5257])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-6600u/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][86] ([i915#4312])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][87] ([i915#4312] / [i915#5257])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][88] ([fdo#109271] / [i915#4312] / [i915#5257])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][89] ([fdo#109271] / [i915#4312] / [i915#5257])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-8700k/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][90] ([i915#4312] / [i915#6246])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-hsw-g3258/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][91] ([i915#4312])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][92] ([i915#4312])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-elk-e7500:       [DMESG-FAIL][93] ([i915#4528]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-elk-e7500/igt@i915_selftest@live@requests.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-elk-e7500/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5847]: https://gitlab.freedesktop.org/drm/intel/issues/5847
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246


Build changes
-------------

  * Linux: CI_DRM_11933 -> Patchwork_105427v3

  CI-20190529: 20190529
  CI_DRM_11933: c631f4cc41b2981c245ef03c2baae78da61c7f70 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6594: 326629f105459f9bd201456a0454759628e6a43d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105427v3: c631f4cc41b2981c245ef03c2baae78da61c7f70 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c4775d4fa2c2 drm/i915 : Add D3COLD OFF support
6b216c48d3c3 drm/i915: Add i915_save/load_pci_state helpers
619f74133deb drm/i915/rpm: d3cold Policy
4ea694d3cc2b Drm/i915/rpm: Add intel_runtime_idle
e02349946a9b drm/i915: sanitize dc state in rpm resume
42076cfee81a drm/i915: Extend rpm in intel_guc_global_policies_update
4c97e79e13cc drm/i915: Guard rc6 helpers with is_intel_rpm_allowed
94e0c5c03db4 drm/i915: Added is_intel_rpm_allowed helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/index.html

--===============3713518706575934284==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add D3Cold-Off support for runtime-pm (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105427/">https://patchwork.freedesktop.org/series/105427/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11933 -&gt; Patchwork_105427v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105427v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_105427v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/index.html</p>
<h2>Participating hosts (47 -&gt; 45)</h2>
<p>Additional (3): fi-kbl-soraka bat-adls-5 bat-jsl-3 <br />
  Missing    (5): fi-hsw-4200u fi-icl-u2 fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105427v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-adl-ddr5/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-adl-ddr5/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-cfl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bdw-5557u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bdw-5557u/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bdw-gvtdvm/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bdw-gvtdvm/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-skl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-hsw-g3258/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-hsw-g3258/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-11600/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-skl-6700k2/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-6700k2/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-cfl-8109u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-8109u/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-kbl-7567u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-7567u/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-kbl-8809g/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-8809g/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-dg1-5/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-dg1-5/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-adlp-6/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adlp-6/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-jsl-3}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-jsl-3/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-rplp-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-rplp-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adls-5/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/bat-adln-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adln-1/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105427v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5847">i915#5847</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-elk-e7500/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11933/fi-elk-e7500/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105427v3/fi-elk-e7500/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11933 -&gt; Patchwork_105427v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11933: c631f4cc41b2981c245ef03c2baae78da61c7f70 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6594: 326629f105459f9bd201456a0454759628e6a43d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105427v3: c631f4cc41b2981c245ef03c2baae78da61c7f70 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c4775d4fa2c2 drm/i915 : Add D3COLD OFF support<br />
6b216c48d3c3 drm/i915: Add i915_save/load_pci_state helpers<br />
619f74133deb drm/i915/rpm: d3cold Policy<br />
4ea694d3cc2b Drm/i915/rpm: Add intel_runtime_idle<br />
e02349946a9b drm/i915: sanitize dc state in rpm resume<br />
42076cfee81a drm/i915: Extend rpm in intel_guc_global_policies_update<br />
4c97e79e13cc drm/i915: Guard rc6 helpers with is_intel_rpm_allowed<br />
94e0c5c03db4 drm/i915: Added is_intel_rpm_allowed helper</p>

</body>
</html>

--===============3713518706575934284==--
