Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C4B7FA8D6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 19:20:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A005A10E073;
	Mon, 27 Nov 2023 18:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 864AD10E073;
 Mon, 27 Nov 2023 18:20:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 682ACAADE0;
 Mon, 27 Nov 2023 18:20:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1209123062521182075=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 27 Nov 2023 18:20:08 -0000
Message-ID: <170110920839.3003.10896535596649240097@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231127145437.15060-1-christian.koenig@amd.com>
In-Reply-To: <20231127145437.15060-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/ttm=3A_replace_busy_placement_w?=
 =?utf-8?q?ith_flags_v3?=
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

--===============1209123062521182075==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/ttm: replace busy placement with flags v3
URL   : https://patchwork.freedesktop.org/series/126927/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13928 -> Patchwork_126927v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/index.html

Participating hosts (36 -> 35)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_126927v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][2] ([fdo#109271]) +20 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-kbl-2:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1845]) +14 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][4] -> [ABORT][5] ([i915#8668])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-modeset@b-dp6:
    - bat-adlp-11:        [FAIL][6] ([i915#6121]) -> [PASS][7] +3 other tests pass
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp5:
    - bat-adlp-11:        [DMESG-FAIL][8] ([i915#6868]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlp-11:        [SKIP][10] ([i915#4342] / [i915#5354]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][12] ([IGT#3]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
#### Warnings ####

  * igt@kms_hdmi_inject@inject-audio:
    - bat-adlp-11:        [FAIL][14] -> [SKIP][15] ([i915#4369])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13928 -> Patchwork_126927v1

  CI-20190529: 20190529
  CI_DRM_13928: 347e889a869b969afb7118cd8d7068d7a1c66571 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7604: d2af13d9f5be5ce23d996e4afd3e45990f5ab977 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126927v1: 347e889a869b969afb7118cd8d7068d7a1c66571 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

02e4509493b5 drm/amdgpu: use GTT only as fallback for VRAM|GTT
66024ea3d4af drm/ttm: replace busy placement with flags v3

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/index.html

--===============1209123062521182075==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/ttm: replace busy placement with flags v3</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126927/">https://patchwork.freedesktop.org/series/126927/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13928 -&gt; Patchwork_126927v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126927v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@b-dp6.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13928/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126927v1/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4369">i915#4369</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13928 -&gt; Patchwork_126927v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13928: 347e889a869b969afb7118cd8d7068d7a1c66571 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7604: d2af13d9f5be5ce23d996e4afd3e45990f5ab977 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126927v1: 347e889a869b969afb7118cd8d7068d7a1c66571 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>02e4509493b5 drm/amdgpu: use GTT only as fallback for VRAM|GTT<br />
66024ea3d4af drm/ttm: replace busy placement with flags v3</p>

</body>
</html>

--===============1209123062521182075==--
