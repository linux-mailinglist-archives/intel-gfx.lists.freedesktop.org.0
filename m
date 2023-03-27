Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B226CA30D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08F8810E589;
	Mon, 27 Mar 2023 12:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7529E10E590;
 Mon, 27 Mar 2023 12:04:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71467A882E;
 Mon, 27 Mar 2023 12:04:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7863273591488449348=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Date: Mon, 27 Mar 2023 12:04:42 -0000
Message-ID: <167991868245.32632.4292114499607325060@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230327093458.44939-1-yi.l.liu@intel.com>
In-Reply-To: <20230327093458.44939-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_new_methods_for_verifying_ownership_in_vfio_PCI_hot_rese?=
 =?utf-8?q?t_=28rev2=29?=
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

--===============7863273591488449348==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce new methods for verifying ownership in vfio PCI hot reset (rev2)
URL   : https://patchwork.freedesktop.org/series/115264/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12918 -> Patchwork_115264v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-kbl-soraka 

Known issues
------------

  Here are the changes found in Patchwork_115264v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][1] -> [SKIP][2] ([i915#7855])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#4983])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/bat-rpls-1/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-rkl-11600:       [PASS][5] -> [FAIL][6] ([fdo#103375])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/fi-rkl-11600/igt@i915_suspend@basic-s2idle-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/fi-rkl-11600/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][7] ([fdo#109271]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/fi-kbl-8809g/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-dg2-11:         NOTRUN -> [SKIP][8] ([i915#5354])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-kbl-8809g:       [ABORT][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-FAIL][11] ([i915#6997] / [i915#7913]) -> [DMESG-FAIL][12] ([i915#6367] / [i915#7913])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7855]: https://gitlab.freedesktop.org/drm/intel/issues/7855
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913


Build changes
-------------

  * Linux: CI_DRM_12918 -> Patchwork_115264v2

  CI-20190529: 20190529
  CI_DRM_12918: a1cb2211899ba6b8fe078586d0878aa918a5aab3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7220: 3eb7beb5c03343b29556025b1ada4b50849b5976 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115264v2: a1cb2211899ba6b8fe078586d0878aa918a5aab3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

777a4de3d017 vfio/pci: Add VFIO_DEVICE_GET_PCI_HOT_RESET_GROUP_INFO
2a92707f4cc4 vfio/pci: Accept device fd in VFIO_DEVICE_PCI_HOT_RESET ioctl
576175a255f8 vfio/pci: Renaming for accepting device fd in hot reset path
91c8b208c83f vfio: Accpet device file from vfio PCI hot reset path
9fe81a8d19f6 vfio: Refine vfio file kAPIs for vfio PCI hot reset
86cef152607b vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
ee577bf22ada vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for vfio_device
6fb819b4ba9f vfio/pci: Move the existing hot reset logic to be a helper
6b5f8efac8f9 vfio/pci: Only check ownership of opened devices in hot reset
de49aaf53338 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/index.html

--===============7863273591488449348==
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
<tr><td><b>Series:</b></td><td>Introduce new methods for verifying ownership in vfio PCI hot reset (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115264/">https://patchwork.freedesktop.org/series/115264/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12918 -&gt; Patchwork_115264v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-kbl-soraka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115264v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7855">i915#7855</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/fi-rkl-11600/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/fi-rkl-11600/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/fi-kbl-8809g/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115264v2/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12918 -&gt; Patchwork_115264v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12918: a1cb2211899ba6b8fe078586d0878aa918a5aab3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7220: 3eb7beb5c03343b29556025b1ada4b50849b5976 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115264v2: a1cb2211899ba6b8fe078586d0878aa918a5aab3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>777a4de3d017 vfio/pci: Add VFIO_DEVICE_GET_PCI_HOT_RESET_GROUP_INFO<br />
2a92707f4cc4 vfio/pci: Accept device fd in VFIO_DEVICE_PCI_HOT_RESET ioctl<br />
576175a255f8 vfio/pci: Renaming for accepting device fd in hot reset path<br />
91c8b208c83f vfio: Accpet device file from vfio PCI hot reset path<br />
9fe81a8d19f6 vfio: Refine vfio file kAPIs for vfio PCI hot reset<br />
86cef152607b vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET<br />
ee577bf22ada vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for vfio_device<br />
6fb819b4ba9f vfio/pci: Move the existing hot reset logic to be a helper<br />
6b5f8efac8f9 vfio/pci: Only check ownership of opened devices in hot reset<br />
de49aaf53338 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()</p>

</body>
</html>

--===============7863273591488449348==--
