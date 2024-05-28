Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C06948D21A4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 18:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED67110E0E3;
	Tue, 28 May 2024 16:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D5310E0E3;
 Tue, 28 May 2024 16:30:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8736943414556471617=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_mem/fsb/rawclk_?=
 =?utf-8?q?freq_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2024 16:30:38 -0000
Message-ID: <171691383841.2217197.18316290918332257835@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1716906179.git.jani.nikula@intel.com>
In-Reply-To: <cover.1716906179.git.jani.nikula@intel.com>
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

--===============8736943414556471617==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: mem/fsb/rawclk freq cleanups
URL   : https://patchwork.freedesktop.org/series/134145/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14835 -> Patchwork_134145v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/index.html

Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-glk-j4005 fi-cfl-8109u fi-bsw-n3050 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_134145v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#10311])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14835/fi-bsw-nick/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/fi-bsw-nick/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-atsm-1:         [PASS][3] -> [SKIP][4] ([i915#9980])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14835/bat-atsm-1/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/bat-atsm-1/igt@i915_pm_rpm@module-reload.html

  
  [i915#10311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10311
  [i915#9980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9980


Build changes
-------------

  * Linux: CI_DRM_14835 -> Patchwork_134145v1

  CI-20190529: 20190529
  CI_DRM_14835: e3b4ec79af13191a750eb8a85bc5388ac2f001a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7872: baba9988c34c55977332044f3521cfbba80ca630 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134145v1: e3b4ec79af13191a750eb8a85bc5388ac2f001a4 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/index.html

--===============8736943414556471617==
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
<tr><td><b>Series:</b></td><td>drm/i915: mem/fsb/rawclk freq cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134145/">https://patchwork.freedesktop.org/series/134145/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14835 -&gt; Patchwork_134145v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/index.html</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-glk-j4005 fi-cfl-8109u fi-bsw-n3050 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134145v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14835/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/fi-bsw-nick/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10311">i915#10311</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14835/bat-atsm-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134145v1/bat-atsm-1/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9980">i915#9980</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14835 -&gt; Patchwork_134145v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14835: e3b4ec79af13191a750eb8a85bc5388ac2f001a4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7872: baba9988c34c55977332044f3521cfbba80ca630 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134145v1: e3b4ec79af13191a750eb8a85bc5388ac2f001a4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8736943414556471617==--
