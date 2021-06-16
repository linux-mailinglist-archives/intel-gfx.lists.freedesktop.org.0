Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 212003AA426
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 21:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F346E046;
	Wed, 16 Jun 2021 19:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B486B89F4F;
 Wed, 16 Jun 2021 19:19:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ACF05A008A;
 Wed, 16 Jun 2021 19:19:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 16 Jun 2021 19:19:12 -0000
Message-ID: <162387115268.8274.18219569432252540325@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616122833.332954-1-matthew.auld@intel.com>
In-Reply-To: <20210616122833.332954-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_return_DRIVER=5FNAME_for_the_fence_driver_name?=
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
Content-Type: multipart/mixed; boundary="===============0589561884=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0589561884==
Content-Type: multipart/alternative;
 boundary="===============5888614085526415725=="

--===============5888614085526415725==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: return DRIVER_NAME for the fence driver name
URL   : https://patchwork.freedesktop.org/series/91573/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10230 -> Patchwork_20388
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/index.html

Known issues
------------

  Here are the changes found in Patchwork_20388 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][2] ([i915#1602] / [i915#2029])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@dmabuf@all@dma_fence:
    - fi-pnv-d510:        [FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-pnv-d510/igt@dmabuf@all@dma_fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/fi-pnv-d510/igt@dmabuf@all@dma_fence.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10230 -> Patchwork_20388

  CI-20190529: 20190529
  CI_DRM_10230: 03937139a4149d1cb76e7677e5da15bc414d56dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6109: 61ba2ed489540e6a8a649be38abb075b3ab4d28a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20388: 1b20c87251a72547fda1b1a3597b196a86d0813d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1b20c87251a7 drm/i915: return DRIVER_NAME for the fence driver name

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/index.html

--===============5888614085526415725==
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
<tr><td><b>Series:</b></td><td>drm/i915: return DRIVER_NAME for the fence driver name</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91573/">https://patchwork.freedesktop.org/series/91573/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10230 -&gt; Patchwork_20388</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20388 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@dmabuf@all@dma_fence:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-pnv-d510/igt@dmabuf@all@dma_fence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20388/fi-pnv-d510/igt@dmabuf@all@dma_fence.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10230 -&gt; Patchwork_20388</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10230: 03937139a4149d1cb76e7677e5da15bc414d56dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6109: 61ba2ed489540e6a8a649be38abb075b3ab4d28a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20388: 1b20c87251a72547fda1b1a3597b196a86d0813d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1b20c87251a7 drm/i915: return DRIVER_NAME for the fence driver name</p>

</body>
</html>

--===============5888614085526415725==--

--===============0589561884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0589561884==--
