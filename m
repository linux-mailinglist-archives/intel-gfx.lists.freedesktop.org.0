Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC80FAD9599
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 21:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4AD10EA49;
	Fri, 13 Jun 2025 19:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF1A10E5F9;
 Fri, 13 Jun 2025 19:34:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0427858239147331026=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=3A_Create_a_task_info?=
 =?utf-8?q?_option_for_wedge_events_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Jun 2025 19:34:20 -0000
Message-ID: <174984326031.78866.2260102143686383178@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250613184348.1761020-1-andrealmeid@igalia.com>
In-Reply-To: <20250613184348.1761020-1-andrealmeid@igalia.com>
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

--===============0427858239147331026==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Create a task info option for wedge events (rev2)
URL   : https://patchwork.freedesktop.org/series/149333/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16703 -> Patchwork_149333v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_149333v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_149333v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): bat-arlh-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_149333v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-9:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-9/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-dg2-9/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_149333v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-rpls-4:         [PASS][3] -> [DMESG-WARN][4] ([i915#13400])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-nick:        [PASS][5] -> [FAIL][6] ([i915#13734]) +1 other test fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/fi-bsw-nick/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/fi-bsw-nick/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [DMESG-WARN][7] ([i915#13494]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-9/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-dg2-8:          [ABORT][9] ([i915#14429]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-8/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-dg2-8/igt@i915_selftest@live.html
    - bat-arlh-3:         [DMESG-FAIL][11] ([i915#14243]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arlh-3/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@client:
    - bat-dg2-8:          [ABORT][13] ([i915#14201]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-8/igt@i915_selftest@live@client.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-dg2-8/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [DMESG-FAIL][15] ([i915#12061]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243
  [i915#14429]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14429


Build changes
-------------

  * Linux: CI_DRM_16703 -> Patchwork_149333v2

  CI-20190529: 20190529
  CI_DRM_16703: 4d016d6e602638e0ebc3895331224e057508c07a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8411: d5b5d2bb4f8795a98ea58376a128b74f654b7ec1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_149333v2: 4d016d6e602638e0ebc3895331224e057508c07a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/index.html

--===============0427858239147331026==
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
<tr><td><b>Series:</b></td><td>drm: Create a task info option for wedge events (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/149333/">https://patchwork.freedesktop.org/series/149333/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16703 -&gt; Patchwork_149333v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_149333v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_149333v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): bat-arlh-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_149333v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-9/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-dg2-9/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_149333v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/fi-bsw-nick/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/fi-bsw-nick/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734">i915#13734</a>) +1 other test fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14429">i915#14429</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-dg2-8/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-8/igt@i915_selftest@live@client.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149333v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16703 -&gt; Patchwork_149333v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16703: 4d016d6e602638e0ebc3895331224e057508c07a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8411: d5b5d2bb4f8795a98ea58376a128b74f654b7ec1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_149333v2: 4d016d6e602638e0ebc3895331224e057508c07a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0427858239147331026==--
