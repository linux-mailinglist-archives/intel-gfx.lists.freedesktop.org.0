Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9362A6CB6D
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Mar 2025 17:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707A910E11B;
	Sat, 22 Mar 2025 16:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B860410E08C;
 Sat, 22 Mar 2025 16:19:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7896510748395509930=="
MIME-Version: 1.0
Subject: =?utf-8?b?4pyTIGk5MTUuQ0kuQkFUOiBzdWNjZXNzIGZvciBiaXRzOiBGaXhlZC10eXBlIEdF?=
 =?utf-8?b?Tk1BU0tfVSooKSBhbmQgQklUX1UqKCkgKHJldjIp?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vincent Mailhol via B4 Relay"
 <devnull+mailhol.vincent.wanadoo.fr@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 22 Mar 2025 16:19:15 -0000
Message-ID: <174266035575.67314.5609791522365828812@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250322-fixed-type-genmasks-v7-0-da380ff1c5b9@wanadoo.fr>
In-Reply-To: <20250322-fixed-type-genmasks-v7-0-da380ff1c5b9@wanadoo.fr>
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

--===============7896510748395509930==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: bits: Fixed-type GENMASK_U*() and BIT_U*() (rev2)
URL   : https://patchwork.freedesktop.org/series/146088/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16301 -> Patchwork_146088v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_146088v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-9:         [PASS][1] -> [ABORT][2] ([i915#13696]) +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/bat-adlp-9/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/bat-adlp-9/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-mtlp-9:         [FAIL][5] -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/bat-mtlp-9/igt@dmabuf@all-tests@dma_fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/bat-mtlp-9/igt@dmabuf@all-tests@dma_fence.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [DMESG-WARN][7] ([i915#13736]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13696]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13696
  [i915#13736]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736


Build changes
-------------

  * Linux: CI_DRM_16301 -> Patchwork_146088v2

  CI-20190529: 20190529
  CI_DRM_16301: a123616cf3afc205116835d8b083f48272583dcd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8278: b6673db372bd8987f65948d3a97f8dcd2ef42b01 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_146088v2: a123616cf3afc205116835d8b083f48272583dcd @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/index.html

--===============7896510748395509930==
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
<tr><td><b>Series:</b></td><td>bits: Fixed-type GENMASK_U*() and BIT_U*() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/146088/">https://patchwork.freedesktop.org/series/146088/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16301 -&gt; Patchwork_146088v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_146088v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/bat-adlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/bat-adlp-9/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13696">i915#13696</a>) +1 other test abort</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/bat-mtlp-9/igt@dmabuf@all-tests@dma_fence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/bat-mtlp-9/igt@dmabuf@all-tests@dma_fence.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736">i915#13736</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146088v2/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16301 -&gt; Patchwork_146088v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16301: a123616cf3afc205116835d8b083f48272583dcd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8278: b6673db372bd8987f65948d3a97f8dcd2ef42b01 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_146088v2: a123616cf3afc205116835d8b083f48272583dcd @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7896510748395509930==--
