Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C7086A0BF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 21:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5A410E0DC;
	Tue, 27 Feb 2024 20:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8EC910E0DC;
 Tue, 27 Feb 2024 20:24:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3185035152868080964=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_Add_plane_SIZE=5FHIN?=
 =?utf-8?q?TS_property_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Feb 2024 20:24:19 -0000
Message-ID: <170906545982.337279.17351553887460070852@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240227193523.5601-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240227193523.5601-1-ville.syrjala@linux.intel.com>
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

--===============3185035152868080964==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Add plane SIZE_HINTS property (rev5)
URL   : https://patchwork.freedesktop.org/series/113758/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14352 -> Patchwork_113758v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113758v5 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-cfl-8109u:       [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14352/fi-cfl-8109u/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1849])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] ([fdo#109271]) +39 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14352 -> Patchwork_113758v5

  CI-20190529: 20190529
  CI_DRM_14352: 0d7a78693be62a8d1cd311376815b89b18de8204 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113758v5: 0d7a78693be62a8d1cd311376815b89b18de8204 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

207ccb475d43 drm/i915: Add SIZE_HINTS property for cursors
cc2cd46f6ae5 drm: Introduce plane SIZE_HINTS property

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/index.html

--===============3185035152868080964==
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
<tr><td><b>Series:</b></td><td>drm: Add plane SIZE_HINTS property (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113758/">https://patchwork.freedesktop.org/series/113758/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14352 -&gt; Patchwork_113758v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113758v5 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14352/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v5/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14352 -&gt; Patchwork_113758v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14352: 0d7a78693be62a8d1cd311376815b89b18de8204 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113758v5: 0d7a78693be62a8d1cd311376815b89b18de8204 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>207ccb475d43 drm/i915: Add SIZE_HINTS property for cursors<br />
cc2cd46f6ae5 drm: Introduce plane SIZE_HINTS property</p>

</body>
</html>

--===============3185035152868080964==--
