Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDDF9C3D9A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 12:42:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 034EB10E480;
	Mon, 11 Nov 2024 11:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007F210E480;
 Mon, 11 Nov 2024 11:42:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1588594941301476457=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_convert?=
 =?utf-8?q?_display_feature_helpers_to_struct_intel=5Fdisplay_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2024 11:42:05 -0000
Message-ID: <173132532599.2578636.6205100381979400919@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1731321183.git.jani.nikula@intel.com>
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
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

--===============1588594941301476457==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: convert display feature helpers to struct intel_display (rev5)
URL   : https://patchwork.freedesktop.org/series/140886/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15671 -> Patchwork_140886v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140886v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140886v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140886v5:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy:
    - bat-rpls-4:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15671/bat-rpls-4/igt@gem_exec_fence@basic-busy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/bat-rpls-4/igt@gem_exec_fence@basic-busy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-apl-1:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15671/bat-apl-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/bat-apl-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_140886v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [PASS][5] -> [DMESG-WARN][6] ([i915#12253])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15671/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253


Build changes
-------------

  * Linux: CI_DRM_15671 -> Patchwork_140886v5

  CI-20190529: 20190529
  CI_DRM_15671: 3f866f737f2b5b35056783cd2b8bce2c1b00ab47 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8102: a05b40911bfb79c9bdf6ff7e8ab1a68948afbbf6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140886v5: 3f866f737f2b5b35056783cd2b8bce2c1b00ab47 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/index.html

--===============1588594941301476457==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: convert display feature helpers to struct intel_display (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140886/">https://patchwork.freedesktop.org/series/140886/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15671 -&gt; Patchwork_140886v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140886v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140886v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140886v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15671/bat-rpls-4/igt@gem_exec_fence@basic-busy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/bat-rpls-4/igt@gem_exec_fence@basic-busy.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15671/bat-apl-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/bat-apl-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140886v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium_edid@hdmi-edid-read:<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15671/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140886v5/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253">i915#12253</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15671 -&gt; Patchwork_140886v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15671: 3f866f737f2b5b35056783cd2b8bce2c1b00ab47 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8102: a05b40911bfb79c9bdf6ff7e8ab1a68948afbbf6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140886v5: 3f866f737f2b5b35056783cd2b8bce2c1b00ab47 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1588594941301476457==--
