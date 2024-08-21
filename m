Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B954195A5BD
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 22:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CAC810E6C3;
	Wed, 21 Aug 2024 20:18:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C3A10E6C3;
 Wed, 21 Aug 2024 20:18:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3105107986313479173=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_video/aperture=3A_optionall?=
 =?utf-8?q?y_match_the_device_in_sysfb=5Fdisable=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Deucher" <alexander.deucher@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2024 20:18:18 -0000
Message-ID: <172427149840.722511.5079529679996667174@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240821191135.829765-1-alexander.deucher@amd.com>
In-Reply-To: <20240821191135.829765-1-alexander.deucher@amd.com>
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

--===============3105107986313479173==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: video/aperture: optionally match the device in sysfb_disable()
URL   : https://patchwork.freedesktop.org/series/137585/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15272 -> Patchwork_137585v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_137585v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_137585v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Additional (2): fi-glk-j4005 fi-bsw-n3050 
  Missing    (3): bat-dg2-8 fi-snb-2520m fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_137585v1:

### IGT changes ###

#### Possible regressions ####

  * igt@fbdev@read:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15272/bat-arls-1/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/bat-arls-1/igt@fbdev@read.html

  
Known issues
------------

  Here are the changes found in Patchwork_137585v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][5] +19 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [PASS][6] -> [DMESG-WARN][7] ([i915#11349])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15272/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][8] +10 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@uncore:
    - {bat-arlh-3}:       [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15272/bat-arlh-3/igt@i915_selftest@live@uncore.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/bat-arlh-3/igt@i915_selftest@live@uncore.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_15272 -> Patchwork_137585v1

  CI-20190529: 20190529
  CI_DRM_15272: ddbda36f876f53498924155abfa1cd4c58517903 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7982: 76ebe4ecfa1757f21e3f1d3be5993088a92cd274 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137585v1: ddbda36f876f53498924155abfa1cd4c58517903 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/index.html

--===============3105107986313479173==
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
<tr><td><b>Series:</b></td><td>video/aperture: optionally match the device in sysfb_disable()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137585/">https://patchwork.freedesktop.org/series/137585/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15272 -&gt; Patchwork_137585v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_137585v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_137585v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Additional (2): fi-glk-j4005 fi-bsw-n3050 <br />
  Missing    (3): bat-dg2-8 fi-snb-2520m fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_137585v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15272/bat-arls-1/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/bat-arls-1/igt@fbdev@read.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137585v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15272/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@uncore:<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15272/bat-arlh-3/igt@i915_selftest@live@uncore.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137585v1/bat-arlh-3/igt@i915_selftest@live@uncore.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15272 -&gt; Patchwork_137585v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15272: ddbda36f876f53498924155abfa1cd4c58517903 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7982: 76ebe4ecfa1757f21e3f1d3be5993088a92cd274 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137585v1: ddbda36f876f53498924155abfa1cd4c58517903 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3105107986313479173==--
