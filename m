Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E71944D59
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 15:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC65710E974;
	Thu,  1 Aug 2024 13:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D75410E924;
 Thu,  1 Aug 2024 13:42:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3538672588796302407=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_correct?=
 =?utf-8?q?_dual_pps_handling_for_MTL=5FPCH+?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 01 Aug 2024 13:42:06 -0000
Message-ID: <172251972663.488076.7162899933138736723@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240801111141.574854-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20240801111141.574854-1-dnyaneshwar.bhadane@intel.com>
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

--===============3538672588796302407==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: correct dual pps handling for MTL_PCH+
URL   : https://patchwork.freedesktop.org/series/136796/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15168 -> Patchwork_136796v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-glk-j4005 fi-cfl-8109u fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_136796v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_migrate:
    - bat-arlh-2:         [PASS][1] -> [INCOMPLETE][2] ([i915#11598])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [PASS][3] -> [INCOMPLETE][4] ([i915#9413])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/bat-twl-2/igt@i915_selftest@live@gt_lrc.html

  
  [i915#11598]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11598
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15168 -> Patchwork_136796v1

  CI-20190529: 20190529
  CI_DRM_15168: e6b1e3660d0168d9860e7cef487aba2bc21611bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7950: 7950
  Patchwork_136796v1: e6b1e3660d0168d9860e7cef487aba2bc21611bd @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/index.html

--===============3538672588796302407==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: correct dual pps handling for MTL_PCH+</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136796/">https://patchwork.freedesktop.org/series/136796/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15168 -&gt; Patchwork_136796v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-glk-j4005 fi-cfl-8109u fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136796v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11598">i915#11598</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15168 -&gt; Patchwork_136796v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15168: e6b1e3660d0168d9860e7cef487aba2bc21611bd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7950: 7950<br />
  Patchwork_136796v1: e6b1e3660d0168d9860e7cef487aba2bc21611bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3538672588796302407==--
