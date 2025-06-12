Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116C3AD6C12
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 11:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D3410E1ED;
	Thu, 12 Jun 2025 09:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA1E10E1ED;
 Thu, 12 Jun 2025 09:23:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6173137426050744368=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/gmbus=3A_Add_Wa?=
 =?utf-8?q?=5F16025573575_for_PTL_for_bit-bashing?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jun 2025 09:23:04 -0000
Message-ID: <174972018430.70743.12519041158618119944@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
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

--===============6173137426050744368==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
URL   : https://patchwork.freedesktop.org/series/150137/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16688 -> Patchwork_150137v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-arlh-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_150137v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-twl-1:          [PASS][1] -> [DMESG-WARN][2] ([i915#13736])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-twl-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-twl-1/igt@i915_module_load@load.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12061]) +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [PASS][7] -> [FAIL][8] ([i915#13930])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@guc_hang:
    - bat-twl-2:          [INCOMPLETE][9] ([i915#14096]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-twl-2/igt@i915_selftest@live@guc_hang.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-twl-2/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@ring_submission:
    - bat-arlh-3:         [INCOMPLETE][11] ([i915#14393]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-arlh-3/igt@i915_selftest@live@ring_submission.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-arlh-3/igt@i915_selftest@live@ring_submission.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13736]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736
  [i915#13930]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13930
  [i915#14096]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096
  [i915#14393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14393


Build changes
-------------

  * Linux: CI_DRM_16688 -> Patchwork_150137v1

  CI-20190529: 20190529
  CI_DRM_16688: 75238c32deae15ee4120b42a5be556ec36807a84 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8405: 8405
  Patchwork_150137v1: 75238c32deae15ee4120b42a5be556ec36807a84 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/index.html

--===============6173137426050744368==
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
<tr><td><b>Series:</b></td><td>drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/150137/">https://patchwork.freedesktop.org/series/150137/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16688 -&gt; Patchwork_150137v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): bat-arlh-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_150137v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-twl-1/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736">i915#13736</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13930">i915#13930</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-twl-2/igt@i915_selftest@live@guc_hang.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096">i915#14096</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-twl-2/igt@i915_selftest@live@guc_hang.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-arlh-3/igt@i915_selftest@live@ring_submission.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14393">i915#14393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150137v1/bat-arlh-3/igt@i915_selftest@live@ring_submission.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16688 -&gt; Patchwork_150137v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16688: 75238c32deae15ee4120b42a5be556ec36807a84 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8405: 8405<br />
  Patchwork_150137v1: 75238c32deae15ee4120b42a5be556ec36807a84 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6173137426050744368==--
