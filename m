Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9EA6CA282
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3641310E3A4;
	Mon, 27 Mar 2023 11:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB17710E495;
 Mon, 27 Mar 2023 11:34:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B18B3AADD1;
 Mon, 27 Mar 2023 11:34:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3478697762893196841=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nicolin Chen" <nicolinc@nvidia.com>
Date: Mon, 27 Mar 2023 11:34:21 -0000
Message-ID: <167991686169.32632.4183406753618495079@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230327093351.44505-1-yi.l.liu@intel.com>
In-Reply-To: <20230327093351.44505-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgdmZp?=
 =?utf-8?q?o=3A_Make_emulated_devices_prepared_for_vfio_device_cdev_=28rev?=
 =?utf-8?q?4=29?=
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

--===============3478697762893196841==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: vfio: Make emulated devices prepared for vfio device cdev (rev4)
URL   : https://patchwork.freedesktop.org/series/114846/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12918 -> Patchwork_114846v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-kbl-soraka fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_114846v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         [PASS][1] -> [ABORT][2] ([i915#6687] / [i915#7978])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][3] ([fdo#109271]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/fi-kbl-8809g/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-kbl-8809g:       [ABORT][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978


Build changes
-------------

  * Linux: CI_DRM_12918 -> Patchwork_114846v4

  CI-20190529: 20190529
  CI_DRM_12918: a1cb2211899ba6b8fe078586d0878aa918a5aab3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7220: 3eb7beb5c03343b29556025b1ada4b50849b5976 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114846v4: a1cb2211899ba6b8fe078586d0878aa918a5aab3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

70efbce6e0ed vfio: Check the presence for iommufd callbacks in __vfio_register_dev()
0c69ddfa320b vfio/mdev: Uses the vfio emulated iommufd ops set in the mdev sample drivers
f86d6fc48f42 vfio-iommufd: Make vfio_iommufd_emulated_bind() return iommufd_access ID
d6a35cab47d7 vfio-iommufd: No need to record iommufd_ctx in vfio_device
24038c16601f iommufd: Create access in vfio_iommufd_emulated_bind()
187d7e219ff9 iommu/iommufd: Pass iommufd_ctx pointer in iommufd_get_ioas()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/index.html

--===============3478697762893196841==
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
<tr><td><b>Series:</b></td><td>vfio: Make emulated devices prepared for vfio device cdev (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114846/">https://patchwork.freedesktop.org/series/114846/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12918 -&gt; Patchwork_114846v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-kbl-soraka fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114846v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/fi-kbl-8809g/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12918/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114846v4/fi-kbl-8809g/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12918 -&gt; Patchwork_114846v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12918: a1cb2211899ba6b8fe078586d0878aa918a5aab3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7220: 3eb7beb5c03343b29556025b1ada4b50849b5976 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114846v4: a1cb2211899ba6b8fe078586d0878aa918a5aab3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>70efbce6e0ed vfio: Check the presence for iommufd callbacks in __vfio_register_dev()<br />
0c69ddfa320b vfio/mdev: Uses the vfio emulated iommufd ops set in the mdev sample drivers<br />
f86d6fc48f42 vfio-iommufd: Make vfio_iommufd_emulated_bind() return iommufd_access ID<br />
d6a35cab47d7 vfio-iommufd: No need to record iommufd_ctx in vfio_device<br />
24038c16601f iommufd: Create access in vfio_iommufd_emulated_bind()<br />
187d7e219ff9 iommu/iommufd: Pass iommufd_ctx pointer in iommufd_get_ioas()</p>

</body>
</html>

--===============3478697762893196841==--
