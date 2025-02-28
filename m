Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2C2A49BAA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 15:15:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1829B10ECAF;
	Fri, 28 Feb 2025 14:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664E710ECBB;
 Fri, 28 Feb 2025 14:15:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3288689101718962146=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_add_s?=
 =?utf-8?q?ome_sub-structs_for_clarity?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2025 14:15:32 -0000
Message-ID: <174075213240.3245606.12976101966051230368@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1740746939.git.jani.nikula@intel.com>
In-Reply-To: <cover.1740746939.git.jani.nikula@intel.com>
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

--===============3288689101718962146==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: add some sub-structs for clarity
URL   : https://patchwork.freedesktop.org/series/145641/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16202 -> Patchwork_145641v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/index.html

Participating hosts (44 -> 44)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_145641v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2] ([i915#13633])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-1115g4:      [PASS][3] -> [FAIL][4] ([i915#13633])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-twl-1:          [PASS][5] -> [ABORT][6] ([i915#12435] / [i915#12919] / [i915#13503])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-twl-1/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@memory_region:
    - bat-twl-2:          NOTRUN -> [INCOMPLETE][7] ([i915#12445])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-2/igt@i915_selftest@live@memory_region.html

  * igt@i915_selftest@live@perf:
    - bat-twl-1:          [PASS][8] -> [ABORT][9] ([i915#12919])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-twl-1/igt@i915_selftest@live@perf.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-1/igt@i915_selftest@live@perf.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][10] -> [SKIP][11] ([i915#9197]) +2 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-twl-2:          [INCOMPLETE][12] ([i915#12445]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-twl-2/igt@i915_selftest@live@reset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][14] ([i915#12061]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-twl-2:          [INCOMPLETE][16] ([i915#12445] / [i915#13761] / [i915#13776]) -> [INCOMPLETE][17] ([i915#12435] / [i915#12445] / [i915#13761] / [i915#13776])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-twl-2/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-2/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
  [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
  [i915#13761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13761
  [i915#13776]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13776
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16202 -> Patchwork_145641v1

  CI-20190529: 20190529
  CI_DRM_16202: 4e4a83bc30b77bb710641f0b43e6098bd04c5044 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8252: e266af0feec344315b07d8af186226e467d02ecf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_145641v1: 4e4a83bc30b77bb710641f0b43e6098bd04c5044 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/index.html

--===============3288689101718962146==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: add some sub-structs for clarity</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/145641/">https://patchwork.freedesktop.org/series/145641/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16202 -&gt; Patchwork_145641v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_145641v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503">i915#13503</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@memory_region:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-2/igt@i915_selftest@live@memory_region.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-twl-1/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-1/igt@i915_selftest@live@perf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-twl-2/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16202/bat-twl-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13761">i915#13761</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13776">i915#13776</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145641v1/bat-twl-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13761">i915#13761</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13776">i915#13776</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16202 -&gt; Patchwork_145641v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16202: 4e4a83bc30b77bb710641f0b43e6098bd04c5044 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8252: e266af0feec344315b07d8af186226e467d02ecf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_145641v1: 4e4a83bc30b77bb710641f0b43e6098bd04c5044 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3288689101718962146==--
