Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D5C38FB1A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 08:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F78F6E9AA;
	Tue, 25 May 2021 06:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F382F6E9AA;
 Tue, 25 May 2021 06:42:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC74EA73C7;
 Tue, 25 May 2021 06:42:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 25 May 2021 06:42:13 -0000
Message-ID: <162192493387.1317.18362302337403239018@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_Intel_PXP?=
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
Content-Type: multipart/mixed; boundary="===============1139903956=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1139903956==
Content-Type: multipart/alternative;
 boundary="===============1935023602726682996=="

--===============1935023602726682996==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Introduce Intel PXP
URL   : https://patchwork.freedesktop.org/series/90503/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10128 -> Patchwork_20185
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/index.html

Known issues
------------

  Here are the changes found in Patchwork_20185 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2] ([i915#3194])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-r:           [FAIL][3] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][4] ([i915#1436] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-kbl-r/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/fi-kbl-r/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3004]: https://gitlab.freedesktop.org/drm/intel/issues/3004
  [i915#3005]: https://gitlab.freedesktop.org/drm/intel/issues/3005
  [i915#3011]: https://gitlab.freedesktop.org/drm/intel/issues/3011
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3013]: https://gitlab.freedesktop.org/drm/intel/issues/3013
  [i915#3014]: https://gitlab.freedesktop.org/drm/intel/issues/3014
  [i915#3015]: https://gitlab.freedesktop.org/drm/intel/issues/3015
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (34 -> 23)
------------------------------

  Additional (2): fi-ehl-2 fi-hsw-gt1 
  Missing    (13): fi-kbl-7567u fi-cml-u2 fi-glk-dsi fi-icl-u2 fi-cfl-8700k fi-bsw-cyan fi-kbl-7500u fi-cfl-guc fi-hsw-4770 fi-kbl-guc fi-cfl-8109u fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10128 -> Patchwork_20185

  CI-20190529: 20190529
  CI_DRM_10128: a65996afe32761b9eef973bf230a566f38ac3340 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6092: d87087c321da07035d4f96d98c34e451b3ccb809 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20185: 35fe0920dc18e54461ab2f0dbd7b609e673c3ec5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

35fe0920dc18 drm/i915/pxp: enable PXP for integrated Gen12
987b3307a598 drm/i915/pxp: black pixels on pxp disabled
45bde6c5331e drm/i915/pxp: Add plane decryption support
6385a5aed210 drm/i915/pxp: User interface for Protected buffer
bec1d65ea26a drm/i915/pxp: Enable PXP power management
a3dfaa44f65f drm/i915/pxp: start the arb session on demand
33fe09ce5d32 drm/i915/pxp: interface for marking contexts as using protected content
4b5b3318d941 drm/i915/pxp: Implement PXP irq handler
cb24d6a2574a drm/i915/pxp: Implement arb session teardown
7161fc685bdf drm/i915/pxp: Create the arbitrary session after boot
d9c097841a73 drm/i915/pxp: set KCR reg init
6bd0c1203dc5 drm/i915/pxp: Implement funcs to create the TEE channel
8a76c2a85287 drm/i915/pxp: allocate a vcs context for pxp usage
2b998e8ec953 drm/i915/gt: Export the pinned context constructor and destructor
2dc2268deb12 drm/i915/pxp: define PXP device flag and kconfig
85662cad4815 mei: pxp: export pavp client to me client bus
ef325598b78f drm/i915/pxp: Define PXP component interface

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/index.html

--===============1935023602726682996==
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
<tr><td><b>Series:</b></td><td>drm/i915: Introduce Intel PXP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90503/">https://patchwork.freedesktop.org/series/90503/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10128 -&gt; Patchwork_20185</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20185 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20185/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (34 -&gt; 23)</h2>
<p>Additional (2): fi-ehl-2 fi-hsw-gt1 <br />
  Missing    (13): fi-kbl-7567u fi-cml-u2 fi-glk-dsi fi-icl-u2 fi-cfl-8700k fi-bsw-cyan fi-kbl-7500u fi-cfl-guc fi-hsw-4770 fi-kbl-guc fi-cfl-8109u fi-bdw-samus fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10128 -&gt; Patchwork_20185</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10128: a65996afe32761b9eef973bf230a566f38ac3340 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6092: d87087c321da07035d4f96d98c34e451b3ccb809 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20185: 35fe0920dc18e54461ab2f0dbd7b609e673c3ec5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>35fe0920dc18 drm/i915/pxp: enable PXP for integrated Gen12<br />
987b3307a598 drm/i915/pxp: black pixels on pxp disabled<br />
45bde6c5331e drm/i915/pxp: Add plane decryption support<br />
6385a5aed210 drm/i915/pxp: User interface for Protected buffer<br />
bec1d65ea26a drm/i915/pxp: Enable PXP power management<br />
a3dfaa44f65f drm/i915/pxp: start the arb session on demand<br />
33fe09ce5d32 drm/i915/pxp: interface for marking contexts as using protected content<br />
4b5b3318d941 drm/i915/pxp: Implement PXP irq handler<br />
cb24d6a2574a drm/i915/pxp: Implement arb session teardown<br />
7161fc685bdf drm/i915/pxp: Create the arbitrary session after boot<br />
d9c097841a73 drm/i915/pxp: set KCR reg init<br />
6bd0c1203dc5 drm/i915/pxp: Implement funcs to create the TEE channel<br />
8a76c2a85287 drm/i915/pxp: allocate a vcs context for pxp usage<br />
2b998e8ec953 drm/i915/gt: Export the pinned context constructor and destructor<br />
2dc2268deb12 drm/i915/pxp: define PXP device flag and kconfig<br />
85662cad4815 mei: pxp: export pavp client to me client bus<br />
ef325598b78f drm/i915/pxp: Define PXP component interface</p>

</body>
</html>

--===============1935023602726682996==--

--===============1139903956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1139903956==--
