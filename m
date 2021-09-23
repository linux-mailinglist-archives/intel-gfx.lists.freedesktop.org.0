Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 146004159D9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 10:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C601A6E0E8;
	Thu, 23 Sep 2021 08:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06F866E0E8;
 Thu, 23 Sep 2021 08:12:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E929FA77A5;
 Thu, 23 Sep 2021 08:12:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5871803493016641834=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 08:12:21 -0000
Message-ID: <163238474192.31048.6330858977919977433@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210923073529.1058204-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20210923073529.1058204-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_Intel_PXP_=28rev11=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5871803493016641834==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Introduce Intel PXP (rev11)
URL   : https://patchwork.freedesktop.org/series/90503/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10629 -> Patchwork_21142
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/index.html

Known issues
------------

  Here are the changes found in Patchwork_21142 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([fdo#103375])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-r:           [DMESG-FAIL][3] ([i915#2291] / [i915#541]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (42 -> 29)
------------------------------

  Missing    (13): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-kbl-x1275 fi-pnv-d510 fi-bsw-kefka fi-bdw-samus fi-bsw-nick bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10629 -> Patchwork_21142

  CI-20190529: 20190529
  CI_DRM_10629: ce6974ec90355ddef78e6bc2221cb2296e5ba349 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21142: 35a035fabcfb59249999132e359fd47945ec2b41 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

35a035fabcfb drm/i915/pxp: enable PXP for integrated Gen12
7f1a7d78fdae drm/i915/pxp: add PXP documentation
f6bbdd6e7086 drm/i915/pxp: add pxp debugfs
ba9bc18886f3 drm/i915/pxp: black pixels on pxp disabled
11f5b485dd79 drm/i915/pxp: Add plane decryption support
f229a02dbed6 drm/i915/pxp: Enable PXP power management
0c9a75cd894c drm/i915/pxp: start the arb session on demand
8e6e843fb2fb drm/i915/pxp: interfaces for using protected objects
b9d1ab8e40fd drm/i915/pxp: Implement PXP irq handler
c784be950ed9 drm/i915/pxp: Implement arb session teardown
7f9d4f4dbf82 drm/i915/pxp: Create the arbitrary session after boot
9c77444f0c7a drm/i915/pxp: set KCR reg init
f0dc7d51c7fd drm/i915/pxp: Implement funcs to create the TEE channel
0135b76609df drm/i915/pxp: allocate a vcs context for pxp usage
d5f0364f8628 drm/i915/pxp: define PXP device flag and kconfig
be0229d7c21c mei: pxp: export pavp client to me client bus
d573193f656b drm/i915/pxp: Define PXP component interface

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/index.html

--===============5871803493016641834==
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
<tr><td><b>Series:</b></td><td>drm/i915: Introduce Intel PXP (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90503/">https://patchwork.freedesktop.org/series/90503/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10629 -&gt; Patchwork_21142</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21142 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21142/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 29)</h2>
<p>Missing    (13): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-kbl-x1275 fi-pnv-d510 fi-bsw-kefka fi-bdw-samus fi-bsw-nick bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10629 -&gt; Patchwork_21142</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10629: ce6974ec90355ddef78e6bc2221cb2296e5ba349 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21142: 35a035fabcfb59249999132e359fd47945ec2b41 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>35a035fabcfb drm/i915/pxp: enable PXP for integrated Gen12<br />
7f1a7d78fdae drm/i915/pxp: add PXP documentation<br />
f6bbdd6e7086 drm/i915/pxp: add pxp debugfs<br />
ba9bc18886f3 drm/i915/pxp: black pixels on pxp disabled<br />
11f5b485dd79 drm/i915/pxp: Add plane decryption support<br />
f229a02dbed6 drm/i915/pxp: Enable PXP power management<br />
0c9a75cd894c drm/i915/pxp: start the arb session on demand<br />
8e6e843fb2fb drm/i915/pxp: interfaces for using protected objects<br />
b9d1ab8e40fd drm/i915/pxp: Implement PXP irq handler<br />
c784be950ed9 drm/i915/pxp: Implement arb session teardown<br />
7f9d4f4dbf82 drm/i915/pxp: Create the arbitrary session after boot<br />
9c77444f0c7a drm/i915/pxp: set KCR reg init<br />
f0dc7d51c7fd drm/i915/pxp: Implement funcs to create the TEE channel<br />
0135b76609df drm/i915/pxp: allocate a vcs context for pxp usage<br />
d5f0364f8628 drm/i915/pxp: define PXP device flag and kconfig<br />
be0229d7c21c mei: pxp: export pavp client to me client bus<br />
d573193f656b drm/i915/pxp: Define PXP component interface</p>

</body>
</html>

--===============5871803493016641834==--
