Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB0B94A80D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 14:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B4D10E0B5;
	Wed,  7 Aug 2024 12:48:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F00A910E0B5;
 Wed,  7 Aug 2024 12:48:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3731015462775981586=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/hwmon=3A_expose_fa?=
 =?utf-8?q?n_speed_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Aug 2024 12:48:53 -0000
Message-ID: <172303493397.546579.13812016680164288285@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240807123018.827506-1-raag.jadav@intel.com>
In-Reply-To: <20240807123018.827506-1-raag.jadav@intel.com>
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

--===============3731015462775981586==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hwmon: expose fan speed (rev3)
URL   : https://patchwork.freedesktop.org/series/136036/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15195 -> Patchwork_136036v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/index.html

Participating hosts (42 -> 36)
------------------------------

  Missing    (6): fi-kbl-7567u bat-kbl-2 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g bat-arlh-2 

Known issues
------------

  Here are the changes found in Patchwork_136036v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [PASS][1] -> [INCOMPLETE][2] ([i915#9413])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/bat-twl-2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-8:          [PASS][3] -> [DMESG-FAIL][4] ([i915#9500])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-dg2-8/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/bat-dg2-8/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [DMESG-WARN][5] ([i915#11349] / [i915#11378]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/bat-arls-2/igt@i915_selftest@live@hangcheck.html
    - bat-arls-1:         [DMESG-WARN][7] ([i915#11349] / [i915#11378]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15195 -> Patchwork_136036v3

  CI-20190529: 20190529
  CI_DRM_15195: 54219da2fda05a4160376dc9aaf0c90f16a3eb90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7960: 7960
  Patchwork_136036v3: 54219da2fda05a4160376dc9aaf0c90f16a3eb90 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/index.html

--===============3731015462775981586==
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
<tr><td><b>Series:</b></td><td>drm/i915/hwmon: expose fan speed (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136036/">https://patchwork.freedesktop.org/series/136036/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15195 -&gt; Patchwork_136036v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/index.html</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Missing    (6): fi-kbl-7567u bat-kbl-2 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g bat-arlh-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136036v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-dg2-8/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/bat-dg2-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v3/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15195 -&gt; Patchwork_136036v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15195: 54219da2fda05a4160376dc9aaf0c90f16a3eb90 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7960: 7960<br />
  Patchwork_136036v3: 54219da2fda05a4160376dc9aaf0c90f16a3eb90 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3731015462775981586==--
