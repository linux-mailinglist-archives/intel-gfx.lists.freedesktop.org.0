Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E9A3CBB04
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 19:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF1E6E9D7;
	Fri, 16 Jul 2021 17:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFF206E9D7;
 Fri, 16 Jul 2021 17:18:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7B99A47DB;
 Fri, 16 Jul 2021 17:18:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Fri, 16 Jul 2021 17:18:21 -0000
Message-ID: <162645590165.12776.7345397845088156445@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v1-eaf3ccbba33c+1add0-vfio_reflck_jgg@nvidia.com>
In-Reply-To: <0-v1-eaf3ccbba33c+1add0-vfio_reflck_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJv?=
 =?utf-8?q?vide_core_infrastructure_for_managing_open/release_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============2063513223=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2063513223==
Content-Type: multipart/alternative;
 boundary="===============4044246517865788508=="

--===============4044246517865788508==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Provide core infrastructure for managing open/release (rev2)
URL   : https://patchwork.freedesktop.org/series/92556/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10345 -> Patchwork_20624
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/index.html

Known issues
------------

  Here are the changes found in Patchwork_20624 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][4] ([i915#165]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10345 -> Patchwork_20624

  CI-20190529: 20190529
  CI_DRM_10345: 8c6a974b932fbaa798102b4713ceedf3b04227d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6142: 16e753fc5e1e51395e1df40865c569984a74c5ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20624: a2014e2a4820ddfcd576965706366603e5e4aebb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a2014e2a4820 vfio: Remove struct vfio_device_ops open/release
4593947ca67f vfio/gvt: Fix open/close when multiple device FDs are open
242842506d4f vfio/ap, ccw: Fix open/close when multiple device FDs are open
76aced5ab6ba vfio/mbochs: Fix close when multiple device FDs are open
b2f54bb6af80 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set
622d1a17107e vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set
168446e606ea vfio/pci: Move to the device set infrastructure
fceda419b48c vfio/platform: Use open_device() instead of open coding a refcnt scheme
851ba57de6e7 vfio/fsl: Move to the device set infrastructure
ec95ddcfb48f vfio/samples: Delete useless open/close
a8ad279bbf60 vfio: Provide better generic support for open/release vfio_device_ops
177714a2be7f vfio: Introduce a vfio_uninit_group_dev() API call
55369372f9a3 vfio/samples: Remove module get/put

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/index.html

--===============4044246517865788508==
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
<tr><td><b>Series:</b></td><td>Provide core infrastructure for managing open/release (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92556/">https://patchwork.freedesktop.org/series/92556/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10345 -&gt; Patchwork_20624</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20624 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20624/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10345 -&gt; Patchwork_20624</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10345: 8c6a974b932fbaa798102b4713ceedf3b04227d9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6142: 16e753fc5e1e51395e1df40865c569984a74c5ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20624: a2014e2a4820ddfcd576965706366603e5e4aebb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a2014e2a4820 vfio: Remove struct vfio_device_ops open/release<br />
4593947ca67f vfio/gvt: Fix open/close when multiple device FDs are open<br />
242842506d4f vfio/ap, ccw: Fix open/close when multiple device FDs are open<br />
76aced5ab6ba vfio/mbochs: Fix close when multiple device FDs are open<br />
b2f54bb6af80 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set<br />
622d1a17107e vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set<br />
168446e606ea vfio/pci: Move to the device set infrastructure<br />
fceda419b48c vfio/platform: Use open_device() instead of open coding a refcnt scheme<br />
851ba57de6e7 vfio/fsl: Move to the device set infrastructure<br />
ec95ddcfb48f vfio/samples: Delete useless open/close<br />
a8ad279bbf60 vfio: Provide better generic support for open/release vfio_device_ops<br />
177714a2be7f vfio: Introduce a vfio_uninit_group_dev() API call<br />
55369372f9a3 vfio/samples: Remove module get/put</p>

</body>
</html>

--===============4044246517865788508==--

--===============2063513223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2063513223==--
