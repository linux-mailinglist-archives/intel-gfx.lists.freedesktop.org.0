Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6F721173F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 02:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CAC6E509;
	Thu,  2 Jul 2020 00:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B6256E507;
 Thu,  2 Jul 2020 00:37:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D8F4A47DF;
 Thu,  2 Jul 2020 00:37:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 02 Jul 2020 00:37:32 -0000
Message-ID: <159365025241.5656.15098865438247138429@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_DG1_=28rev3=29?=
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

Series: Introduce DG1 (rev3)
URL   : https://patchwork.freedesktop.org/series/77496/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8689 -> Patchwork_18063
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18063/index.html

Known issues
------------

  Here are the changes found in Patchwork_18063 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8689/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18063/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8689/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18063/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][5] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8689/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18063/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][7] ([i915#62] / [i915#92]) -> [DMESG-WARN][8] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8689/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18063/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][10] ([i915#62] / [i915#92]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8689/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18063/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8689 -> Patchwork_18063

  CI-20190529: 20190529
  CI_DRM_8689: 5be0c5eb5635e500c571bea544c850d54d7d4d47 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5719: 54731f017df8660f29cc8f5db0b570239729e808 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18063: 9f3c06617494d353e430dd4cc5974579417955b9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9f3c06617494 drm/i915/dg1: DG1 does not support DC6
52c58ad484ed drm/i915/dg1: Add initial DG1 workarounds
352b53d3a545 drm/i915/rkl: Add initial workarounds
f4b22e8c57b9 drm/i915/dg1: Load DMC
0b374a4ce084 drm/i915/dg1: enable PORT C/D aka D/E
6d2de4a643ed drm/i915/dg1: map/unmap pll clocks
f3a63ae610cb drm/i915/dg1: provide port/phy mapping for vbt
b94b0daa426b drm/i915/dg1: Update voltage swing tables for DP
e9d9d678ccbb drm/i915/dg1: Update comp master/slave relationships for PHYs
d9fee22a3149 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
28762e8057ef drm/i915/dg1: Enable first 2 ports for DG1
dc4378f76bda drm/i915/dg1: gmbus pin mapping
bebd570390ca drm/i915/dg1: invert HPD pins
29d541db7fa4 drm/i915/dg1: add hpd interrupt handling
c1bd97f322b5 drm/i915/dg1: Enable DPLL for DG1
82d28e83c02c drm/i915/dg1: Add and setup DPLLs for DG1
c62a0b547629 drm/i915/dg1: Add DPLL macros for DG1
4aa9f50249e2 drm/i915/dg1: Wait for pcode/uncore handshake at startup
5286f7943bfa drm/i915/dg1: Increase mmio size to 4MB
322b9085eff2 drm/i915/dg1: Add DG1 power wells
fedac7296bd4 drm/i915/dg1: Define MOCS table for DG1
cf65ad570c8c drm/i915/dg1: Initialize RAWCLK properly
c34b0b236cf6 drm/i915/dg1: Add fake PCH
6a75112b7aed drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
e24161cc3641 drm/i915/dg1: add support for the master unit interrupt
c6bda5d540fd drm/i915/dg1: Add DG1 PCI IDs
241025556ca5 drm/i915/dg1: add initial DG-1 definitions
988d01bfbd82 drm/i915: Add has_master_unit_irq flag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18063/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
