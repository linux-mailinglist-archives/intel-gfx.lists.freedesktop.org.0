Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 725702FBDD1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 18:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDAC26E888;
	Tue, 19 Jan 2021 17:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3432A6E886;
 Tue, 19 Jan 2021 17:37:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D3BCA0BCB;
 Tue, 19 Jan 2021 17:37:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 19 Jan 2021 17:37:43 -0000
Message-ID: <161107786318.4868.1826304529670527485@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210119133106.66294-1-matthew.auld@intel.com>
In-Reply-To: <20210119133106.66294-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Fix_the_sgt=2Epfn_sanit?=
 =?utf-8?q?y_check?=
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
Content-Type: multipart/mixed; boundary="===============1121191653=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1121191653==
Content-Type: multipart/alternative;
 boundary="===============4235521437440969846=="

--===============4235521437440969846==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Fix the sgt.pfn sanity check
URL   : https://patchwork.freedesktop.org/series/86044/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9643 -> Patchwork_19408
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19408/index.html

Known issues
------------

  Here are the changes found in Patchwork_19408 that come from known issues:

### CI changes ###


### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - fi-skl-6600u:       [DMESG-FAIL][1] ([i915#2291] / [i915#666]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9643/fi-skl-6600u/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19408/fi-skl-6600u/igt@i915_selftest@live@active.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2788]: https://gitlab.freedesktop.org/drm/intel/issues/2788
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (42 -> 37)
------------------------------

  Additional (1): fi-dg1-1 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9643 -> Patchwork_19408

  CI-20190529: 20190529
  CI_DRM_9643: fabbcd086b7f667f0e0cce8eeb26a7b5c7120782 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19408: edc68e6edfea6f17685bb9b88d69c0ea26ef6dd5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

edc68e6edfea drm/i915/pool: constrain pool objects by mapping type
78937c31d55f drm/i915: move i915_map_type into i915_gem_object_types.h
5fdaa963024e drm/i915/error: Fix object page offset within a region
f60872461b06 drm/i915: Fix the sgt.pfn sanity check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19408/index.html

--===============4235521437440969846==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Fix the sgt.pfn sanity check</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86044/">https://patchwork.freedesktop.org/series/86044/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19408/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19408/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9643 -&gt; Patchwork_19408</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19408/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19408 that come from known issues:</p>
<h3>CI changes</h3>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@active:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9643/fi-skl-6600u/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/666">i915#666</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19408/fi-skl-6600u/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Additional (1): fi-dg1-1 <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-tgl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9643 -&gt; Patchwork_19408</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9643: fabbcd086b7f667f0e0cce8eeb26a7b5c7120782 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19408: edc68e6edfea6f17685bb9b88d69c0ea26ef6dd5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>edc68e6edfea drm/i915/pool: constrain pool objects by mapping type<br />
78937c31d55f drm/i915: move i915_map_type into i915_gem_object_types.h<br />
5fdaa963024e drm/i915/error: Fix object page offset within a region<br />
f60872461b06 drm/i915: Fix the sgt.pfn sanity check</p>

</body>
</html>

--===============4235521437440969846==--

--===============1121191653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1121191653==--
