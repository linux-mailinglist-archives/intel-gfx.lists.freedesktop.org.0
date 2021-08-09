Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 002C13E47EC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 16:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8869689C52;
	Mon,  9 Aug 2021 14:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D5E489C51;
 Mon,  9 Aug 2021 14:49:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 333A0A8830;
 Mon,  9 Aug 2021 14:49:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7975729044492025526=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Aug 2021 14:49:24 -0000
Message-ID: <162852056417.2459.1218814413071743418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210802133551.1904964-1-imre.deak@intel.com>
In-Reply-To: <20210802133551.1904964-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZmJk?=
 =?utf-8?q?ev/efifb=3A_Release_PCI_device=27s_runtime_PM_ref_during_FB_des?=
 =?utf-8?q?troy_=28rev2=29?=
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

--===============7975729044492025526==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fbdev/efifb: Release PCI device's runtime PM ref during FB destroy (rev2)
URL   : https://patchwork.freedesktop.org/series/93307/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10460 -> Patchwork_20786
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20786 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20786, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20786:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:
    - fi-rkl-11600:       [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_20786 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][3] ([fdo#109315]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [PASS][4] -> [FAIL][5] ([i915#1888])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-rkl-11600:       [PASS][6] -> [SKIP][7] ([i915#3180])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][8] ([i915#1888]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-glk-dsi:         [SKIP][10] ([fdo#109271]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-icl-u2:          [SKIP][12] ([i915#579]) -> [PASS][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-7500u:       [SKIP][14] ([fdo#109271]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-soraka:      [SKIP][16] ([fdo#109271]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-hsw-4770:        [SKIP][18] ([fdo#109271]) -> [PASS][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bxt-dsi:         [SKIP][20] ([fdo#109271]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {fi-tgl-dsi}:       [SKIP][22] ([i915#579]) -> [PASS][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-7500u:       [FAIL][24] ([i915#579]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html
    - fi-cml-u2:          [FAIL][26] ([i915#579]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
    - {fi-jsl-1}:         [FAIL][28] ([i915#579]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-jsl-1/igt@i915_pm_rpm@basic-rte.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-jsl-1/igt@i915_pm_rpm@basic-rte.html
    - fi-rkl-guc:         [FAIL][30] ([i915#3855]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-bxt-dsi:         [FAIL][32] ([i915#579]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-hsw-4770:        [FAIL][34] ([i915#579]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-1115g4:      [FAIL][36] ([i915#579]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-guc:         [FAIL][38] ([i915#579]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-guc:         [FAIL][40] ([i915#579]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-rkl-11600:       [FAIL][42] ([i915#3855]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8700k:       [FAIL][44] ([i915#579]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-y:           [FAIL][46] ([i915#579]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-y/igt@i915_pm_rpm@basic-rte.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-y/igt@i915_pm_rpm@basic-rte.html
    - {fi-ehl-2}:         [FAIL][48] ([i915#579]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-ehl-2/igt@i915_pm_rpm@basic-rte.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-ehl-2/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-6700k2:      [FAIL][50] ([i915#579]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-u2:          [FAIL][52] ([i915#579]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html
    - {fi-tgl-dsi}:       [FAIL][54] ([i915#579]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-glk-dsi:         [FAIL][56] ([i915#579]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-bsw-kefka:       [FAIL][58] ([i915#3855]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8109u:       [FAIL][60] ([i915#579]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-soraka:      [FAIL][62] ([i915#579]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [SKIP][64] ([fdo#109271]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
    - {fi-hsw-gt1}:       [SKIP][66] ([fdo#109271]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8700k:       [SKIP][68] ([fdo#109271]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-kefka:       [SKIP][70] ([fdo#109271]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
    - fi-rkl-11600:       [SKIP][72] ([i915#3844] / [i915#579]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
    - {fi-ehl-2}:         [SKIP][74] ([i915#3844]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-ehl-2/igt@i915_pm_rpm@module-reload.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-ehl-2/igt@i915_pm_rpm@module-reload.html
    - fi-skl-guc:         [SKIP][76] ([fdo#109271]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6700k2:      [SKIP][78] ([fdo#109271]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [SKIP][80] ([fdo#109271]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-icl-y:           [SKIP][82] ([i915#579]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-1115g4:      [SKIP][84] ([i915#579]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
    - {fi-jsl-1}:         [SKIP][86] ([i915#3844]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-jsl-1/igt@i915_pm_rpm@module-reload.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-jsl-1/igt@i915_pm_rpm@module-reload.html
    - fi-rkl-guc:         [SKIP][88] ([i915#3844] / [i915#579]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-guc/igt@i915_pm_rpm@module-reload.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-cml-u2:          [SKIP][90] ([i915#579]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-guc:         [SKIP][92] ([fdo#109271]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [DMESG-WARN][94] -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [INCOMPLETE][96] -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][98] ([i915#579]) -> [SKIP][99] ([fdo#109271])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3013]: https://gitlab.freedesktop.org/drm/intel/issues/3013
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3844]: https://gitlab.freedesktop.org/drm/intel/issues/3844
  [i915#3855]: https://gitlab.freedesktop.org/drm/intel/issues/3855
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10460 -> Patchwork_20786

  CI-20190529: 20190529
  CI_DRM_10460: 933d74e4ff60d39ff929b26780dca84412551174 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6163: 9f9d82df8c8e68c304e84aba717a9937b65e10e6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20786: 6a6bc1405f985b3c0ebbf26a91a166b002142f4d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6a6bc1405f98 fbdev/efifb: Release PCI device's runtime PM ref during FB destroy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/index.html

--===============7975729044492025526==
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
<tr><td><b>Series:</b></td><td>fbdev/efifb: Release PCI device&#39;s runtime PM ref during FB destroy (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93307/">https://patchwork.freedesktop.org/series/93307/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10460 -&gt; Patchwork_20786</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20786 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20786, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20786:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20786 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-jsl-1/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-jsl-1/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3855">i915#3855</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3855">i915#3855</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-y/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-y/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-ehl-2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-ehl-2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3855">i915#3855</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3844">i915#3844</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-ehl-2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3844">i915#3844</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-ehl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-y/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-y/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-jsl-1/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3844">i915#3844</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-jsl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3844">i915#3844</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-cml-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-cml-u2/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10460/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20786/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10460 -&gt; Patchwork_20786</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10460: 933d74e4ff60d39ff929b26780dca84412551174 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6163: 9f9d82df8c8e68c304e84aba717a9937b65e10e6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20786: 6a6bc1405f985b3c0ebbf26a91a166b002142f4d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6a6bc1405f98 fbdev/efifb: Release PCI device's runtime PM ref during FB destroy</p>

</body>
</html>

--===============7975729044492025526==--
