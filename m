Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BC78C4327
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 16:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD9410E7E1;
	Mon, 13 May 2024 14:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E32E10E7E0;
 Mon, 13 May 2024 14:21:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7338973439889276949=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gem/i915=5Fgem=5Ft?=
 =?utf-8?q?tm=5Fmove=3A_Fix_typo?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Deming Wang" <wangdeming@inspur.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 May 2024 14:21:49 -0000
Message-ID: <171561010957.2094388.6112561477394436328@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240513061451.1627-1-wangdeming@inspur.com>
In-Reply-To: <20240513061451.1627-1-wangdeming@inspur.com>
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

--===============7338973439889276949==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem/i915_gem_ttm_move: Fix typo
URL   : https://patchwork.freedesktop.org/series/133540/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14754 -> Patchwork_133540v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): bat-arls-2 bat-jsl-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_133540v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - bat-adls-6:         [PASS][1] -> [TIMEOUT][2] ([i915#10026] / [i915#10134])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14754/bat-adls-6/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/bat-adls-6/igt@i915_selftest@live@gt_engines.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [FAIL][3] ([i915#10378]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14754/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][5] ([i915#10594]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14754/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10026
  [i915#10134]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10134
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435
  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594


Build changes
-------------

  * Linux: CI_DRM_14754 -> Patchwork_133540v1

  CI-20190529: 20190529
  CI_DRM_14754: 7def831e1e6b6d95c92e0a4fad9539a95141403d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7847: 86712f2effc8ba6690c7e165ad63904416763b75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133540v1: 7def831e1e6b6d95c92e0a4fad9539a95141403d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/index.html

--===============7338973439889276949==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem/i915_gem_ttm_move: Fix typo</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133540/">https://patchwork.freedesktop.org/series/133540/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14754 -&gt; Patchwork_133540v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): bat-arls-2 bat-jsl-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133540v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14754/bat-adls-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/bat-adls-6/igt@i915_selftest@live@gt_engines.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10026">i915#10026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10134">i915#10134</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14754/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14754/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133540v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14754 -&gt; Patchwork_133540v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14754: 7def831e1e6b6d95c92e0a4fad9539a95141403d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7847: 86712f2effc8ba6690c7e165ad63904416763b75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133540v1: 7def831e1e6b6d95c92e0a4fad9539a95141403d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7338973439889276949==--
