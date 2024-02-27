Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 417EA8686C3
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 03:19:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9C1A10E847;
	Tue, 27 Feb 2024 02:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC3210E847;
 Tue, 27 Feb 2024 02:19:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3306313113475636233=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Disable?=
 =?utf-8?q?_AuxCCS_framebuffers_if_built_for_Xe_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Feb 2024 02:19:48 -0000
Message-ID: <170900038804.318338.12522054450153146237@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240226203651.818678-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240226203651.818678-1-juhapekka.heikkila@gmail.com>
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

--===============3306313113475636233==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Disable AuxCCS framebuffers if built for Xe (rev2)
URL   : https://patchwork.freedesktop.org/series/129166/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14345 -> Patchwork_129166v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): bat-arls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129166v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@mman:
    - bat-dg2-8:          [PASS][1] -> [DMESG-WARN][2] ([i915#10014])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-dg2-8/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/bat-dg2-8/igt@i915_selftest@live@mman.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-atsm-1:         [INCOMPLETE][3] ([i915#10094] / [i915#10137]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  
  [i915#10014]: https://gitlab.freedesktop.org/drm/intel/issues/10014
  [i915#10094]: https://gitlab.freedesktop.org/drm/intel/issues/10094
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137


Build changes
-------------

  * Linux: CI_DRM_14345 -> Patchwork_129166v2

  CI-20190529: 20190529
  CI_DRM_14345: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129166v2: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b34a0ca9a760 drm/i915/display: Disable AuxCCS framebuffers if built for Xe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/index.html

--===============3306313113475636233==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Disable AuxCCS framebuffers if built for Xe (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129166/">https://patchwork.freedesktop.org/series/129166/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14345 -&gt; Patchwork_129166v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): bat-arls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129166v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@mman:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-dg2-8/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/bat-dg2-8/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10014">i915#10014</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10094">i915#10094</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129166v2/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14345 -&gt; Patchwork_129166v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14345: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129166v2: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b34a0ca9a760 drm/i915/display: Disable AuxCCS framebuffers if built for Xe</p>

</body>
</html>

--===============3306313113475636233==--
