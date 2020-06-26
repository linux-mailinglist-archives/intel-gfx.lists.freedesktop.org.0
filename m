Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A02920B3CB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0401B6ECAC;
	Fri, 26 Jun 2020 14:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EAB1C6ECAD;
 Fri, 26 Jun 2020 14:40:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E29F7A00FD;
 Fri, 26 Jun 2020 14:40:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joerg Roedel" <joro@8bytes.org>
Date: Fri, 26 Jun 2020 14:40:21 -0000
Message-ID: <159318242192.22985.17120635021148186988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625130836.1916-1-joro@8bytes.org>
In-Reply-To: <20200625130836.1916-1-joro@8bytes.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaW9t?=
 =?utf-8?q?mu=3A_Remove_usage_of_dev-=3Earchdata=2Eiommu?=
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

Series: iommu: Remove usage of dev->archdata.iommu
URL   : https://patchwork.freedesktop.org/series/78822/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8667 -> Patchwork_18026
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/index.html

Known issues
------------

  Here are the changes found in Patchwork_18026 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_store@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-tgl-y/igt@gem_exec_store@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-tgl-y/igt@gem_exec_store@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-apl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#1242])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-tgl-u2:          [PASS][7] -> [FAIL][8] ([i915#1888])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-byt-n2820:       [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-byt-n2820/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-byt-n2820/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@gem_render_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][15] ([i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-tgl-y/igt@gem_render_linear_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-tgl-y/igt@gem_render_linear_blits@basic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][20] ([i915#62] / [i915#92]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92]) -> [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-kbl-x1275/igt@kms_flip@basic-plain-flip@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-kbl-x1275/igt@kms_flip@basic-plain-flip@a-dp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#1982] / [i915#62] / [i915#92]) -> [DMESG-WARN][24] ([i915#62] / [i915#92])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8667/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1242]: https://gitlab.freedesktop.org/drm/intel/issues/1242
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8667 -> Patchwork_18026

  CI-20190529: 20190529
  CI_DRM_8667: 57a1fc457c260002189382a406e920465d540d53 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18026: 1cd7039a67696ccd0d9c7dde67aac0b868c40220 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1cd7039a6769 powerpc/dma: Remove dev->archdata.iommu_domain
c154e15c0d13 arm64: Remove dev->archdata.iommu pointer
e36fe82cd6d3 arm: Remove dev->archdata.iommu pointer
beb0e5de86ca ia64: Remove dev->archdata.iommu pointer
b86f57d96a87 x86: Remove dev->archdata.iommu pointer
be1951b09735 iommu/mediatek: Do no use dev->archdata.iommu
d14eb31e19bb iommu/pamu: Use dev_iommu_priv_get/set()
df87e91a4c59 iommu/tegra: Use dev_iommu_priv_get/set()
3168eb5065df iommu/rockchip: Use dev_iommu_priv_get/set()
79dfab955ac4 iommu/omap: Use dev_iommu_priv_get/set()
000b842cda59 iommu/msm: Use dev_iommu_priv_get/set()
751d62a601db iommu/vt-d: Use dev_iommu_priv_get/set()
ea59789bb2c8 iommu/exynos: Use dev_iommu_priv_get/set()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18026/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
