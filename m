Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1237E2E34A7
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 08:12:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D4F5899E7;
	Mon, 28 Dec 2020 07:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CA2F899D4;
 Mon, 28 Dec 2020 07:12:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87232A363D;
 Mon, 28 Dec 2020 07:12:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Mon, 28 Dec 2020 07:12:21 -0000
Message-ID: <160913954154.11283.6278496816480083676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/cml_=3A_Add_TGP_PCH_support_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1534703498=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1534703498==
Content-Type: multipart/alternative;
 boundary="===============7341370907067448198=="

--===============7341370907067448198==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/cml : Add TGP PCH support (rev2)
URL   : https://patchwork.freedesktop.org/series/85013/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9528 -> Patchwork_19218
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/index.html

Known issues
------------

  Here are the changes found in Patchwork_19218 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9528/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [DMESG-FAIL][3] ([i915#165]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9528/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165


Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9528 -> Patchwork_19218

  CI-20190529: 20190529
  CI_DRM_9528: 2d13ca3bfcff24ed05e602511a3720d374e1413c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5925: c8d6184a6185e02fc9f83e3cf3ef50b0a67d981d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19218: 9c11fb777f34f9166abc787fb00b467948c39229 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9c11fb777f34 drm/i915/cml : Add TGP PCH support

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/index.html

--===============7341370907067448198==
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
<tr><td><b>Series:</b></td><td>drm/i915/cml : Add TGP PCH support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85013/">https://patchwork.freedesktop.org/series/85013/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9528 -&gt; Patchwork_19218</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19218 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9528/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@hdmi-hpd-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9528/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19218/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9528 -&gt; Patchwork_19218</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9528: 2d13ca3bfcff24ed05e602511a3720d374e1413c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5925: c8d6184a6185e02fc9f83e3cf3ef50b0a67d981d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19218: 9c11fb777f34f9166abc787fb00b467948c39229 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9c11fb777f34 drm/i915/cml : Add TGP PCH support</p>

</body>
</html>

--===============7341370907067448198==--

--===============1534703498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1534703498==--
