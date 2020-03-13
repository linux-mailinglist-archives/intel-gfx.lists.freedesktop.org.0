Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1569184012
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 05:47:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06CD16E1BB;
	Fri, 13 Mar 2020 04:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B9E556E1BB;
 Fri, 13 Mar 2020 04:47:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA3BFA00C7;
 Fri, 13 Mar 2020 04:47:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 13 Mar 2020 04:47:47 -0000
Message-ID: <158407486766.30351.8152774869169676060@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312140702.14028-1-anshuman.gupta@intel.com>
In-Reply-To: <20200312140702.14028-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5_lpsp_support_for_lpsp_igt_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: i915 lpsp support for lpsp igt (rev2)
URL   : https://patchwork.freedesktop.org/series/74648/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8132 -> Patchwork_16959
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16959 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16959, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16959:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
    - fi-hsw-peppy:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html
    - fi-kbl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
    - fi-bsw-kefka:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
    - fi-snb-2520m:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
    - fi-bsw-nick:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
    - fi-ilk-650:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-ilk-650/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-ilk-650/igt@debugfs_test@read_all_entries.html
    - fi-bsw-n3050:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
    - fi-hsw-4770:        [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-hsw-4770/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-glk-dsi:         [PASS][19] -> [FAIL][20] +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-r:           [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-r/igt@i915_pm_rpm@basic-pci-d3-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-r/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-guc:         [PASS][23] -> [FAIL][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-icl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-7500u:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-soraka:      [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-x1275:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-7500u:       [PASS][31] -> [CRASH][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-r:           [PASS][33] -> [CRASH][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-r/igt@i915_pm_rpm@basic-rte.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-r/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-guc:         [PASS][35] -> [CRASH][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-icl-guc/igt@i915_pm_rpm@basic-rte.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-icl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-bxt-dsi:         [PASS][37] -> [FAIL][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-guc:         [PASS][39] -> [CRASH][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-guc:         [PASS][41] -> [CRASH][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8700k:       [PASS][43] -> [CRASH][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-y:           NOTRUN -> [CRASH][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-icl-y/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-6700k2:      [PASS][46] -> [CRASH][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-x1275:       [PASS][48] -> [CRASH][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html
    - fi-apl-guc:         [PASS][50] -> [CRASH][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-apl-guc/igt@i915_pm_rpm@basic-rte.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-apl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-6600u:       [PASS][52] -> [CRASH][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-6600u/igt@i915_pm_rpm@basic-rte.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-skl-6600u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-soraka:      [PASS][54] -> [CRASH][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [PASS][56] -> [FAIL][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8700k:       [PASS][58] -> [FAIL][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
    - fi-icl-dsi:         [PASS][60] -> [FAIL][61] +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
    - fi-skl-guc:         [PASS][62] -> [FAIL][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6700k2:      [PASS][64] -> [FAIL][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [PASS][66] -> [FAIL][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-icl-y:           NOTRUN -> [FAIL][68] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-cml-s:           [PASS][69] -> [SKIP][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-cml-s/igt@i915_pm_rpm@module-reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-cml-s/igt@i915_pm_rpm@module-reload.html
    - fi-cml-u2:          [PASS][71] -> [SKIP][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
    - fi-apl-guc:         [PASS][73] -> [FAIL][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][75]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-hsw-peppy/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-snb-2520m/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-byt-j1900/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-gdg-551:         [SKIP][81] ([fdo#109271]) -> [FAIL][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-gdg-551/igt@i915_pm_rpm@basic-rte.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-gdg-551/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-pnv-d510:        [SKIP][83] ([fdo#109271]) -> [FAIL][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-pnv-d510/igt@i915_pm_rpm@module-reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-pnv-d510/igt@i915_pm_rpm@module-reload.html
    - fi-blb-e6850:       [SKIP][85] ([fdo#109271]) -> [FAIL][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html
    - fi-icl-u2:          [DMESG-WARN][87] ([i915#289]) -> [SKIP][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {fi-ehl-1}:         [PASS][89] -> [INCOMPLETE][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-ehl-1/igt@debugfs_test@read_all_entries.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-ehl-1/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@basic-rte:
    - {fi-tgl-u}:         [PASS][91] -> [CRASH][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-tgl-u/igt@i915_pm_rpm@basic-rte.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-tgl-u/igt@i915_pm_rpm@basic-rte.html
    - {fi-tgl-dsi}:       [PASS][93] -> [FAIL][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - {fi-tgl-u}:         [PASS][95] -> [FAIL][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-tgl-u/igt@i915_pm_rpm@module-reload.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-tgl-u/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][97]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16959 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-snb-2600:        [PASS][98] -> [INCOMPLETE][99] ([i915#82])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-snb-2600/igt@debugfs_test@read_all_entries.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-snb-2600/igt@debugfs_test@read_all_entries.html
    - fi-byt-j1900:       [PASS][100] -> [INCOMPLETE][101] ([i915#45])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-byt-j1900/igt@debugfs_test@read_all_entries.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-byt-j1900/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-tgl-y:           [PASS][102] -> [CRASH][103] ([CI#94])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-tgl-y/igt@i915_pm_rpm@basic-rte.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-tgl-y/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-y:           [PASS][104] -> [FAIL][105] ([CI#94]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-x1275:       [PASS][106] -> [FAIL][107] ([i915#596])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-7500u:       [PASS][108] -> [FAIL][109] ([i915#596])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-soraka:      [PASS][110] -> [FAIL][111] ([i915#596])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-r:           [PASS][112] -> [FAIL][113] ([i915#596])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-r/igt@i915_pm_rpm@module-reload.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-r/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-8809g:       [PASS][114] -> [SKIP][115] ([fdo#109271])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-y:           [INCOMPLETE][116] -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-icl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-icl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][118] ([fdo#103927] / [i915#656]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][120] ([i915#323]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8132/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#596]: https://gitlab.freedesktop.org/drm/intel/issues/596
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (48 -> 38)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (11): fi-bdw-5557u fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-cfl-8109u fi-elk-e7500 fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5506 -> IGTPW_4300
  * Linux: CI_DRM_8132 -> Patchwork_16959

  CI-20190529: 20190529
  CI_DRM_8132: 72014335c2758a20db6107314352afb5951f1c55 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4300: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4300/index.html
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16959: 682ea86063da4f6ce8a77fa3deac7dd333533330 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

682ea86063da drm/i915: Add i915_lpsp_info debugfs
9199409798de drm/i915: Power well id for ICL PG3

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16959/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
