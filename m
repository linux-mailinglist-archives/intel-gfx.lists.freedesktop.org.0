Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BED53DA176
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 12:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5ED6EA7F;
	Thu, 29 Jul 2021 10:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A802C6EA7F;
 Thu, 29 Jul 2021 10:45:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1D4EA882E;
 Thu, 29 Jul 2021 10:45:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 29 Jul 2021 10:45:37 -0000
Message-ID: <162755553765.27327.16084748021485770250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729094731.1953091-1-matthew.auld@intel.com>
In-Reply-To: <20210729094731.1953091-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_prefer_the_create=5Fuser_helper_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1057978827=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1057978827==
Content-Type: multipart/alternative;
 boundary="===============3564000989647736180=="

--===============3564000989647736180==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: prefer the create_user helper (rev2)
URL   : https://patchwork.freedesktop.org/series/93131/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10418 -> Patchwork_20738
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/index.html

Known issues
------------

  Here are the changes found in Patchwork_20738 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [FAIL][1] ([i915#1888]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][3] ([i915#165]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888


Participating hosts (41 -> 34)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10418 -> Patchwork_20738

  CI-20190529: 20190529
  CI_DRM_10418: e8b9eb4ffe9ad59eeda3c5318282fc2d7acbe7da @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6156: 354638455597ac48ac433606b24b82a4d7b65d20 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20738: 0f9180249ece82c37bd71a4480a943d473cf1362 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0f9180249ece drm/i915/selftests: prefer the create_user helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/index.html

--===============3564000989647736180==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: prefer the create_user helper (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93131/">https://patchwork.freedesktop.org/series/93131/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10418 -&gt; Patchwork_20738</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20738 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20738/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 34)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10418 -&gt; Patchwork_20738</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10418: e8b9eb4ffe9ad59eeda3c5318282fc2d7acbe7da @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6156: 354638455597ac48ac433606b24b82a4d7b65d20 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20738: 0f9180249ece82c37bd71a4480a943d473cf1362 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0f9180249ece drm/i915/selftests: prefer the create_user helper</p>

</body>
</html>

--===============3564000989647736180==--

--===============1057978827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1057978827==--
