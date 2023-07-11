Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BB274E580
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 05:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C9410E2FB;
	Tue, 11 Jul 2023 03:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1FCCA10E2F9;
 Tue, 11 Jul 2023 03:52:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA24AAADE1;
 Tue, 11 Jul 2023 03:52:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1775970619867859643=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Tue, 11 Jul 2023 03:52:46 -0000
Message-ID: <168904756666.18666.15717914442903586646@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230711023126.5531-1-yi.l.liu@intel.com>
In-Reply-To: <20230711023126.5531-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5o?=
 =?utf-8?q?ance_vfio_PCI_hot_reset_for_vfio_cdev_device_=28rev9=29?=
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

--===============1775970619867859643==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enhance vfio PCI hot reset for vfio cdev device (rev9)
URL   : https://patchwork.freedesktop.org/series/116991/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13366 -> Patchwork_116991v9
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-bsw-nick fi-snb-2520m bat-mtlp-6 

Known issues
------------

  Here are the changes found in Patchwork_116991v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - bat-adlp-9:         [PASS][1] -> [ABORT][2] ([i915#7977] / [i915#8668])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-7567u:       [PASS][3] -> [FAIL][4] ([i915#7940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8700k:       [PASS][5] -> [FAIL][6] ([i915#7940])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [PASS][7] -> [DMESG-FAIL][8] ([i915#7059])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@migrate:
    - bat-rpls-2:         [PASS][9] -> [DMESG-FAIL][10] ([i915#7699] / [i915#7913])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-rpls-2/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rpls-2/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         NOTRUN -> [ABORT][11] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-8:         [PASS][12] -> [DMESG-WARN][13] ([i915#6367])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-mtlp-8/igt@i915_selftest@live@slpc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-mtlp-8/igt@i915_selftest@live@slpc.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [FAIL][14] ([i915#7940]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-1115g4:      [FAIL][16] ([i915#7940]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [ABORT][18] ([i915#7920] / [i915#7982]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-rpls-1/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-WARN][20] ([i915#6367]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][22] ([i915#8843]) -> [FAIL][23] ([i915#7940])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [DMESG-FAIL][24] ([i915#8497]) -> [DMESG-FAIL][25] ([i915#7269])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [SKIP][26] ([i915#1072]) -> [ABORT][27] ([i915#8434] / [i915#8668])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7269]: https://gitlab.freedesktop.org/drm/intel/issues/7269
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8843]: https://gitlab.freedesktop.org/drm/intel/issues/8843


Build changes
-------------

  * Linux: CI_DRM_13366 -> Patchwork_116991v9

  CI-20190529: 20190529
  CI_DRM_13366: e547f03913976a1adcb823ed64d803284fdfa6a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7378: e78963553e05a2413cf735824517547b2bb19936 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116991v9: e547f03913976a1adcb823ed64d803284fdfa6a2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

36318b3c014a vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
472268e20f61 vfio/pci: Copy hot-reset device info to userspace in the devices loop
90b000bf1fe8 vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
0df8ccb2ce64 vfio: Add helper to search vfio_device in a dev_set
877c7a13957f vfio: Mark cdev usage in vfio_device
59a92a00e346 iommufd: Add helper to retrieve iommufd_ctx and devid
7541e45c7589 iommufd: Add iommufd_ctx_has_group()
b53f32ca0df7 iommufd: Reserve all negative IDs in the iommufd xarray
d5899b1fb666 vfio/pci: Move the existing hot reset logic to be a helper
6b3cdd55aaf1 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/index.html

--===============1775970619867859643==
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
<tr><td><b>Series:</b></td><td>Enhance vfio PCI hot reset for vfio cdev device (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116991/">https://patchwork.freedesktop.org/series/116991/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13366 -&gt; Patchwork_116991v9</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-bsw-nick fi-snb-2520m bat-mtlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116991v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-rpls-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rpls-2/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-mtlp-8/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rpls-2/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8843">i915#8843</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7269">i915#7269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13366/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v9/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13366 -&gt; Patchwork_116991v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13366: e547f03913976a1adcb823ed64d803284fdfa6a2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7378: e78963553e05a2413cf735824517547b2bb19936 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116991v9: e547f03913976a1adcb823ed64d803284fdfa6a2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>36318b3c014a vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET<br />
472268e20f61 vfio/pci: Copy hot-reset device info to userspace in the devices loop<br />
90b000bf1fe8 vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev<br />
0df8ccb2ce64 vfio: Add helper to search vfio_device in a dev_set<br />
877c7a13957f vfio: Mark cdev usage in vfio_device<br />
59a92a00e346 iommufd: Add helper to retrieve iommufd_ctx and devid<br />
7541e45c7589 iommufd: Add iommufd_ctx_has_group()<br />
b53f32ca0df7 iommufd: Reserve all negative IDs in the iommufd xarray<br />
d5899b1fb666 vfio/pci: Move the existing hot reset logic to be a helper<br />
6b3cdd55aaf1 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()</p>

</body>
</html>

--===============1775970619867859643==--
