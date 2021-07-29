Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E12213D9BE0
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 04:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1FA66EC5D;
	Thu, 29 Jul 2021 02:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A7496E1CD;
 Thu, 29 Jul 2021 02:37:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51DCBA47E1;
 Thu, 29 Jul 2021 02:37:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Thu, 29 Jul 2021 02:37:06 -0000
Message-ID: <162752622630.27327.9929600649713028526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v3-6c9e19cc7d44+15613-vfio_reflck_jgg@nvidia.com>
In-Reply-To: <0-v3-6c9e19cc7d44+15613-vfio_reflck_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJv?=
 =?utf-8?q?vide_core_infrastructure_for_managing_open/release_=28rev7=29?=
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
Content-Type: multipart/mixed; boundary="===============0599930660=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0599930660==
Content-Type: multipart/alternative;
 boundary="===============2893042417202040696=="

--===============2893042417202040696==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Provide core infrastructure for managing open/release (rev7)
URL   : https://patchwork.freedesktop.org/series/92556/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10415 -> Patchwork_20734
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20734/index.html

Known issues
------------

  Here are the changes found in Patchwork_20734 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2] ([i915#155])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10415/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20734/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155


Participating hosts (43 -> 35)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus fi-tgl-y bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10415 -> Patchwork_20734

  CI-20190529: 20190529
  CI_DRM_10415: 457209baa84d04e17ce648a12733a32809717494 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6155: 4b51398dcd7559012b85776e7353d516ff1e6ce6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20734: 79c59eed163a541398d7f84d93c8ac73b621a95b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

79c59eed163a vfio: Remove struct vfio_device_ops open/release
6852c4b7af29 vfio/gvt: Fix open/close when multiple device FDs are open
5a99781c4cce vfio/ap, ccw: Fix open/close when multiple device FDs are open
102df9bcfb33 vfio/mbochs: Fix close when multiple device FDs are open
65a4bc732166 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set
aeb2adf0bd2f vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set
bffca3b655e2 vfio/pci: Move to the device set infrastructure
65ae71f84df5 vfio/platform: Use open_device() instead of open coding a refcnt scheme
9b57c1f6a23e vfio/fsl: Move to the device set infrastructure
e6b9a22005db vfio/samples: Delete useless open/close
418c0065f422 vfio: Provide better generic support for open/release vfio_device_ops
2e74c07c7aa1 vfio: Introduce a vfio_uninit_group_dev() API call
07fe7105d3c8 vfio/mbochs: Fix missing error unwind of mbochs_used_mbytes
d0838f25c8bb vfio/samples: Remove module get/put

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20734/index.html

--===============2893042417202040696==
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
<tr><td><b>Series:</b></td><td>Provide core infrastructure for managing open/release (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92556/">https://patchwork.freedesktop.org/series/92556/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20734/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20734/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10415 -&gt; Patchwork_20734</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20734/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20734 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10415/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20734/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 35)</h2>
<p>Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus fi-tgl-y bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10415 -&gt; Patchwork_20734</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10415: 457209baa84d04e17ce648a12733a32809717494 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6155: 4b51398dcd7559012b85776e7353d516ff1e6ce6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20734: 79c59eed163a541398d7f84d93c8ac73b621a95b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>79c59eed163a vfio: Remove struct vfio_device_ops open/release<br />
6852c4b7af29 vfio/gvt: Fix open/close when multiple device FDs are open<br />
5a99781c4cce vfio/ap, ccw: Fix open/close when multiple device FDs are open<br />
102df9bcfb33 vfio/mbochs: Fix close when multiple device FDs are open<br />
65a4bc732166 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set<br />
aeb2adf0bd2f vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set<br />
bffca3b655e2 vfio/pci: Move to the device set infrastructure<br />
65ae71f84df5 vfio/platform: Use open_device() instead of open coding a refcnt scheme<br />
9b57c1f6a23e vfio/fsl: Move to the device set infrastructure<br />
e6b9a22005db vfio/samples: Delete useless open/close<br />
418c0065f422 vfio: Provide better generic support for open/release vfio_device_ops<br />
2e74c07c7aa1 vfio: Introduce a vfio_uninit_group_dev() API call<br />
07fe7105d3c8 vfio/mbochs: Fix missing error unwind of mbochs_used_mbytes<br />
d0838f25c8bb vfio/samples: Remove module get/put</p>

</body>
</html>

--===============2893042417202040696==--

--===============0599930660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0599930660==--
