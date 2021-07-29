Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2540C3D9B1A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 03:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F736E94D;
	Thu, 29 Jul 2021 01:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 559C86E593;
 Thu, 29 Jul 2021 01:34:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F132AA3D8;
 Thu, 29 Jul 2021 01:34:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 29 Jul 2021 01:34:37 -0000
Message-ID: <162752247732.27324.2426770215620194201@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728233411.2365788-1-matthew.d.roper@intel.com>
In-Reply-To: <20210728233411.2365788-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Correct_SFC=5FDONE_register_offset?=
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
Content-Type: multipart/mixed; boundary="===============0236174840=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0236174840==
Content-Type: multipart/alternative;
 boundary="===============4500414525449875276=="

--===============4500414525449875276==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Correct SFC_DONE register offset
URL   : https://patchwork.freedesktop.org/series/93148/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10415 -> Patchwork_20732
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20732/index.html

Known issues
------------

  Here are the changes found in Patchwork_20732 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][1] ([i915#1982]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10415/fi-kbl-soraka/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20732/fi-kbl-soraka/igt@i915_module_load@reload.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (43 -> 35)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus fi-tgl-y bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10415 -> Patchwork_20732

  CI-20190529: 20190529
  CI_DRM_10415: 457209baa84d04e17ce648a12733a32809717494 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6155: 4b51398dcd7559012b85776e7353d516ff1e6ce6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20732: af7a125d4a51b74df3c7f2c3e0916b59cf62c994 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

af7a125d4a51 drm/i915: Correct SFC_DONE register offset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20732/index.html

--===============4500414525449875276==
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
<tr><td><b>Series:</b></td><td>drm/i915: Correct SFC_DONE register offset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93148/">https://patchwork.freedesktop.org/series/93148/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20732/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20732/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10415 -&gt; Patchwork_20732</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20732/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20732 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10415/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20732/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 35)</h2>
<p>Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus fi-tgl-y bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10415 -&gt; Patchwork_20732</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10415: 457209baa84d04e17ce648a12733a32809717494 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6155: 4b51398dcd7559012b85776e7353d516ff1e6ce6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20732: af7a125d4a51b74df3c7f2c3e0916b59cf62c994 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>af7a125d4a51 drm/i915: Correct SFC_DONE register offset</p>

</body>
</html>

--===============4500414525449875276==--

--===============0236174840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0236174840==--
