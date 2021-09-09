Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBB9404414
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 05:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86AD96E433;
	Thu,  9 Sep 2021 03:49:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A63B6E433;
 Thu,  9 Sep 2021 03:49:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40D2FA00CC;
 Thu,  9 Sep 2021 03:49:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7830179907604002825=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 03:49:48 -0000
Message-ID: <163115938823.16809.8030299673874125834@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909030726.3047104-1-airlied@gmail.com>
In-Reply-To: <20210909030726.3047104-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5/uncore=3A_constify_the_uncore_vtables=2E_=28rev3=29?=
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

--===============7830179907604002825==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/uncore: constify the uncore vtables. (rev3)
URL   : https://patchwork.freedesktop.org/series/94465/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10565 -> Patchwork_20997
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20997/index.html

Known issues
------------

  Here are the changes found in Patchwork_20997 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [DMESG-FAIL][1] ([i915#1886]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20997/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886


Participating hosts (47 -> 32)
------------------------------

  Missing    (15): fi-ilk-m540 fi-hsw-gt1 fi-bdw-5557u bat-adls-5 bat-dg1-6 fi-bdw-gvtdvm fi-bsw-cyan fi-snb-2520m bat-adlp-4 fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-bdw-samus bat-jsl-1 fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10565 -> Patchwork_20997

  CI-20190529: 20190529
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20997: fcc6ecfc788bdec6e2452aaca1238334b05c3b5d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fcc6ecfc788b drm/i915/uncore: constify the register vtables. (v2)
2e090337048c drm/i915/uncore: split the fw get function into separate vfunc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20997/index.html

--===============7830179907604002825==
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
<tr><td><b>Series:</b></td><td>i915/uncore: constify the uncore vtables. (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94465/">https://patchwork.freedesktop.org/series/94465/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20997/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20997/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10565 -&gt; Patchwork_20997</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20997/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20997 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20997/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 32)</h2>
<p>Missing    (15): fi-ilk-m540 fi-hsw-gt1 fi-bdw-5557u bat-adls-5 bat-dg1-6 fi-bdw-gvtdvm fi-bsw-cyan fi-snb-2520m bat-adlp-4 fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-bdw-samus bat-jsl-1 fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10565 -&gt; Patchwork_20997</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20997: fcc6ecfc788bdec6e2452aaca1238334b05c3b5d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fcc6ecfc788b drm/i915/uncore: constify the register vtables. (v2)<br />
2e090337048c drm/i915/uncore: split the fw get function into separate vfunc</p>

</body>
</html>

--===============7830179907604002825==--
