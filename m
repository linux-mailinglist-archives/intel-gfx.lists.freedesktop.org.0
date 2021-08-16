Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EA23ED1B2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 12:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6564B8944A;
	Mon, 16 Aug 2021 10:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A13138944A;
 Mon, 16 Aug 2021 10:12:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93C0CA8836;
 Mon, 16 Aug 2021 10:12:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4021075906989324073=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Aug 2021 10:12:05 -0000
Message-ID: <162910872557.26493.3885242508752948359@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210816084855.75586-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210816084855.75586-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Ditch_the_i915=5Fgem=5Fww=5Fctx_loop_member?=
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

--===============4021075906989324073==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Ditch the i915_gem_ww_ctx loop member
URL   : https://patchwork.freedesktop.org/series/93711/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10487 -> Patchwork_20829
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/index.html

Known issues
------------

  Here are the changes found in Patchwork_20829 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/fi-kbl-soraka/igt@amdgpu/amd_prime@amd-to-i915.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][2] ([fdo#109271]) -> [FAIL][3] ([i915#579])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10487 -> Patchwork_20829

  CI-20190529: 20190529
  CI_DRM_10487: 51573da73ed1828367d6ea150155b85e347ab747 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6176: 3d8642170f2947b6aaad211e9e2e474fadedf6f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20829: e82160475e8e931a8012bc7ed0cdcc387f562c23 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e82160475e8e drm/i915: Ditch the i915_gem_ww_ctx loop member

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/index.html

--===============4021075906989324073==
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
<tr><td><b>Series:</b></td><td>drm/i915: Ditch the i915_gem_ww_ctx loop member</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93711/">https://patchwork.freedesktop.org/series/93711/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10487 -&gt; Patchwork_20829</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20829 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_prime@amd-to-i915:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/fi-kbl-soraka/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10487/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20829/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10487 -&gt; Patchwork_20829</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10487: 51573da73ed1828367d6ea150155b85e347ab747 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6176: 3d8642170f2947b6aaad211e9e2e474fadedf6f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20829: e82160475e8e931a8012bc7ed0cdcc387f562c23 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e82160475e8e drm/i915: Ditch the i915_gem_ww_ctx loop member</p>

</body>
</html>

--===============4021075906989324073==--
