Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FCEAB1286
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 13:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBC210EA26;
	Fri,  9 May 2025 11:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E952B10EA26;
 Fri,  9 May 2025 11:51:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2705866247797327897=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_Send_?=
 =?utf-8?q?DSI_DCS_commands_with_pipeline_flush_in_High_Speed_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yu, Gareth" <gareth.yu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 09 May 2025 11:51:41 -0000
Message-ID: <174679150194.63756.12583907131929718018@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250509021327.649003-1-gareth.yu@intel.com>
In-Reply-To: <20250509021327.649003-1-gareth.yu@intel.com>
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

--===============2705866247797327897==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Send DSI DCS commands with pipeline flush in High Speed (rev2)
URL   : https://patchwork.freedesktop.org/series/148782/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16525 -> Patchwork_148782v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_148782v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_148782v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/index.html

Participating hosts (44 -> 44)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_148782v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-mtlp-9/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-mtlp-9/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_148782v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-mtlp-8/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-8:          [PASS][5] -> [ABORT][6] ([i915#13696] / [i915#14201])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-dg2-8/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-dg2-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-dg2-8:          [PASS][7] -> [ABORT][8] ([i915#14201])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@slpc:
    - bat-arlh-2:         NOTRUN -> [INCOMPLETE][9] ([i915#14065])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-arlh-2/igt@i915_selftest@live@slpc.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-arls-6:         [PASS][10] -> [FAIL][11] ([i915#13930])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arls-6/igt@kms_hdmi_inject@inject-audio.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-arls-6/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-arlh-2:         [INCOMPLETE][12] ([i915#14046]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arlh-2/igt@i915_selftest@live@gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-arlh-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][14] ([i915#12061]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13696]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13696
  [i915#13930]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13930
  [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
  [i915#14065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14065
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201


Build changes
-------------

  * Linux: CI_DRM_16525 -> Patchwork_148782v2

  CI-20190529: 20190529
  CI_DRM_16525: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8359: 807f0cbcc771d1d0bb0d27a78231a5f92dc02126 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_148782v2: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/index.html

--===============2705866247797327897==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Send DSI DCS commands with pipeline flush in High Speed (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148782/">https://patchwork.freedesktop.org/series/148782/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16525 -&gt; Patchwork_148782v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_148782v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_148782v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_148782v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148782v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13696">i915#13696</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-arlh-2/igt@i915_selftest@live@slpc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14065">i915#14065</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arls-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-arls-6/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13930">i915#13930</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arlh-2/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-arlh-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148782v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16525 -&gt; Patchwork_148782v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16525: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8359: 807f0cbcc771d1d0bb0d27a78231a5f92dc02126 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_148782v2: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2705866247797327897==--
