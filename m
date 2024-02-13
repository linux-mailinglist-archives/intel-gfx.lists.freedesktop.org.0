Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C0F852A43
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 08:48:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA5010E29D;
	Tue, 13 Feb 2024 07:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D17BB10E244;
 Tue, 13 Feb 2024 07:48:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4910633614772306897=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Program_Deep_PKG=5FC=5FLATE?=
 =?utf-8?q?NCY_register_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Feb 2024 07:48:28 -0000
Message-ID: <170781050885.1201024.18405976374005774648@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240201085158.1000285-1-suraj.kandpal@intel.com>
In-Reply-To: <20240201085158.1000285-1-suraj.kandpal@intel.com>
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

--===============4910633614772306897==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Program Deep PKG_C_LATENCY register (rev3)
URL   : https://patchwork.freedesktop.org/series/129407/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14259 -> Patchwork_129407v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/index.html

Participating hosts (37 -> 35)
------------------------------

  Additional (2): bat-kbl-2 fi-bsw-n3050 
  Missing    (4): bat-atsm-1 bat-adlm-1 bat-arls-1 fi-snb-2520m 

New tests
---------

  New tests have been introduced between CI_DRM_14259 and Patchwork_129407v3:

### New IGT tests (1) ###

  * igt@i915_module_load:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_129407v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][2] ([fdo#109271]) +35 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][3] ([fdo#109271]) +15 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849


Build changes
-------------

  * Linux: CI_DRM_14259 -> Patchwork_129407v3

  CI-20190529: 20190529
  CI_DRM_14259: e370df7a4fb4125cb8eee1b00ff1592808ed9786 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7710: d87a5d85a60fba1283821d5212c3aece64cb36ba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129407v3: e370df7a4fb4125cb8eee1b00ff1592808ed9786 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bfbf35a7e6bb drm/i915/lnl: Program PKGC_LATENCY register
b8a2cabe3a99 drm/i915/lnl: Add pkgc related register

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/index.html

--===============4910633614772306897==
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
<tr><td><b>Series:</b></td><td>Program Deep PKG_C_LATENCY register (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129407/">https://patchwork.freedesktop.org/series/129407/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14259 -&gt; Patchwork_129407v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Additional (2): bat-kbl-2 fi-bsw-n3050 <br />
  Missing    (4): bat-atsm-1 bat-adlm-1 bat-arls-1 fi-snb-2520m </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14259 and Patchwork_129407v3:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_module_load:<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129407v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v3/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14259 -&gt; Patchwork_129407v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14259: e370df7a4fb4125cb8eee1b00ff1592808ed9786 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7710: d87a5d85a60fba1283821d5212c3aece64cb36ba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129407v3: e370df7a4fb4125cb8eee1b00ff1592808ed9786 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bfbf35a7e6bb drm/i915/lnl: Program PKGC_LATENCY register<br />
b8a2cabe3a99 drm/i915/lnl: Add pkgc related register</p>

</body>
</html>

--===============4910633614772306897==--
