Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDC53DDBD8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 17:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8D26E1D2;
	Mon,  2 Aug 2021 15:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 143FE6E081;
 Mon,  2 Aug 2021 15:05:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CFE9A00F5;
 Mon,  2 Aug 2021 15:05:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7525715441027405031=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Aug 2021 15:05:21 -0000
Message-ID: <162791672104.3900.18325485429390854788@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210802133551.1904964-1-imre.deak@intel.com>
In-Reply-To: <20210802133551.1904964-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZmJk?=
 =?utf-8?q?ev/efifb=3A_Release_PCI_device=27s_runtime_PM_ref_during_FB_des?=
 =?utf-8?q?troy?=
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

--===============7525715441027405031==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fbdev/efifb: Release PCI device's runtime PM ref during FB destroy
URL   : https://patchwork.freedesktop.org/series/93307/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10437 -> Patchwork_20760
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/index.html

Known issues
------------

  Here are the changes found in Patchwork_20760 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [PASS][2] -> [INCOMPLETE][3] ([i915#299])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][4] ([i915#2403] / [i915#2505] / [i915#2722])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-glk-dsi:         [SKIP][5] ([fdo#109271]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-7500u:       [SKIP][7] ([fdo#109271]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-kbl-soraka:      [SKIP][9] ([fdo#109271]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-hsw-4770:        [SKIP][11] ([fdo#109271]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bxt-dsi:         [SKIP][13] ([fdo#109271]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {fi-tgl-dsi}:       [SKIP][15] ([i915#579]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-7500u:       [FAIL][17] ([i915#579]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html
    - fi-cml-u2:          [FAIL][19] ([i915#579]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
    - fi-bxt-dsi:         [FAIL][21] ([i915#579]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-hsw-4770:        [FAIL][23] ([i915#579]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-1115g4:      [FAIL][25] ([i915#579]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-guc:         [FAIL][27] ([i915#579]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-guc:         [FAIL][29] ([i915#579]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-u2:          [FAIL][31] ([i915#579]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8700k:       [FAIL][33] ([i915#579]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-y:           [FAIL][35] ([i915#579]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-icl-y/igt@i915_pm_rpm@basic-rte.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-icl-y/igt@i915_pm_rpm@basic-rte.html
    - {fi-ehl-2}:         [FAIL][37] ([i915#579]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-ehl-2/igt@i915_pm_rpm@basic-rte.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-ehl-2/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-6700k2:      [FAIL][39] ([i915#579]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html
    - {fi-tgl-dsi}:       [FAIL][41] ([i915#579]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-glk-dsi:         [FAIL][43] ([i915#579]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-x1275:       [FAIL][45] ([i915#579]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html
    - fi-bsw-kefka:       [FAIL][47] ([i915#3855]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8109u:       [FAIL][49] ([i915#579]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-soraka:      [FAIL][51] ([i915#579]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [SKIP][53] ([fdo#109271]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
    - {fi-hsw-gt1}:       [SKIP][55] ([fdo#109271]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8700k:       [SKIP][57] ([fdo#109271]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-kefka:       [SKIP][59] ([fdo#109271]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-x1275:       [SKIP][61] ([fdo#109271]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-u2:          [SKIP][63] ([i915#579]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html
    - {fi-ehl-2}:         [SKIP][65] ([i915#3844]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-ehl-2/igt@i915_pm_rpm@module-reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-ehl-2/igt@i915_pm_rpm@module-reload.html
    - fi-skl-guc:         [SKIP][67] ([fdo#109271]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6700k2:      [SKIP][69] ([fdo#109271]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [SKIP][71] ([fdo#109271]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-icl-y:           [SKIP][73] ([i915#579]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-1115g4:      [SKIP][75] ([i915#579]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
    - fi-cml-u2:          [SKIP][77] ([i915#579]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cml-u2/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-guc:         [SKIP][79] ([fdo#109271]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][81] ([i915#2782] / [i915#2940]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][83] ([i915#3303]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][85] ([i915#579]) -> [SKIP][86] ([fdo#109271])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3013]: https://gitlab.freedesktop.org/drm/intel/issues/3013
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3844]: https://gitlab.freedesktop.org/drm/intel/issues/3844
  [i915#3855]: https://gitlab.freedesktop.org/drm/intel/issues/3855
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10437 -> Patchwork_20760

  CI-20190529: 20190529
  CI_DRM_10437: fe234200649024b4fb5164d99eca74d62ae696d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20760: 1c4ced7e4cb6ea14a4d662ab6865c0b9450a86da @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1c4ced7e4cb6 fbdev/efifb: Release PCI device's runtime PM ref during FB destroy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/index.html

--===============7525715441027405031==
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
<tr><td><b>Series:</b></td><td>fbdev/efifb: Release PCI device&#39;s runtime PM ref during FB destroy</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93307/">https://patchwork.freedesktop.org/series/93307/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10437 -&gt; Patchwork_20760</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20760 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-7500u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-soraka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bxt-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-icl-y/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-icl-y/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-ehl-2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-ehl-2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3855">i915#3855</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-ehl-2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3844">i915#3844</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-ehl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-icl-y/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-icl-y/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-cml-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-cml-u2/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20760/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10437 -&gt; Patchwork_20760</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10437: fe234200649024b4fb5164d99eca74d62ae696d4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20760: 1c4ced7e4cb6ea14a4d662ab6865c0b9450a86da @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1c4ced7e4cb6 fbdev/efifb: Release PCI device's runtime PM ref during FB destroy</p>

</body>
</html>

--===============7525715441027405031==--
