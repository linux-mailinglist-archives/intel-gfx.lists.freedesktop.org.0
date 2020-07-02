Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A3B211DFA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 10:20:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71EA66E11D;
	Thu,  2 Jul 2020 08:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DCBA6E11D;
 Thu,  2 Jul 2020 08:20:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67FDCA7DFD;
 Thu,  2 Jul 2020 08:20:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 02 Jul 2020 08:20:31 -0000
Message-ID: <159367803139.5657.10000924408221276651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_DG1_=28rev4=29?=
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

Series: Introduce DG1 (rev4)
URL   : https://patchwork.freedesktop.org/series/77496/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8691 -> Patchwork_18064
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/index.html

Known issues
------------

  Here are the changes found in Patchwork_18064 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][7] ([i915#1888]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92]) -> [DMESG-WARN][12] ([i915#62] / [i915#92] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8691/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8691 -> Patchwork_18064

  CI-20190529: 20190529
  CI_DRM_8691: 65f4b41f875158ce36b3571700c0f39e8321332a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5719: 54731f017df8660f29cc8f5db0b570239729e808 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18064: 18c2a8bf107b64041778f658bacc2631ef8a9268 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

18c2a8bf107b drm/i915/dg1: DG1 does not support DC6
838479249b59 drm/i915/dg1: Add initial DG1 workarounds
2b7a3b38daa6 drm/i915/rkl: Add initial workarounds
3405f35bf028 drm/i915/dg1: Load DMC
667ccc4421b2 drm/i915/dg1: enable PORT C/D aka D/E
75b64397b636 drm/i915/dg1: map/unmap pll clocks
4d0feb983cfb drm/i915/dg1: provide port/phy mapping for vbt
29631f3b16ff drm/i915/dg1: Update voltage swing tables for DP
2cefb9635321 drm/i915/dg1: Update comp master/slave relationships for PHYs
4815d78bced9 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
ef8b7dbd1018 drm/i915/dg1: Enable first 2 ports for DG1
5d8f741133ed drm/i915/dg1: gmbus pin mapping
87e49290c0ab drm/i915/dg1: invert HPD pins
453927842498 drm/i915/dg1: add hpd interrupt handling
51e0bbafd49f drm/i915/dg1: Enable DPLL for DG1
b35df30e60c1 drm/i915/dg1: Add and setup DPLLs for DG1
29c1c8aa23b1 drm/i915/dg1: Add DPLL macros for DG1
3a7db869077a drm/i915/dg1: Wait for pcode/uncore handshake at startup
c37b1fbd6e4c drm/i915/dg1: Increase mmio size to 4MB
b0d4b22e21ca drm/i915/dg1: Add DG1 power wells
b570a1e5a878 drm/i915/dg1: Define MOCS table for DG1
2fb5c0ccb1b8 drm/i915/dg1: Initialize RAWCLK properly
c3c8cdac1377 drm/i915/dg1: Add fake PCH
a4e7d1e63681 drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
7645aba86977 drm/i915/dg1: add support for the master unit interrupt
09d7a3bcfa1c drm/i915/dg1: Add DG1 PCI IDs
a57df38e220b drm/i915/dg1: add initial DG-1 definitions
dbe37e6fd3b8 drm/i915: Add has_master_unit_irq flag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18064/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
