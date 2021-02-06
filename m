Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC473311A67
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 04:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406FC6E3D6;
	Sat,  6 Feb 2021 03:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE8B96E04A;
 Sat,  6 Feb 2021 03:45:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C81CAA00CC;
 Sat,  6 Feb 2021 03:45:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 06 Feb 2021 03:45:08 -0000
Message-ID: <161258310878.3571.7878224785758261390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP?=
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
Content-Type: multipart/mixed; boundary="===============0827549853=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0827549853==
Content-Type: multipart/alternative;
 boundary="===============4499565666484392660=="

--===============4499565666484392660==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP
URL   : https://patchwork.freedesktop.org/series/86798/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9741 -> Patchwork_19617
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/index.html

Known issues
------------

  Here are the changes found in Patchwork_19617 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] ([i915#2605])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9741 -> Patchwork_19617

  CI-20190529: 20190529
  CI_DRM_9741: 439ad4a70b3d6663de543ee56478d64b16cca1cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5994: 53268fc5e5dde45a16e7185023a42296e3599e6e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19617: fdf64b2df325397c9f8e9878427ffaf1068808e9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fdf64b2df325 drm/i915/pxp: enable PXP for integrated Gen12
506139f99362 drm/i915/pxp: Add plane decryption support
998839e51267 drm/i915/pxp: User interface for Protected buffer
3aa79d7b4bbd drm/i915/uapi: introduce drm_i915_gem_create_ext
f02841c95381 drm/i915/pxp: Enable PXP power management
1114f3b829b2 drm/i915/pxp: Implement PXP irq handler
708df2ee4706 drm/i915/pxp: Implement arb session teardown
e2c06ca6e948 drm/i915/pxp: Create the arbitrary session after boot
4536d239a998 drm/i915/pxp: Implement funcs to create the TEE channel
fba284057979 drm/i915/pxp: set KCR reg init during the boot time
bd3c9d86e3d9 drm/i915/pxp: allocate a vcs context for pxp usage
32f694bec37d drm/i915/pxp: define PXP device flag and kconfig
4f3333b243ad mei: pxp: export pavp client to me client bus
7aa9cb10d6b7 drm/i915/pxp: Define PXP component interface

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/index.html

--===============4499565666484392660==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86798/">https://patchwork.freedesktop.org/series/86798/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9741 -&gt; Patchwork_19617</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19617 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19617/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9741 -&gt; Patchwork_19617</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9741: 439ad4a70b3d6663de543ee56478d64b16cca1cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5994: 53268fc5e5dde45a16e7185023a42296e3599e6e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19617: fdf64b2df325397c9f8e9878427ffaf1068808e9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fdf64b2df325 drm/i915/pxp: enable PXP for integrated Gen12<br />
506139f99362 drm/i915/pxp: Add plane decryption support<br />
998839e51267 drm/i915/pxp: User interface for Protected buffer<br />
3aa79d7b4bbd drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
f02841c95381 drm/i915/pxp: Enable PXP power management<br />
1114f3b829b2 drm/i915/pxp: Implement PXP irq handler<br />
708df2ee4706 drm/i915/pxp: Implement arb session teardown<br />
e2c06ca6e948 drm/i915/pxp: Create the arbitrary session after boot<br />
4536d239a998 drm/i915/pxp: Implement funcs to create the TEE channel<br />
fba284057979 drm/i915/pxp: set KCR reg init during the boot time<br />
bd3c9d86e3d9 drm/i915/pxp: allocate a vcs context for pxp usage<br />
32f694bec37d drm/i915/pxp: define PXP device flag and kconfig<br />
4f3333b243ad mei: pxp: export pavp client to me client bus<br />
7aa9cb10d6b7 drm/i915/pxp: Define PXP component interface</p>

</body>
</html>

--===============4499565666484392660==--

--===============0827549853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0827549853==--
