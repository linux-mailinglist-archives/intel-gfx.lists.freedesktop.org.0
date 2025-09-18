Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A63BB35676
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 10:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B9B10E5DB;
	Tue, 26 Aug 2025 08:13:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758C110E5D4;
 Tue, 26 Aug 2025 08:13:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6177588651478025532=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/hdmi=3A_add_debu?=
 =?utf-8?q?gfs_to_contorl_HDMI_bpc_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Aug 2025 08:13:22 -0000
Message-ID: <175619600247.269761.6264249132530154328@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
In-Reply-To: <20250806042053.3570558-1-shawn.c.lee@intel.com>
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

--===============6177588651478025532==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdmi: add debugfs to contorl HDMI bpc (rev3)
URL   : https://patchwork.freedesktop.org/series/152562/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17068 -> Patchwork_152562v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_152562v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152562v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152562v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem:
    - bat-arlh-2:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17068/bat-arlh-2/igt@i915_selftest@live@gem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/bat-arlh-2/igt@i915_selftest@live@gem.html

  
Known issues
------------

  Here are the changes found in Patchwork_152562v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][3] -> [DMESG-WARN][4] ([i915#13494])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17068/bat-mtlp-9/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         [PASS][5] -> [INCOMPLETE][6] ([i915#14803] / [i915#14838])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17068/bat-arlh-2/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/bat-arlh-2/igt@i915_selftest@live.html

  
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#14803]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14803
  [i915#14838]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14838


Build changes
-------------

  * Linux: CI_DRM_17068 -> Patchwork_152562v3

  CI-20190529: 20190529
  CI_DRM_17068: 8660eb3be99b607b54bf3fa47fd66e9fbd59af46 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8507: 8507
  Patchwork_152562v3: 8660eb3be99b607b54bf3fa47fd66e9fbd59af46 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/index.html

--===============6177588651478025532==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdmi: add debugfs to contorl HDMI bpc (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152562/">https://patchwork.freedesktop.org/series/152562/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17068 -&gt; Patchwork_152562v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_152562v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152562v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152562v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17068/bat-arlh-2/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/bat-arlh-2/igt@i915_selftest@live@gem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152562v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17068/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17068/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v3/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14803">i915#14803</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14838">i915#14838</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17068 -&gt; Patchwork_152562v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17068: 8660eb3be99b607b54bf3fa47fd66e9fbd59af46 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8507: 8507<br />
  Patchwork_152562v3: 8660eb3be99b607b54bf3fa47fd66e9fbd59af46 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6177588651478025532==--
