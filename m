Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E59E4653B50
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 05:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B94510E4EE;
	Thu, 22 Dec 2022 04:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C80BD10E4EE;
 Thu, 22 Dec 2022 04:32:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AF1C2AADD6;
 Thu, 22 Dec 2022 04:32:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1285885793406463206=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Date: Thu, 22 Dec 2022 04:32:26 -0000
Message-ID: <167168354667.14838.14673603077212422425@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221221130439.153107-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20221221130439.153107-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/color=3A_Add_function_to_load_degamma_LUT_in_MTL?=
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

--===============1285885793406463206==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/color: Add function to load degamma LUT in MTL
URL   : https://patchwork.freedesktop.org/series/112135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12520 -> Patchwork_112135v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/index.html

Participating hosts (43 -> 45)
------------------------------

  Additional (3): bat-rpls-2 bat-atsm-1 fi-pnv-d510 
  Missing    (1): fi-hsw-4770 

Known issues
------------

  Here are the changes found in Patchwork_112135v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-skl-6700k2:      [PASS][1] -> [FAIL][2] ([i915#5032])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12520/fi-skl-6700k2/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/fi-skl-6700k2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +44 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12520 -> Patchwork_112135v1

  CI-20190529: 20190529
  CI_DRM_12520: 55e3fca3e7a892d5c57e27a753c4863598a1b9e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7101: bd33b4c060eb6b2e24c5784b2aa817ae5840f84f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112135v1: 55e3fca3e7a892d5c57e27a753c4863598a1b9e3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ef0779c93260 drm/i915/color: Add function to load degamma LUT in MTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/index.html

--===============1285885793406463206==
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
<tr><td><b>Series:</b></td><td>drm/i915/color: Add function to load degamma LUT in MTL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112135/">https://patchwork.freedesktop.org/series/112135/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12520 -&gt; Patchwork_112135v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/index.html</p>
<h2>Participating hosts (43 -&gt; 45)</h2>
<p>Additional (3): bat-rpls-2 bat-atsm-1 fi-pnv-d510 <br />
  Missing    (1): fi-hsw-4770 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112135v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12520/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/fi-skl-6700k2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112135v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12520 -&gt; Patchwork_112135v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12520: 55e3fca3e7a892d5c57e27a753c4863598a1b9e3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7101: bd33b4c060eb6b2e24c5784b2aa817ae5840f84f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112135v1: 55e3fca3e7a892d5c57e27a753c4863598a1b9e3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ef0779c93260 drm/i915/color: Add function to load degamma LUT in MTL</p>

</body>
</html>

--===============1285885793406463206==--
