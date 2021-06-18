Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BABD83ACF9A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 17:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1B46EA3D;
	Fri, 18 Jun 2021 15:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 392AF6EA3D;
 Fri, 18 Jun 2021 15:59:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 319A8A8830;
 Fri, 18 Jun 2021 15:59:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 18 Jun 2021 15:59:30 -0000
Message-ID: <162403197017.1294.14486264407419536191@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210618132515.163277-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210618132515.163277-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Fix_incorrect_assumptions_about_ttm=5Fbo=5Fvalidat?=
 =?utf-8?q?e=28=29_semantics_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1226685161=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1226685161==
Content-Type: multipart/alternative;
 boundary="===============5625948304560146997=="

--===============5625948304560146997==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Fix incorrect assumptions about ttm_bo_validate() semantics (rev2)
URL   : https://patchwork.freedesktop.org/series/91661/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10242 -> Patchwork_20411
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20411/index.html

Known issues
------------

  Here are the changes found in Patchwork_20411 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][1] ([i915#2867]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20411/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10242 -> Patchwork_20411

  CI-20190529: 20190529
  CI_DRM_10242: a31069c62e8586aa92907539ab948412c1d5f5a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6112: a17cc0c5d096fabfd516848c114bc411e11130f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20411: 8ecc740c7cad711108f1d8ba33e25bfa12153852 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8ecc740c7cad drm/i915/ttm: Fix incorrect assumptions about ttm_bo_validate() semantics

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20411/index.html

--===============5625948304560146997==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Fix incorrect assumptions about ttm_bo_validate() semantics (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91661/">https://patchwork.freedesktop.org/series/91661/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20411/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20411/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10242 -&gt; Patchwork_20411</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20411/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20411 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20411/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10242 -&gt; Patchwork_20411</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10242: a31069c62e8586aa92907539ab948412c1d5f5a0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6112: a17cc0c5d096fabfd516848c114bc411e11130f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20411: 8ecc740c7cad711108f1d8ba33e25bfa12153852 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8ecc740c7cad drm/i915/ttm: Fix incorrect assumptions about ttm_bo_validate() semantics</p>

</body>
</html>

--===============5625948304560146997==--

--===============1226685161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1226685161==--
