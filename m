Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8351493ECA6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 06:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5051710E2EB;
	Mon, 29 Jul 2024 04:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4AF10E060;
 Mon, 29 Jul 2024 04:43:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3544168071964842698=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/hdcp=3A_Fix_HDCP2?=
 =?utf-8?q?=5FSTREAM=5FSTATUS_macro?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2024 04:43:39 -0000
Message-ID: <172222821976.406302.3100748554086214688@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240729040829.3753012-1-suraj.kandpal@intel.com>
In-Reply-To: <20240729040829.3753012-1-suraj.kandpal@intel.com>
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

--===============3544168071964842698==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
URL   : https://patchwork.freedesktop.org/series/136597/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15142 -> Patchwork_136597v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/index.html

Participating hosts (41 -> 37)
------------------------------

  Additional (1): fi-elk-e7500 
  Missing    (5): bat-dg1-7 fi-snb-2520m fi-kbl-8809g bat-dg2-11 bat-arls-2 

Known issues
------------

  Here are the changes found in Patchwork_136597v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [PASS][1] -> [FAIL][2] ([i915#10378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15142/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-dg2-13:         [PASS][3] -> [SKIP][4] ([Intel XE#484]) +2 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15142/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-elk-e7500:       NOTRUN -> [SKIP][5] +24 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378


Build changes
-------------

  * Linux: CI_DRM_15142 -> Patchwork_136597v1

  CI-20190529: 20190529
  CI_DRM_15142: e948842a6cba538c9f5f5dc8535a88d82a3fc0fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7940: 2a73158fa69a2b8e20d5a0bdf773ee194bfe13c2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_136597v1: e948842a6cba538c9f5f5dc8535a88d82a3fc0fe @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/index.html

--===============3544168071964842698==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136597/">https://patchwork.freedesktop.org/series/136597/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15142 -&gt; Patchwork_136597v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/index.html</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Additional (1): fi-elk-e7500 <br />
  Missing    (5): bat-dg1-7 fi-snb-2520m fi-kbl-8809g bat-dg2-11 bat-arls-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136597v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15142/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15142/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136597v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15142 -&gt; Patchwork_136597v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15142: e948842a6cba538c9f5f5dc8535a88d82a3fc0fe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7940: 2a73158fa69a2b8e20d5a0bdf773ee194bfe13c2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_136597v1: e948842a6cba538c9f5f5dc8535a88d82a3fc0fe @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3544168071964842698==--
