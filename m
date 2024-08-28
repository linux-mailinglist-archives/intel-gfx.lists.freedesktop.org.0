Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B01E962A0A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 16:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE7710E049;
	Wed, 28 Aug 2024 14:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C26A89A5C;
 Wed, 28 Aug 2024 14:19:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1992161660910309262=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_nomodeset_and_i?=
 =?utf-8?q?915=2Emodeset_cleanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2024 14:19:18 -0000
Message-ID: <172485475830.827467.7681242890043675648@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1724843853.git.jani.nikula@intel.com>
In-Reply-To: <cover.1724843853.git.jani.nikula@intel.com>
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

--===============1992161660910309262==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: nomodeset and i915.modeset cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/137909/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15308 -> Patchwork_137909v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): bat-dg2-11 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_137909v2 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@fbdev@read:
    - bat-arls-1:         [DMESG-WARN][1] ([i915#9157]) -> [DMESG-FAIL][2] ([i915#9157])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15308/bat-arls-1/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/bat-arls-1/igt@fbdev@read.html

  
  [i915#9157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157


Build changes
-------------

  * Linux: CI_DRM_15308 -> Patchwork_137909v2

  CI-20190529: 20190529
  CI_DRM_15308: 3d18c558b87ad1c2d6d59ea1c56603a01e84ab88 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7993: 3b6b2d238e864ff1af9e33159d3bbf4b7f01d86d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137909v2: 3d18c558b87ad1c2d6d59ea1c56603a01e84ab88 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/index.html

--===============1992161660910309262==
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
<tr><td><b>Series:</b></td><td>drm/i915: nomodeset and i915.modeset cleanups (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137909/">https://patchwork.freedesktop.org/series/137909/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15308 -&gt; Patchwork_137909v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): bat-dg2-11 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137909v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15308/bat-arls-1/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157">i915#9157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/bat-arls-1/igt@fbdev@read.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157">i915#9157</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15308 -&gt; Patchwork_137909v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15308: 3d18c558b87ad1c2d6d59ea1c56603a01e84ab88 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7993: 3b6b2d238e864ff1af9e33159d3bbf4b7f01d86d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137909v2: 3d18c558b87ad1c2d6d59ea1c56603a01e84ab88 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1992161660910309262==--
