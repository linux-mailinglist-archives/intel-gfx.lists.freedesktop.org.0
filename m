Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F93B859CFD
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 08:34:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1ECE10E12C;
	Mon, 19 Feb 2024 07:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5674610E12C;
 Mon, 19 Feb 2024 07:34:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5756980710396535920=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Program_Deep_PKG=5FC=5FLATE?=
 =?utf-8?q?NCY_register_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Feb 2024 07:34:22 -0000
Message-ID: <170832806235.89216.6406411637210075189@8e613ede5ea5>
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

--===============5756980710396535920==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Program Deep PKG_C_LATENCY register (rev4)
URL   : https://patchwork.freedesktop.org/series/129407/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14288 -> Patchwork_129407v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/index.html

Participating hosts (34 -> 33)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (2): bat-adlp-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129407v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][2] ([fdo#109271]) +35 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-arls-2}:       [ABORT][3] ([i915#10237]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14288/bat-arls-2/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/bat-arls-2/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#10237]: https://gitlab.freedesktop.org/drm/intel/issues/10237
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849


Build changes
-------------

  * Linux: CI_DRM_14288 -> Patchwork_129407v4

  CI-20190529: 20190529
  CI_DRM_14288: cb7db7997fcacd6792fd2fd6e9e93309a408587a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7716: 7716
  Patchwork_129407v4: cb7db7997fcacd6792fd2fd6e9e93309a408587a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

816207164a57 drm/i915/lnl: Program PKGC_LATENCY register
49b6eaaf2fe6 drm/i915/lnl: Add pkgc related register

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/index.html

--===============5756980710396535920==
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
<tr><td><b>Series:</b></td><td>Program Deep PKG_C_LATENCY register (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129407/">https://patchwork.freedesktop.org/series/129407/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14288 -&gt; Patchwork_129407v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/index.html</p>
<h2>Participating hosts (34 -&gt; 33)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (2): bat-adlp-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129407v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14288/bat-arls-2/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10237">i915#10237</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129407v4/bat-arls-2/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14288 -&gt; Patchwork_129407v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14288: cb7db7997fcacd6792fd2fd6e9e93309a408587a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7716: 7716<br />
  Patchwork_129407v4: cb7db7997fcacd6792fd2fd6e9e93309a408587a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>816207164a57 drm/i915/lnl: Program PKGC_LATENCY register<br />
49b6eaaf2fe6 drm/i915/lnl: Add pkgc related register</p>

</body>
</html>

--===============5756980710396535920==--
