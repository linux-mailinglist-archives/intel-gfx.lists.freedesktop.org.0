Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89809393E4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 20:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5B510E2A3;
	Mon, 22 Jul 2024 18:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9424E10E2A3;
 Mon, 22 Jul 2024 18:55:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3265644309301636896=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=5Fmst=3A_Enable?=
 =?utf-8?q?_LT_fallback_for_UHBR=3C-=3Enon-UHBR_rates?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2024 18:55:15 -0000
Message-ID: <172167451559.342828.7954116018044931505@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240722165503.2084999-1-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
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

--===============3265644309301636896==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp_mst: Enable LT fallback for UHBR<->non-UHBR rates
URL   : https://patchwork.freedesktop.org/series/136347/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15112 -> Patchwork_136347v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v1/index.html

Participating hosts (37 -> 33)
------------------------------

  Missing    (4): bat-dg1-7 fi-kbl-8809g fi-snb-2520m bat-mtlp-6 

Known issues
------------

  Here are the changes found in Patchwork_136347v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-arlh-2:         [PASS][1] -> [DMESG-WARN][2] ([i915#11349] / [i915#11378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15112/bat-arlh-2/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v1/bat-arlh-2/igt@i915_selftest@live@gt_mocs.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378


Build changes
-------------

  * Linux: CI_DRM_15112 -> Patchwork_136347v1

  CI-20190529: 20190529
  CI_DRM_15112: ea064de9c72e649eca5659c6ef24019faa7019b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7933: 7933
  Patchwork_136347v1: ea064de9c72e649eca5659c6ef24019faa7019b0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v1/index.html

--===============3265644309301636896==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp_mst: Enable LT fallback for UHBR&lt;-&gt;non-UHBR rates</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136347/">https://patchwork.freedesktop.org/series/136347/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15112 -&gt; Patchwork_136347v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v1/index.html</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): bat-dg1-7 fi-kbl-8809g fi-snb-2520m bat-mtlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136347v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15112/bat-arlh-2/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136347v1/bat-arlh-2/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15112 -&gt; Patchwork_136347v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15112: ea064de9c72e649eca5659c6ef24019faa7019b0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7933: 7933<br />
  Patchwork_136347v1: ea064de9c72e649eca5659c6ef24019faa7019b0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3265644309301636896==--
