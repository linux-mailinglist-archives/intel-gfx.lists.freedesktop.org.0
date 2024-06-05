Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2180B8FD111
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 16:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5229A10E53E;
	Wed,  5 Jun 2024 14:47:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E4110E53E;
 Wed,  5 Jun 2024 14:47:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8421675876440512068=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Reduce_DDI_cloc?=
 =?utf-8?q?k_gating_printk_level_from_NOTICE_to_DEBUG?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 05 Jun 2024 14:47:03 -0000
Message-ID: <171759882320.1068.3440933338881920621@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240605113336.11194-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240605113336.11194-1-ville.syrjala@linux.intel.com>
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

--===============8421675876440512068==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reduce DDI clock gating printk level from NOTICE to DEBUG
URL   : https://patchwork.freedesktop.org/series/134499/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14881 -> Patchwork_134499v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134499v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): bat-mtlp-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_134499v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [FAIL][1] ([i915#10378]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14881/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134499v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378


Build changes
-------------

  * Linux: CI_DRM_14881 -> Patchwork_134499v1

  CI-20190529: 20190529
  CI_DRM_14881: a494545483635d3d93d19e8f483f61e7d4198383 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7878: eecd5683bd98cee3fc6bd3f26a1f053c897f6bdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134499v1: a494545483635d3d93d19e8f483f61e7d4198383 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134499v1/index.html

--===============8421675876440512068==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reduce DDI clock gating printk level from NOTICE to DEBUG</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134499/">https://patchwork.freedesktop.org/series/134499/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134499v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134499v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14881 -&gt; Patchwork_134499v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134499v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): bat-mtlp-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134499v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14881/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134499v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14881 -&gt; Patchwork_134499v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14881: a494545483635d3d93d19e8f483f61e7d4198383 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7878: eecd5683bd98cee3fc6bd3f26a1f053c897f6bdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134499v1: a494545483635d3d93d19e8f483f61e7d4198383 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8421675876440512068==--
