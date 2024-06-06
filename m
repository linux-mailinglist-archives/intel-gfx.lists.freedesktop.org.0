Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF7D8FDC19
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 03:20:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CCE10E2DA;
	Thu,  6 Jun 2024 01:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C33010E2DA;
 Thu,  6 Jun 2024 01:20:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1152760071824422860=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gt/uc=3A_Evaluate_?=
 =?utf-8?q?GuC_priority_within_locks?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Jun 2024 01:20:07 -0000
Message-ID: <171763680719.2161.16231302435738450177@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240606001702.59005-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240606001702.59005-1-andi.shyti@linux.intel.com>
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

--===============1152760071824422860==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt/uc: Evaluate GuC priority within locks
URL   : https://patchwork.freedesktop.org/series/134525/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14881 -> Patchwork_134525v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134525v1/index.html

Participating hosts (38 -> 32)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (7): bat-dg1-7 bat-kbl-2 bat-mtlp-9 fi-snb-2520m fi-glk-j4005 fi-cfl-8109u bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_134525v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] +19 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134525v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  


Build changes
-------------

  * Linux: CI_DRM_14881 -> Patchwork_134525v1

  CI-20190529: 20190529
  CI_DRM_14881: a494545483635d3d93d19e8f483f61e7d4198383 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7878: eecd5683bd98cee3fc6bd3f26a1f053c897f6bdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134525v1: a494545483635d3d93d19e8f483f61e7d4198383 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134525v1/index.html

--===============1152760071824422860==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt/uc: Evaluate GuC priority within locks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134525/">https://patchwork.freedesktop.org/series/134525/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134525v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134525v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14881 -&gt; Patchwork_134525v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134525v1/index.html</p>
<h2>Participating hosts (38 -&gt; 32)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (7): bat-dg1-7 bat-kbl-2 bat-mtlp-9 fi-snb-2520m fi-glk-j4005 fi-cfl-8109u bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134525v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@random-engines:<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134525v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14881 -&gt; Patchwork_134525v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14881: a494545483635d3d93d19e8f483f61e7d4198383 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7878: eecd5683bd98cee3fc6bd3f26a1f053c897f6bdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134525v1: a494545483635d3d93d19e8f483f61e7d4198383 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1152760071824422860==--
