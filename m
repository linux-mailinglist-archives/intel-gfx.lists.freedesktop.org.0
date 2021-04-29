Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EA536E31E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 03:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB646EC79;
	Thu, 29 Apr 2021 01:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F8756EC75;
 Thu, 29 Apr 2021 01:59:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44C71A7E03;
 Thu, 29 Apr 2021 01:59:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 29 Apr 2021 01:59:08 -0000
Message-ID: <161966154825.20428.7131790835791917705@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429003410.69754-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210429003410.69754-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_querying_engine_cycles?=
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
Content-Type: multipart/mixed; boundary="===============1100965324=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1100965324==
Content-Type: multipart/alternative;
 boundary="===============7637229673277636984=="

--===============7637229673277636984==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for querying engine cycles
URL   : https://patchwork.freedesktop.org/series/89615/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10023 -> Patchwork_20025
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/index.html

Known issues
------------

  Here are the changes found in Patchwork_20025 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] ([i915#2605])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#1602] / [i915#2029])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][4] ([i915#1849] / [i915#3180]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_6076 -> IGTPW_5769
  * Linux: CI_DRM_10023 -> Patchwork_20025

  CI-20190529: 20190529
  CI_DRM_10023: a8bf9e284933fa5c1cb821b48ba95821e5d1cc3f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5769: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5769/index.html
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20025: 2ad9b6fced1ef0ba95279c3b6c9891829ce37694 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2ad9b6fced1e i915/query: Correlate engine and cpu timestamps with better accuracy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/index.html

--===============7637229673277636984==
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
<tr><td><b>Series:</b></td><td>Add support for querying engine cycles</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89615/">https://patchwork.freedesktop.org/series/89615/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10023 -&gt; Patchwork_20025</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20025 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20025/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6076 -&gt; IGTPW_5769</li>
<li>Linux: CI_DRM_10023 -&gt; Patchwork_20025</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10023: a8bf9e284933fa5c1cb821b48ba95821e5d1cc3f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5769: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5769/index.html<br />
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20025: 2ad9b6fced1ef0ba95279c3b6c9891829ce37694 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2ad9b6fced1e i915/query: Correlate engine and cpu timestamps with better accuracy</p>

</body>
</html>

--===============7637229673277636984==--

--===============1100965324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1100965324==--
