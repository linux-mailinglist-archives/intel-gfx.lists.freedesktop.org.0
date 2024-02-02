Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1660846B4E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:54:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4734010EA38;
	Fri,  2 Feb 2024 08:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38EC10EA38;
 Fri,  2 Feb 2024 08:54:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1680662273578952906=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_series_starting_with_=5B1/3?=
 =?utf-8?q?=5D_drm/i915/bios=3A_bump_expected_child_device_size_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 08:54:37 -0000
Message-ID: <170686407793.936066.18425445041046520936@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240131184841.872487-1-jani.nikula@intel.com>
In-Reply-To: <20240131184841.872487-1-jani.nikula@intel.com>
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

--===============1680662273578952906==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/bios: bump expected child device size (rev2)
URL   : https://patchwork.freedesktop.org/series/129378/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14211 -> Patchwork_129378v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129378v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129378v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v2/index.html

Participating hosts (38 -> 11)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_129378v2 prevented too many machines from booting.

  Missing    (27): fi-rkl-11600 fi-apl-guc bat-adlp-6 fi-snb-2520m fi-pnv-d510 bat-adls-6 fi-blb-e6850 bat-arls-1 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 fi-ilk-650 bat-adln-1 bat-atsm-1 fi-ivb-3770 bat-jsl-3 bat-rplp-1 fi-bsw-nick fi-kbl-7567u bat-adlp-9 fi-skl-guc fi-glk-j4005 fi-tgl-1115g4 fi-kbl-guc fi-cfl-8109u bat-dg2-13 


Changes
-------

  No changes found


Build changes
-------------

  * Linux: CI_DRM_14211 -> Patchwork_129378v2

  CI-20190529: 20190529
  CI_DRM_14211: a7ad037447de4ca22722972270493b23be436187 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7701: 7701
  Patchwork_129378v2: a7ad037447de4ca22722972270493b23be436187 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

53c3e98ef776 drm/i915/bios: abstract child device expected size
ebccd8904f99 drm/i915/bios: abstract child device size check
0fa2f1554293 drm/i915/bios: bump expected child device size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v2/index.html

--===============1680662273578952906==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/bios: bump expected child device size (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129378/">https://patchwork.freedesktop.org/series/129378/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14211 -&gt; Patchwork_129378v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129378v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129378v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129378v2/index.html</p>
<h2>Participating hosts (38 -&gt; 11)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_129378v2 prevented too many machines from booting.</p>
<p>Missing    (27): fi-rkl-11600 fi-apl-guc bat-adlp-6 fi-snb-2520m fi-pnv-d510 bat-adls-6 fi-blb-e6850 bat-arls-1 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 fi-ilk-650 bat-adln-1 bat-atsm-1 fi-ivb-3770 bat-jsl-3 bat-rplp-1 fi-bsw-nick fi-kbl-7567u bat-adlp-9 fi-skl-guc fi-glk-j4005 fi-tgl-1115g4 fi-kbl-guc fi-cfl-8109u bat-dg2-13 </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14211 -&gt; Patchwork_129378v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14211: a7ad037447de4ca22722972270493b23be436187 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7701: 7701<br />
  Patchwork_129378v2: a7ad037447de4ca22722972270493b23be436187 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>53c3e98ef776 drm/i915/bios: abstract child device expected size<br />
ebccd8904f99 drm/i915/bios: abstract child device size check<br />
0fa2f1554293 drm/i915/bios: bump expected child device size</p>

</body>
</html>

--===============1680662273578952906==--
