Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D1A5A76E6
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 08:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B9610E1FD;
	Wed, 31 Aug 2022 06:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A0FB10E1E5;
 Wed, 31 Aug 2022 06:48:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 335CBA7DFB;
 Wed, 31 Aug 2022 06:48:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0231197527472157131=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Date: Wed, 31 Aug 2022 06:48:09 -0000
Message-ID: <166192848918.4257.1203846524587258438@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220827171037.30297-1-kevin.tian@intel.com>
In-Reply-To: <20220827171037.30297-1-kevin.tian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVGlk?=
 =?utf-8?q?y_up_vfio=5Fdevice_life_cycle_=28rev2=29?=
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

--===============0231197527472157131==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Tidy up vfio_device life cycle (rev2)
URL   : https://patchwork.freedesktop.org/series/107838/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12051 -> Patchwork_107838v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v2/index.html

Participating hosts (36 -> 32)
------------------------------

  Missing    (4): fi-adl-ddr5 fi-ctg-p8600 fi-bdw-samus fi-hsw-4200u 

Known issues
------------

  Here are the changes found in Patchwork_107838v2 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380


Build changes
-------------

  * Linux: CI_DRM_12051 -> Patchwork_107838v2

  CI-20190529: 20190529
  CI_DRM_12051: 87e7c1f925771561efe162f261251ed72b095007 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107838v2: 87e7c1f925771561efe162f261251ed72b095007 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bd91582b60f8 vfio: Add struct device to vfio_device
f8270bcb436e vfio: Rename vfio_device_put() and vfio_device_try_get()
3d1532d2295c vfio/ccw: Use the new device life cycle helpers
0cc7ad404d2c vfio/amba: Use the new device life cycle helpers
1f0568824155 vfio/platform: Use the new device life cycle helpers
0d2c0ac46cc9 vfio/fsl-mc: Use the new device life cycle helpers
5c25744ecc67 vfio/ap: Use the new device life cycle helpers
2526a89e122c drm/i915/gvt: Use the new device life cycle helpers
5acd97dfcc3e vfio/mbochs: Use the new device life cycle helpers
5053ba759ea8 vfio/mtty: Use the new device life cycle helpers
3d9553a48c1f vfio/mdpy: Use the new device life cycle helpers
dcb1a8c8f3e1 vfio/hisi_acc: Use the new device life cycle helpers
66863015b8e7 vfio/mlx5: Use the new device life cycle helpers
7678baf87812 vfio/pci: Use the new device life cycle helpers
d484641676f8 vfio: Add helpers for unifying vfio_device life cycle

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v2/index.html

--===============0231197527472157131==
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
<tr><td><b>Series:</b></td><td>Tidy up vfio_device life cycle (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107838/">https://patchwork.freedesktop.org/series/107838/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12051 -&gt; Patchwork_107838v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v2/index.html</p>
<h2>Participating hosts (36 -&gt; 32)</h2>
<p>Missing    (4): fi-adl-ddr5 fi-ctg-p8600 fi-bdw-samus fi-hsw-4200u </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107838v2 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12051 -&gt; Patchwork_107838v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12051: 87e7c1f925771561efe162f261251ed72b095007 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107838v2: 87e7c1f925771561efe162f261251ed72b095007 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bd91582b60f8 vfio: Add struct device to vfio_device<br />
f8270bcb436e vfio: Rename vfio_device_put() and vfio_device_try_get()<br />
3d1532d2295c vfio/ccw: Use the new device life cycle helpers<br />
0cc7ad404d2c vfio/amba: Use the new device life cycle helpers<br />
1f0568824155 vfio/platform: Use the new device life cycle helpers<br />
0d2c0ac46cc9 vfio/fsl-mc: Use the new device life cycle helpers<br />
5c25744ecc67 vfio/ap: Use the new device life cycle helpers<br />
2526a89e122c drm/i915/gvt: Use the new device life cycle helpers<br />
5acd97dfcc3e vfio/mbochs: Use the new device life cycle helpers<br />
5053ba759ea8 vfio/mtty: Use the new device life cycle helpers<br />
3d9553a48c1f vfio/mdpy: Use the new device life cycle helpers<br />
dcb1a8c8f3e1 vfio/hisi_acc: Use the new device life cycle helpers<br />
66863015b8e7 vfio/mlx5: Use the new device life cycle helpers<br />
7678baf87812 vfio/pci: Use the new device life cycle helpers<br />
d484641676f8 vfio: Add helpers for unifying vfio_device life cycle</p>

</body>
</html>

--===============0231197527472157131==--
