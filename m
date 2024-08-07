Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B48794A7B0
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 14:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83DD710E4E4;
	Wed,  7 Aug 2024 12:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C15010E4E4;
 Wed,  7 Aug 2024 12:28:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3812797244023408789=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gem=3A_Improve_pfn?=
 =?utf-8?q?_calculation_readability_in_vm=5Ffault=5Fgtt=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Aug 2024 12:28:47 -0000
Message-ID: <172303372750.546499.4128682556444320511@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240807104553.481763-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240807104553.481763-1-andi.shyti@linux.intel.com>
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

--===============3812797244023408789==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Improve pfn calculation readability in vm_fault_gtt()
URL   : https://patchwork.freedesktop.org/series/136985/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15195 -> Patchwork_136985v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136985v1/index.html

Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-kbl-7567u bat-kbl-2 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_136985v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-1:         [DMESG-WARN][1] ([i915#11349] / [i915#11378]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136985v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378


Build changes
-------------

  * Linux: CI_DRM_15195 -> Patchwork_136985v1

  CI-20190529: 20190529
  CI_DRM_15195: 54219da2fda05a4160376dc9aaf0c90f16a3eb90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7960: 7960
  Patchwork_136985v1: 54219da2fda05a4160376dc9aaf0c90f16a3eb90 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136985v1/index.html

--===============3812797244023408789==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Improve pfn calculation readability in vm_fault_gtt()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136985/">https://patchwork.freedesktop.org/series/136985/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136985v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136985v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15195 -&gt; Patchwork_136985v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136985v1/index.html</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-kbl-7567u bat-kbl-2 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136985v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15195/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136985v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15195 -&gt; Patchwork_136985v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15195: 54219da2fda05a4160376dc9aaf0c90f16a3eb90 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7960: 7960<br />
  Patchwork_136985v1: 54219da2fda05a4160376dc9aaf0c90f16a3eb90 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3812797244023408789==--
