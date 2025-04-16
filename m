Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF48AA90447
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 15:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E3C810E901;
	Wed, 16 Apr 2025 13:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2E810E901;
 Wed, 16 Apr 2025 13:23:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8655919049745464881=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Enable/Disable_DC_balance?=
 =?utf-8?q?_along_with_VRR_DSB?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Apr 2025 13:23:14 -0000
Message-ID: <174480979403.10262.10055964706327069906@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============8655919049745464881==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable/Disable DC balance along with VRR DSB
URL   : https://patchwork.freedesktop.org/series/147799/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16423 -> Patchwork_147799v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_147799v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_147799v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/index.html

Participating hosts (45 -> 45)
------------------------------

  Additional (1): bat-jsl-4 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_147799v1:

### IGT changes ###

#### Possible regressions ####

  * igt@fbdev@write:
    - bat-adls-6:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-adls-6/igt@fbdev@write.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-adls-6/igt@fbdev@write.html

  * igt@gem_close_race@basic-process:
    - bat-mtlp-9:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-mtlp-9/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-mtlp-9/igt@gem_close_race@basic-process.html

  * igt@i915_module_load@load:
    - bat-rpls-4:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-rpls-4/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-rpls-4/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-11/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-11/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-14/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-14/igt@i915_module_load@load.html

  * igt@kms_busy@basic@modeset:
    - bat-dg2-9:          [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-9/igt@kms_busy@basic@modeset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-9/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - bat-dg2-13:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - bat-arls-6:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-arls-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-arls-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-plain-flip@d-dp1:
    - bat-dg2-8:          [PASS][17] -> [ABORT][18] +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-8/igt@kms_flip@basic-plain-flip@d-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-8/igt@kms_flip@basic-plain-flip@d-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_147799v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-nick:        [INCOMPLETE][19] ([i915#12904]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13950]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13950


Build changes
-------------

  * Linux: CI_DRM_16423 -> Patchwork_147799v1

  CI-20190529: 20190529
  CI_DRM_16423: b8f79cb562e983515cf827f0f336f79423b8d5a7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8320: cd3b5612be3cef838f16e074bf1bc421399d584d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_147799v1: b8f79cb562e983515cf827f0f336f79423b8d5a7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/index.html

--===============8655919049745464881==
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
<tr><td><b>Series:</b></td><td>Enable/Disable DC balance along with VRR DSB</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/147799/">https://patchwork.freedesktop.org/series/147799/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16423 -&gt; Patchwork_147799v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_147799v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_147799v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/index.html</p>
<h2>Participating hosts (45 -&gt; 45)</h2>
<p>Additional (1): bat-jsl-4 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_147799v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-adls-6/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-adls-6/igt@fbdev@write.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-mtlp-9/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-mtlp-9/igt@gem_close_race@basic-process.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-rpls-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-rpls-4/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-9/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-9/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-arls-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-arls-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-dp1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/bat-dg2-8/igt@kms_flip@basic-plain-flip@d-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/bat-dg2-8/igt@kms_flip@basic-plain-flip@d-dp1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_147799v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@dmabuf@all-tests@dma_fence_chain:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16423/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147799v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16423 -&gt; Patchwork_147799v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16423: b8f79cb562e983515cf827f0f336f79423b8d5a7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8320: cd3b5612be3cef838f16e074bf1bc421399d584d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_147799v1: b8f79cb562e983515cf827f0f336f79423b8d5a7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8655919049745464881==--
