Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0F384A70F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 22:22:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DBF10F53A;
	Mon,  5 Feb 2024 21:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9A910F318;
 Mon,  5 Feb 2024 21:22:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2597644058698729512=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dsc=3A_Fix_the_mac?=
 =?utf-8?q?ro_that_calculates_DSCC=5F/DSCA=5F_PPS_reg_address_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <navaremanasi@chromium.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Feb 2024 21:22:23 -0000
Message-ID: <170716814358.1024443.11628177103855588069@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240205204619.1991673-1-navaremanasi@chromium.org>
In-Reply-To: <20240205204619.1991673-1-navaremanasi@chromium.org>
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

--===============2597644058698729512==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address (rev2)
URL   : https://patchwork.freedesktop.org/series/129486/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14227 -> Patchwork_129486v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/index.html

Participating hosts (36 -> 37)
------------------------------

  Additional (2): bat-kbl-2 fi-pnv-d510 
  Missing    (1): bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_129486v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271]) +28 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][3] ([fdo#109271]) +35 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {bat-adls-6}:       [DMESG-WARN][4] ([i915#5591]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-adls-6/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/bat-adls-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591


Build changes
-------------

  * Linux: CI_DRM_14227 -> Patchwork_129486v2

  CI-20190529: 20190529
  CI_DRM_14227: b71b753a5041cf8869006840c7577c3bac01d1cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7703: c58c5fb6aa1cb7d3627a15e364816a7a2add9edc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129486v2: b71b753a5041cf8869006840c7577c3bac01d1cd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9f562fc2a05b drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/index.html

--===============2597644058698729512==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129486/">https://patchwork.freedesktop.org/series/129486/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14227 -&gt; Patchwork_129486v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/index.html</p>
<h2>Participating hosts (36 -&gt; 37)</h2>
<p>Additional (2): bat-kbl-2 fi-pnv-d510 <br />
  Missing    (1): bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129486v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-adls-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129486v2/bat-adls-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14227 -&gt; Patchwork_129486v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14227: b71b753a5041cf8869006840c7577c3bac01d1cd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7703: c58c5fb6aa1cb7d3627a15e364816a7a2add9edc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129486v2: b71b753a5041cf8869006840c7577c3bac01d1cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9f562fc2a05b drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address</p>

</body>
</html>

--===============2597644058698729512==--
