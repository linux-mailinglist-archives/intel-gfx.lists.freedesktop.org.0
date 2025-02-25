Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F77A432B8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 03:00:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F86110E528;
	Tue, 25 Feb 2025 02:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0524510E528;
 Tue, 25 Feb 2025 02:00:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2730056226762973662=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/dp=3A_Fix_link_traini?=
 =?utf-8?q?ng_interrupted_by_HPD_pulse?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2025 02:00:42 -0000
Message-ID: <174044884201.1797042.9112213594958161134@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250224193115.2058512-1-imre.deak@intel.com>
In-Reply-To: <20250224193115.2058512-1-imre.deak@intel.com>
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

--===============2730056226762973662==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp: Fix link training interrupted by HPD pulse
URL   : https://patchwork.freedesktop.org/series/145352/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16175 -> Patchwork_145352v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_145352v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_145352v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): bat-arlh-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_145352v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-6:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-elk-e7500:       [PASS][3] -> [DMESG-WARN][4] +39 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/fi-elk-e7500/igt@i915_selftest@live@client.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/fi-elk-e7500/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@gt_engines:
    - fi-ilk-650:         [PASS][5] -> [DMESG-WARN][6] +39 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/fi-ilk-650/igt@i915_selftest@live@gt_engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/fi-ilk-650/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@objects:
    - fi-blb-e6850:       [PASS][7] -> [DMESG-WARN][8] +39 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/fi-blb-e6850/igt@i915_selftest@live@objects.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/fi-blb-e6850/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@ring_submission:
    - fi-ivb-3770:        [PASS][9] -> [DMESG-WARN][10] +39 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-adlp-6:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-adlp-6/igt@kms_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-adlp-6/igt@kms_pm_rpm@basic-rte.html

  
Known issues
------------

  Here are the changes found in Patchwork_145352v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][13] -> [FAIL][14] ([i915#13633])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][15] -> [SKIP][16] ([i915#9197]) +3 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-adlp-6:         [PASS][17] -> [SKIP][18] ([i915#12916])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-adlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-adlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-twl-2:          [ABORT][19] ([i915#12919] / [i915#13503]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-twl-2/igt@i915_selftest@live@reset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-twl-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][21] ([i915#12061]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
  [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16175 -> Patchwork_145352v1

  CI-20190529: 20190529
  CI_DRM_16175: 9f112b86fd27ff7de2ce09718596cfefd71ee41f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8246: 2670886863d5821273146d7f94cdd3c8e3a4fe0b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_145352v1: 9f112b86fd27ff7de2ce09718596cfefd71ee41f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/index.html

--===============2730056226762973662==
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
<tr><td><b>Series:</b></td><td>drm/dp: Fix link training interrupted by HPD pulse</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/145352/">https://patchwork.freedesktop.org/series/145352/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16175 -&gt; Patchwork_145352v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_145352v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_145352v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): bat-arlh-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_145352v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/fi-elk-e7500/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/fi-elk-e7500/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/fi-ilk-650/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/fi-ilk-650/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/fi-blb-e6850/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/fi-blb-e6850/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/fi-ivb-3770/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-adlp-6/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-adlp-6/igt@kms_pm_rpm@basic-rte.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_145352v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-adlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-adlp-6/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916">i915#12916</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-twl-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503">i915#13503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-twl-2/igt@i915_selftest@live@reset.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16175/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16175 -&gt; Patchwork_145352v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16175: 9f112b86fd27ff7de2ce09718596cfefd71ee41f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8246: 2670886863d5821273146d7f94cdd3c8e3a4fe0b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_145352v1: 9f112b86fd27ff7de2ce09718596cfefd71ee41f @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2730056226762973662==--
