Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0055C1FDC45
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 03:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52ADD6EA3D;
	Thu, 18 Jun 2020 01:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF9BE6EA3C;
 Thu, 18 Jun 2020 01:18:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E921CA0091;
 Thu, 18 Jun 2020 01:18:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 18 Jun 2020 01:18:24 -0000
Message-ID: <159244310495.22461.1986226893136778661@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_DG1_=28rev2=29?=
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

Series: Introduce DG1 (rev2)
URL   : https://patchwork.freedesktop.org/series/77496/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8639 -> Patchwork_17985
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17985 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17985, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17985:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-skl-lmem:        [PASS][1] -> [DMESG-WARN][2] +31 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-tgl-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17985 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][11] ([fdo#109271]) -> [DMESG-FAIL][12] ([i915#62] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-ilk-m540 fi-cml-s fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8639 -> Patchwork_17985

  CI-20190529: 20190529
  CI_DRM_8639: 47584e59cf51ec499d68a4cefbaf447448ce2894 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17985: a976a97be22b2b60c6ba1f42db1c5fc110958ba0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a976a97be22b drm/i915/dg1: DG1 does not support DC6
277c534f9b87 drm/i915/dg1: Add initial DG1 workarounds
ad0d140c9965 drm/i915/dg1: Load DMC
a1377be54bdb drm/i915/dg1: enable PORT C/D aka D/E
6313b83c0806 drm/i915/dg1: map/unmap pll clocks
ee62584fb237 drm/i915/dg1: provide port/phy mapping for vbt
2d8d3581a563 drm/i915/dg1: Update voltage swing tables for DP
f2cac2139aff drm/i915/dg1: Update comp master/slave relationships for PHYs
5a0cc1900a4f drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
9f15f4f45591 drm/i915/dg1: Enable first 2 ports for DG1
592dd39473a7 drm/i915/dg1: gmbus pin mapping
c56090c99ac7 drm/i915/dg1: invert HPD pins
eb5057fd8085 drm/i915/dg1: add hpd interrupt handling
955fe7def921 drm/i915/dg1: Enable DPLL for DG1
67f3b147ced0 drm/i915/dg1: Add and setup DPLLs for DG1
bdec0b31b8b0 drm/i915/dg1: Add DPLL macros for DG1
63bc63bff441 drm/i915/dg1: Wait for pcode/uncore handshake at startup
9e17457108d4 drm/i915/dg1: Increase mmio size to 4MB
95dc688fbad0 drm/i915/dg1: Add DG1 power wells
40ff297509d4 drm/i915/dg1: Define MOCS table for DG1
e1eb70f5e961 drm/i915/dg1: Initialize RAWCLK properly
1a41b5d5a734 drm/i915/dg1: Add fake PCH
e45165e0ecea drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
e5efb9b1d3a3 drm/i915/dg1: add support for the master unit interrupt
1f9863075fc5 drm/i915/dg1: Add DG1 PCI IDs
5e175aa8a3f1 drm/i915/dg1: add initial DG-1 definitions
8f27f0ec2180 drm/i915: Add has_master_unit_irq flag
bc9a17f57138 drm/i915/rkl: Add Wa_14011224835 for PHY B initialization
0dcdc976291d drm/i915/rkl: Add initial workarounds
266c7f569e81 drm/i915/rkl: Handle HTI
b533bd97f161 drm/i915/rkl: Add DPLL4 support
0168a6dc120d drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17985/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
