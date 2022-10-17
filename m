Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D54DB601A57
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 22:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF7310E0BD;
	Mon, 17 Oct 2022 20:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0E0C10E0BD;
 Mon, 17 Oct 2022 20:34:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7C9BA9932;
 Mon, 17 Oct 2022 20:34:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8652229452191220944=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Date: Mon, 17 Oct 2022 20:34:44 -0000
Message-ID: <166603888465.13569.4419851095635257064@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221016180938.17403-1-fmdefrancesco@gmail.com>
In-Reply-To: <20221016180938.17403-1-fmdefrancesco@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Replace_kmap=28=29_with_kmap=5Flocal=5Fpage=28=29_=28r?=
 =?utf-8?q?ev2=29?=
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

--===============8652229452191220944==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Replace kmap() with kmap_local_page() (rev2)
URL   : https://patchwork.freedesktop.org/series/107277/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12252 -> Patchwork_107277v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/index.html

Participating hosts (46 -> 43)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (4): fi-bxt-dsi fi-cfl-8700k bat-atsm-1 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_107277v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][1] -> [FAIL][2] ([i915#7229])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12252/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_linear_blits@basic:
    - fi-pnv-d510:        [PASS][3] -> [SKIP][4] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12252/fi-pnv-d510/igt@gem_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-pnv-d510/igt@gem_linear_blits@basic.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][5] ([i915#7220])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-icl-u2/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#7220]: https://gitlab.freedesktop.org/drm/intel/issues/7220
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12252 -> Patchwork_107277v2

  CI-20190529: 20190529
  CI_DRM_12252: 14867082ef288af10c90732e31b633af30e304c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7017: 193c8bdd7df32556129482c52011e1b7a233b699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107277v2: 14867082ef288af10c90732e31b633af30e304c0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

83c34dd3b2a2 drm/i915/gem: Replace kmap() with kmap_local_page()
ade39e0c9963 drm/i915/gt: Replace kmap() with kmap_local_page()
cd89efceb13c drm/i915: Replace kmap() with kmap_local_page()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/index.html

--===============8652229452191220944==
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
<tr><td><b>Series:</b></td><td>drm/i915: Replace kmap() with kmap_local_page() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107277/">https://patchwork.freedesktop.org/series/107277/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12252 -&gt; Patchwork_107277v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/index.html</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (4): fi-bxt-dsi fi-cfl-8700k bat-atsm-1 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107277v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12252/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12252/fi-pnv-d510/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-pnv-d510/igt@gem_linear_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7220">i915#7220</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12252 -&gt; Patchwork_107277v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12252: 14867082ef288af10c90732e31b633af30e304c0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7017: 193c8bdd7df32556129482c52011e1b7a233b699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107277v2: 14867082ef288af10c90732e31b633af30e304c0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>83c34dd3b2a2 drm/i915/gem: Replace kmap() with kmap_local_page()<br />
ade39e0c9963 drm/i915/gt: Replace kmap() with kmap_local_page()<br />
cd89efceb13c drm/i915: Replace kmap() with kmap_local_page()</p>

</body>
</html>

--===============8652229452191220944==--
