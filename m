Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 474356A116F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 21:47:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C590110E18F;
	Thu, 23 Feb 2023 20:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 255A910E18F;
 Thu, 23 Feb 2023 20:46:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E744AADDA;
 Thu, 23 Feb 2023 20:46:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0626539823570364284=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Thu, 23 Feb 2023 20:46:58 -0000
Message-ID: <167718521808.15876.12993981993251448032@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230223183954.1817632-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230223183954.1817632-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_X-Tile_support_changes_to_client_blits?=
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

--===============0626539823570364284==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: X-Tile support changes to client blits
URL   : https://patchwork.freedesktop.org/series/114309/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12774 -> Patchwork_114309v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114309v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][1] -> [SKIP][2] ([i915#5174])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#4983])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][5] ([i915#7229]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-rpls-1:         [DMESG-FAIL][7] ([i915#7059]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][9] ([i915#7699]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699


Build changes
-------------

  * Linux: CI_DRM_12774 -> Patchwork_114309v1

  CI-20190529: 20190529
  CI_DRM_12774: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7171: 35a09092eabf7e55aeb625720634550a0368dde6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114309v1: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9345ae2ac965 drm/i915/mtl: X-Tile support changes to client blits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/index.html

--===============0626539823570364284==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: X-Tile support changes to client blits</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114309/">https://patchwork.freedesktop.org/series/114309/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12774 -&gt; Patchwork_114309v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114309v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12774 -&gt; Patchwork_114309v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12774: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7171: 35a09092eabf7e55aeb625720634550a0368dde6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114309v1: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9345ae2ac965 drm/i915/mtl: X-Tile support changes to client blits</p>

</body>
</html>

--===============0626539823570364284==--
