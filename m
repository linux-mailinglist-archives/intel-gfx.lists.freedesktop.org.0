Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D6B95721D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 19:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D9E10E32F;
	Mon, 19 Aug 2024 17:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBAE10E32D;
 Mon, 19 Aug 2024 17:27:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4181932841891493550=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_video/aperture=3A_match_the?=
 =?utf-8?q?_pci_device_when_calling_sysfb=5Fdisable=28=29_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Deucher" <alexander.deucher@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2024 17:27:35 -0000
Message-ID: <172408845577.695508.16738045369433636010@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240819165341.799848-1-alexander.deucher@amd.com>
In-Reply-To: <20240819165341.799848-1-alexander.deucher@amd.com>
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

--===============4181932841891493550==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: video/aperture: match the pci device when calling sysfb_disable() (rev2)
URL   : https://patchwork.freedesktop.org/series/137088/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15261 -> Patchwork_137088v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_137088v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_137088v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137088v2/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-kbl-8809g fi-snb-2520m fi-elk-e7500 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_137088v2:

### IGT changes ###

#### Possible regressions ####

  * igt@fbdev@eof:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15261/bat-arls-1/igt@fbdev@eof.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137088v2/bat-arls-1/igt@fbdev@eof.html

  


Build changes
-------------

  * Linux: CI_DRM_15261 -> Patchwork_137088v2

  CI-20190529: 20190529
  CI_DRM_15261: 19d5b3fcc4a8dcf26076e522c794164f4d3e40c0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7975: 7975
  Patchwork_137088v2: 19d5b3fcc4a8dcf26076e522c794164f4d3e40c0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137088v2/index.html

--===============4181932841891493550==
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
<tr><td><b>Series:</b></td><td>video/aperture: match the pci device when calling sysfb_disable() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137088/">https://patchwork.freedesktop.org/series/137088/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137088v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137088v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15261 -&gt; Patchwork_137088v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_137088v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_137088v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137088v2/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-kbl-8809g fi-snb-2520m fi-elk-e7500 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_137088v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@fbdev@eof:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15261/bat-arls-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137088v2/bat-arls-1/igt@fbdev@eof.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15261 -&gt; Patchwork_137088v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15261: 19d5b3fcc4a8dcf26076e522c794164f4d3e40c0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7975: 7975<br />
  Patchwork_137088v2: 19d5b3fcc4a8dcf26076e522c794164f4d3e40c0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4181932841891493550==--
