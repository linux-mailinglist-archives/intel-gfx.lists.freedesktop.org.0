Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B894A81504A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 20:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D76210EAAE;
	Fri, 15 Dec 2023 19:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C33D10EA8B;
 Fri, 15 Dec 2023 19:40:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CAC0AADDD;
 Fri, 15 Dec 2023 19:40:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0216574807281724239=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/mm=3A_Allow_CONFIG=5FDR?=
 =?utf-8?q?M=5FMM=5FDEBUG_with_DRM=3Dm?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 15 Dec 2023 19:40:45 -0000
Message-ID: <170266924517.27832.1776524525647671805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231215111129.9559-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231215111129.9559-1-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0216574807281724239==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/mm: Allow CONFIG_DRM_MM_DEBUG with DRM=m
URL   : https://patchwork.freedesktop.org/series/127871/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14033 -> Patchwork_127871v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127871v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127871v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v1/index.html

Participating hosts (38 -> 16)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_127871v1 prevented too many machines from booting.

  Missing    (22): fi-rkl-11600 fi-apl-guc fi-snb-2520m bat-rpls-3 fi-pnv-d510 fi-bsw-n3050 bat-adlm-1 bat-dg2-9 fi-ilk-650 bat-adln-1 fi-ivb-3770 bat-rplp-1 bat-dg2-11 fi-bsw-nick bat-dg1-7 bat-kbl-2 bat-adlp-9 bat-jsl-1 fi-tgl-1115g4 fi-cfl-guc fi-kbl-x1275 bat-dg2-14 


Changes
-------

  No changes found


Build changes
-------------

  * Linux: CI_DRM_14033 -> Patchwork_127871v1

  CI-20190529: 20190529
  CI_DRM_14033: e6580f88bbde08a04d0cb7bb591c38e7b9f0076d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127871v1: e6580f88bbde08a04d0cb7bb591c38e7b9f0076d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cfa4968c1902 drm/mm: Allow CONFIG_DRM_MM_DEBUG with DRM=m

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v1/index.html

--===============0216574807281724239==
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
<tr><td><b>Series:</b></td><td>drm/mm: Allow CONFIG_DRM_MM_DEBUG with DRM=m</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127871/">https://patchwork.freedesktop.org/series/127871/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14033 -&gt; Patchwork_127871v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127871v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127871v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v1/index.html</p>
<h2>Participating hosts (38 -&gt; 16)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_127871v1 prevented too many machines from booting.</p>
<p>Missing    (22): fi-rkl-11600 fi-apl-guc fi-snb-2520m bat-rpls-3 fi-pnv-d510 fi-bsw-n3050 bat-adlm-1 bat-dg2-9 fi-ilk-650 bat-adln-1 fi-ivb-3770 bat-rplp-1 bat-dg2-11 fi-bsw-nick bat-dg1-7 bat-kbl-2 bat-adlp-9 bat-jsl-1 fi-tgl-1115g4 fi-cfl-guc fi-kbl-x1275 bat-dg2-14 </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14033 -&gt; Patchwork_127871v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14033: e6580f88bbde08a04d0cb7bb591c38e7b9f0076d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127871v1: e6580f88bbde08a04d0cb7bb591c38e7b9f0076d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cfa4968c1902 drm/mm: Allow CONFIG_DRM_MM_DEBUG with DRM=m</p>

</body>
</html>

--===============0216574807281724239==--
