Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 351E69603E8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 10:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01D810E1C8;
	Tue, 27 Aug 2024 08:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C98BA10E1C8;
 Tue, 27 Aug 2024 08:04:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6570957031690972429=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_BMG_sup?=
 =?utf-8?q?ports_UHBR13=2E5?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2024 08:04:34 -0000
Message-ID: <172474587481.788510.10647492221272261101@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240827064047.132278-1-arun.r.murthy@intel.com>
In-Reply-To: <20240827064047.132278-1-arun.r.murthy@intel.com>
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

--===============6570957031690972429==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: BMG supports UHBR13.5
URL   : https://patchwork.freedesktop.org/series/137828/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15298 -> Patchwork_137828v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_137828v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_137828v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/index.html

Participating hosts (39 -> 34)
------------------------------

  Missing    (5): bat-arlh-3 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g bat-dg2-11 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_137828v1:

### IGT changes ###

#### Possible regressions ####

  * igt@fbdev@info:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15298/bat-arls-1/igt@fbdev@info.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/bat-arls-1/igt@fbdev@info.html

  
Known issues
------------

  Here are the changes found in Patchwork_137828v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-1:         [PASS][3] -> [DMESG-WARN][4] ([i915#11349])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15298/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-2:         [PASS][5] -> [ABORT][6] ([i915#12061])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15298/bat-arls-2/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/bat-arls-2/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - bat-arls-1:         [DMESG-WARN][7] ([i915#9157]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15298/bat-arls-1/igt@fbdev@nullptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/bat-arls-1/igt@fbdev@nullptr.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#9157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157


Build changes
-------------

  * Linux: CI_DRM_15298 -> Patchwork_137828v1

  CI-20190529: 20190529
  CI_DRM_15298: 0076b250ac2e713d4d91e8beb569a75da5e1f3ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7993: 3b6b2d238e864ff1af9e33159d3bbf4b7f01d86d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137828v1: 0076b250ac2e713d4d91e8beb569a75da5e1f3ca @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/index.html

--===============6570957031690972429==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: BMG supports UHBR13.5</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137828/">https://patchwork.freedesktop.org/series/137828/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15298 -&gt; Patchwork_137828v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_137828v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_137828v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/index.html</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): bat-arlh-3 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g bat-dg2-11 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_137828v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@fbdev@info:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15298/bat-arls-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/bat-arls-1/igt@fbdev@info.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137828v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15298/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15298/bat-arls-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/bat-arls-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@fbdev@nullptr:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15298/bat-arls-1/igt@fbdev@nullptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157">i915#9157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137828v1/bat-arls-1/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15298 -&gt; Patchwork_137828v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15298: 0076b250ac2e713d4d91e8beb569a75da5e1f3ca @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7993: 3b6b2d238e864ff1af9e33159d3bbf4b7f01d86d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137828v1: 0076b250ac2e713d4d91e8beb569a75da5e1f3ca @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6570957031690972429==--
