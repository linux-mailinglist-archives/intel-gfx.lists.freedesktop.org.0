Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E16DBF4102
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 01:50:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAD310E543;
	Mon, 20 Oct 2025 23:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 97596180aaec (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9528810E53B;
 Mon, 20 Oct 2025 23:50:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9175573199632307688=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Simplify_i?=
 =?utf-8?q?ntel=5Fdp=5Fneeds=5F8b10b=5Ffec=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Oct 2025 23:50:15 -0000
Message-ID: <176100421552.35090.12233555534482648061@97596180aaec>
X-Patchwork-Hint: ignore
References: <20251020154438.416761-1-imre.deak@intel.com>
In-Reply-To: <20251020154438.416761-1-imre.deak@intel.com>
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

--===============9175573199632307688==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Simplify intel_dp_needs_8b10b_fec()
URL   : https://patchwork.freedesktop.org/series/156213/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17393 -> Patchwork_156213v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_156213v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-bsw-nick/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] +24 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live:
    - bat-dg2-8:          [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-dg2-8/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-dg2-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12061]) +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - fi-bsw-nick:        NOTRUN -> [SKIP][9] ([i915#11190]) +16 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [ABORT][10] ([i915#12904]) -> [PASS][11] +1 other test pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-apl-1/igt@dmabuf@all-tests.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-n3050:       [ABORT][12] ([i915#12904]) -> [PASS][13] +1 other test pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [DMESG-WARN][14] ([i915#13494]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-mtlp-9/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [DMESG-FAIL][18] ([i915#12061]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [FAIL][20] ([i915#14867]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849


Build changes
-------------

  * Linux: CI_DRM_17393 -> Patchwork_156213v1

  CI-20190529: 20190529
  CI_DRM_17393: bee2d9e4308e4b888e2524014a246793233f75e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8593: 8593
  Patchwork_156213v1: bee2d9e4308e4b888e2524014a246793233f75e8 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/index.html

--===============9175573199632307688==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Simplify intel_dp_needs_8b10b_fec()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/156213/">https://patchwork.freedesktop.org/series/156213/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17393 -&gt; Patchwork_156213v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_156213v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-bsw-nick/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +16 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-apl-1/igt@dmabuf@all-tests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">i915#14867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17393 -&gt; Patchwork_156213v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17393: bee2d9e4308e4b888e2524014a246793233f75e8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8593: 8593<br />
  Patchwork_156213v1: bee2d9e4308e4b888e2524014a246793233f75e8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============9175573199632307688==--
