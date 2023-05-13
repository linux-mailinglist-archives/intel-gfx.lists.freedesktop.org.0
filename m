Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD4B701929
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 20:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33C310E128;
	Sat, 13 May 2023 18:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C3A110E012;
 Sat, 13 May 2023 18:27:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3D38AADD5;
 Sat, 13 May 2023 18:27:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6554068025281396113=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yi Liu" <yi.l.liu@intel.com>
Date: Sat, 13 May 2023 18:27:24 -0000
Message-ID: <168400244490.18761.15437972424903459452@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230513132136.15021-1-yi.l.liu@intel.com>
In-Reply-To: <20230513132136.15021-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5o?=
 =?utf-8?q?ance_vfio_PCI_hot_reset_for_vfio_cdev_device_=28rev2=29?=
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

--===============6554068025281396113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enhance vfio PCI hot reset for vfio cdev device (rev2)
URL   : https://patchwork.freedesktop.org/series/116991/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13143 -> Patchwork_116991v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-snb-2520m bat-mtlp-6 

Known issues
------------

  Here are the changes found in Patchwork_116991v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][1] ([i915#7077])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][2] ([i915#6367])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         NOTRUN -> [ABORT][3] ([i915#6687])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][4] -> [FAIL][5] ([i915#7932]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][6] ([i915#5334]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][8] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-rpls-2/igt@i915_selftest@live@reset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rpls-2/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [ABORT][10] ([i915#4579] / [i915#8260]) -> [SKIP][11] ([i915#3555] / [i915#4579])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347


Build changes
-------------

  * Linux: CI_DRM_13143 -> Patchwork_116991v2

  CI-20190529: 20190529
  CI_DRM_13143: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7286: a482779488f11c432d7ddcb1980691ab1603f356 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116991v2: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3f541983f698 vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
cef13857cc34 vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
2e6dd120837f iommufd: Add iommufd_ctx_has_group()
593a7da914e9 vfio: Add helper to search vfio_device in a dev_set
da2127aa7129 vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for vfio_device
6c893fcd1273 iommufd: Reserve all negative IDs in the iommufd xarray
d102efa91e1b vfio: Mark cdev usage in vfio_device
1ea446478dbe vfio/pci: Move the existing hot reset logic to be a helper
89b8b1e95639 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()
c0b566e1b13f vfio-iommufd: Create iommufd_access for noiommu devices

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/index.html

--===============6554068025281396113==
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
<tr><td><b>Series:</b></td><td>Enhance vfio PCI hot reset for vfio cdev device (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116991/">https://patchwork.freedesktop.org/series/116991/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13143 -&gt; Patchwork_116991v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-snb-2520m bat-mtlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116991v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_setmode@basic-clone-single-crtc:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116991v2/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13143 -&gt; Patchwork_116991v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13143: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7286: a482779488f11c432d7ddcb1980691ab1603f356 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116991v2: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3f541983f698 vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET<br />
cef13857cc34 vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev<br />
2e6dd120837f iommufd: Add iommufd_ctx_has_group()<br />
593a7da914e9 vfio: Add helper to search vfio_device in a dev_set<br />
da2127aa7129 vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for vfio_device<br />
6c893fcd1273 iommufd: Reserve all negative IDs in the iommufd xarray<br />
d102efa91e1b vfio: Mark cdev usage in vfio_device<br />
1ea446478dbe vfio/pci: Move the existing hot reset logic to be a helper<br />
89b8b1e95639 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()<br />
c0b566e1b13f vfio-iommufd: Create iommufd_access for noiommu devices</p>

</body>
</html>

--===============6554068025281396113==--
