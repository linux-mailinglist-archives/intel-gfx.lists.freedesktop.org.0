Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2459BDF12E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 16:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2699010E2A9;
	Wed, 15 Oct 2025 14:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 97596180aaec (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F68E10E2A9;
 Wed, 15 Oct 2025 14:32:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1800982701566379892=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Fix_C?=
 =?utf-8?q?20_PHY_PLL_DP/HDMI_mode_programming_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Oct 2025 14:32:56 -0000
Message-ID: <176053877625.17708.262599291378379376@97596180aaec>
X-Patchwork-Hint: ignore
References: <20251015125446.3931198-1-mika.kahola@intel.com>
In-Reply-To: <20251015125446.3931198-1-mika.kahola@intel.com>
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

--===============1800982701566379892==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fix C20 PHY PLL DP/HDMI mode programming (rev2)
URL   : https://patchwork.freedesktop.org/series/155823/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17365 -> Patchwork_155823v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-bsw-nick fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_155823v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][1] -> [ABORT][2] ([i915#13494])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-mtlp-9/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-6:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/bat-arls-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [PASS][5] -> [FAIL][6] ([i915#14867])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867


Build changes
-------------

  * Linux: CI_DRM_17365 -> Patchwork_155823v2

  CI-20190529: 20190529
  CI_DRM_17365: 6a9cafb6723c47062cc4d593804d5bb69155d81a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8585: 8585
  Patchwork_155823v2: 6a9cafb6723c47062cc4d593804d5bb69155d81a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/index.html

--===============1800982701566379892==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fix C20 PHY PLL DP/HDMI mode programming (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/155823/">https://patchwork.freedesktop.org/series/155823/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17365 -&gt; Patchwork_155823v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-bsw-nick fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_155823v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155823v2/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">i915#14867</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17365 -&gt; Patchwork_155823v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17365: 6a9cafb6723c47062cc4d593804d5bb69155d81a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8585: 8585<br />
  Patchwork_155823v2: 6a9cafb6723c47062cc4d593804d5bb69155d81a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1800982701566379892==--
