Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E40179F2C9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 22:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9AF10E052;
	Wed, 13 Sep 2023 20:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEFE310E052;
 Wed, 13 Sep 2023 20:23:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4CA2A0093;
 Wed, 13 Sep 2023 20:23:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1064855394482951189=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 13 Sep 2023 20:23:43 -0000
Message-ID: <169463662383.31251.14835278031738359550@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1694514689.git.jani.nikula@intel.com>
In-Reply-To: <cover.1694514689.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_prepare_for_xe_driver_display_integration_=28rev2=29?=
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

--===============1064855394482951189==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: prepare for xe driver display integration (rev2)
URL   : https://patchwork.freedesktop.org/series/123595/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13626 -> Patchwork_123595v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_123595v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-hsw-4770:        [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-hsw-4770/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@reset:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][4] ([i915#7634]) +32 other tests dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-apl-guc/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][5] ([i915#180] / [i915#7634])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-nick:        [PASS][6] -> [FAIL][7] ([i915#9276])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][8] ([fdo#109271]) +16 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][9] -> [ABORT][10] ([i915#8668])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][11] ([IGT#3] / [i915#6121]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#7634]: https://gitlab.freedesktop.org/drm/intel/issues/7634
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9273]: https://gitlab.freedesktop.org/drm/intel/issues/9273
  [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276
  [i915#9279]: https://gitlab.freedesktop.org/drm/intel/issues/9279


Build changes
-------------

  * Linux: CI_DRM_13626 -> Patchwork_123595v2

  CI-20190529: 20190529
  CI_DRM_13626: d5838c603de7b95ea299cbf7ff87228496bc86b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7486: afd9a940c8247291baadd1977fe881d4f2edf0c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123595v2: d5838c603de7b95ea299cbf7ff87228496bc86b2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eefa4a38c197 drm/i915/display: add I915 conditional build to vlv_dsi_pll.h
ba340b8b1992 drm/i915/display: add I915 conditional build to intel_tv.h
6a853e356ceb drm/i915/display: add I915 conditional build to intel_sdvo.h
ada956088dae drm/i915/display: add I915 conditional build to intel_dvo.h
5792becebf7a drm/i915/display: add I915 conditional build to g4x_hdmi.h
41d922d0d6d0 drm/i915/display: add I915 conditional build to i9xx_wm.h
3e8f337e1a9c drm/i915/display: add I915 conditional build to vlv_dsi.h
b41adc684347 drm/i915/display: add I915 conditional build to intel_crt.h
6753d3e343a7 drm/i915/display: add I915 conditional build to intel_dpio_phy.h
81c7e1dfedf6 drm/i915/display: add I915 conditional build to g4x_dp.h
5ea53a0acc6f drm/i915/display: add I915 conditional build to intel_overlay.h
4c3a949798eb drm/i915/display: add I915 conditional build to intel_sprite.h
e1ed955e7497 drm/i915/display: add I915 conditional build to intel_pch_display.h
94b8fac9cdd9 drm/i915/display: add I915 conditional build to intel_pch_refclk.h
d60465378b30 drm/i915/display: add I915 conditional build to intel_lpe_audio.h
99062b4f66ee drm/i915/display: add I915 conditional build to i9xx_plane.h
34b8c6d1ed47 drm/i915/display: add I915 conditional build to hsw_ips.h
2471aabe5e5b drm/i915/display: add I915 conditional build to intel_lvds.h
fffcc4693dfc drm/i915: define I915 during i915 driver build

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/index.html

--===============1064855394482951189==
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
<tr><td><b>Series:</b></td><td>drm/i915: prepare for xe driver display integration (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123595/">https://patchwork.freedesktop.org/series/123595/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13626 -&gt; Patchwork_123595v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123595v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-apl-guc/igt@i915_selftest@live@reset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>) +32 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9276">i915#9276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123595v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13626 -&gt; Patchwork_123595v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13626: d5838c603de7b95ea299cbf7ff87228496bc86b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7486: afd9a940c8247291baadd1977fe881d4f2edf0c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123595v2: d5838c603de7b95ea299cbf7ff87228496bc86b2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eefa4a38c197 drm/i915/display: add I915 conditional build to vlv_dsi_pll.h<br />
ba340b8b1992 drm/i915/display: add I915 conditional build to intel_tv.h<br />
6a853e356ceb drm/i915/display: add I915 conditional build to intel_sdvo.h<br />
ada956088dae drm/i915/display: add I915 conditional build to intel_dvo.h<br />
5792becebf7a drm/i915/display: add I915 conditional build to g4x_hdmi.h<br />
41d922d0d6d0 drm/i915/display: add I915 conditional build to i9xx_wm.h<br />
3e8f337e1a9c drm/i915/display: add I915 conditional build to vlv_dsi.h<br />
b41adc684347 drm/i915/display: add I915 conditional build to intel_crt.h<br />
6753d3e343a7 drm/i915/display: add I915 conditional build to intel_dpio_phy.h<br />
81c7e1dfedf6 drm/i915/display: add I915 conditional build to g4x_dp.h<br />
5ea53a0acc6f drm/i915/display: add I915 conditional build to intel_overlay.h<br />
4c3a949798eb drm/i915/display: add I915 conditional build to intel_sprite.h<br />
e1ed955e7497 drm/i915/display: add I915 conditional build to intel_pch_display.h<br />
94b8fac9cdd9 drm/i915/display: add I915 conditional build to intel_pch_refclk.h<br />
d60465378b30 drm/i915/display: add I915 conditional build to intel_lpe_audio.h<br />
99062b4f66ee drm/i915/display: add I915 conditional build to i9xx_plane.h<br />
34b8c6d1ed47 drm/i915/display: add I915 conditional build to hsw_ips.h<br />
2471aabe5e5b drm/i915/display: add I915 conditional build to intel_lvds.h<br />
fffcc4693dfc drm/i915: define I915 during i915 driver build</p>

</body>
</html>

--===============1064855394482951189==--
