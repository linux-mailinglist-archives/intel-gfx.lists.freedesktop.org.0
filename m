Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A54A43BF571
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 08:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06F7D6E04E;
	Thu,  8 Jul 2021 06:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 421F86E04E;
 Thu,  8 Jul 2021 06:18:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B543A9932;
 Thu,  8 Jul 2021 06:18:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 08 Jul 2021 06:18:19 -0000
Message-ID: <162572509921.32073.12407341616394121602@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTWlu?=
 =?utf-8?q?or_revid/stepping_and_workaround_cleanup?=
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
Content-Type: multipart/mixed; boundary="===============1398936029=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1398936029==
Content-Type: multipart/alternative;
 boundary="===============4798589177756453725=="

--===============4798589177756453725==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Minor revid/stepping and workaround cleanup
URL   : https://patchwork.freedesktop.org/series/92299/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10311 -> Patchwork_20552
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/index.html

Known issues
------------

  Here are the changes found in Patchwork_20552 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2] ([i915#155])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10311/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - {fi-tgl-1115g4}:    [FAIL][3] ([i915#1888]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10311/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][5] ([i915#2722]) -> [FAIL][6] ([i915#1602] / [i915#2029])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10311/fi-bdw-5557u/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/fi-bdw-5557u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-bsw-cyan fi-bdw-samus fi-kbl-8809g 


Build changes
-------------

  * Linux: CI_DRM_10311 -> Patchwork_20552

  CI-20190529: 20190529
  CI_DRM_10311: 8a345996f9213fc41d19aca4305e14acc5efd99b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6130: 390edfb703c346f06b0850db71bd3cc1342a3c02 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20552: c78151696795fb5756638759c2a1ff6d29274de4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c78151696795 drm/i915/cnl: Drop all workarounds
9e913fff5691 drm/i915/dg1: Use revid->stepping tables
54dfa2be0428 drm/i915/rkl: Use revid->stepping tables
46752176291f drm/i915/jsl_ehl: Use revid->stepping tables
4f8fb265f095 drm/i915/icl: Use revid->stepping tables
c88cee5325fe drm/i915/skl: Use revid->stepping tables
76c5a033ed04 drm/i915: Make pre-production detection use direct revid comparison

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/index.html

--===============4798589177756453725==
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
<tr><td><b>Series:</b></td><td>Minor revid/stepping and workaround cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92299/">https://patchwork.freedesktop.org/series/92299/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10311 -&gt; Patchwork_20552</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20552 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10311/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10311/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10311/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20552/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-bsw-cyan fi-bdw-samus fi-kbl-8809g </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10311 -&gt; Patchwork_20552</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10311: 8a345996f9213fc41d19aca4305e14acc5efd99b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6130: 390edfb703c346f06b0850db71bd3cc1342a3c02 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20552: c78151696795fb5756638759c2a1ff6d29274de4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c78151696795 drm/i915/cnl: Drop all workarounds<br />
9e913fff5691 drm/i915/dg1: Use revid-&gt;stepping tables<br />
54dfa2be0428 drm/i915/rkl: Use revid-&gt;stepping tables<br />
46752176291f drm/i915/jsl_ehl: Use revid-&gt;stepping tables<br />
4f8fb265f095 drm/i915/icl: Use revid-&gt;stepping tables<br />
c88cee5325fe drm/i915/skl: Use revid-&gt;stepping tables<br />
76c5a033ed04 drm/i915: Make pre-production detection use direct revid comparison</p>

</body>
</html>

--===============4798589177756453725==--

--===============1398936029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1398936029==--
