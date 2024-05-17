Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC4D8C84A3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 12:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A133B10E16E;
	Fri, 17 May 2024 10:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA86610E16E;
 Fri, 17 May 2024 10:16:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5194598598960667499=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Fix_CCS_id?=
 =?utf-8?q?=27s_calculation_for_CCS_mode_setting?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2024 10:16:44 -0000
Message-ID: <171594100482.2123004.3996524691953478868@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240517090616.242529-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240517090616.242529-1-andi.shyti@linux.intel.com>
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

--===============5194598598960667499==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Fix CCS id's calculation for CCS mode setting
URL   : https://patchwork.freedesktop.org/series/133732/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14779 -> Patchwork_133732v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/index.html

Participating hosts (44 -> 38)
------------------------------

  Missing    (6): bat-mtlp-9 fi-bsw-n3050 fi-snb-2520m bat-jsl-3 bat-dg2-11 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_133732v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [PASS][1] -> [DMESG-FAIL][2] ([i915#10262]) +20 other tests dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14779/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [FAIL][3] ([i915#10378]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14779/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378


Build changes
-------------

  * Linux: CI_DRM_14779 -> Patchwork_133732v1

  CI-20190529: 20190529
  CI_DRM_14779: da27b39e5013fa07eda5623ee6b1ddadfc1e1dc3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7860: 05b3f5540c6dcaacdf2169dc730c126df9ffd7e2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133732v1: da27b39e5013fa07eda5623ee6b1ddadfc1e1dc3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/index.html

--===============5194598598960667499==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Fix CCS id&#x27;s calculation for CCS mode setting</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133732/">https://patchwork.freedesktop.org/series/133732/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14779 -&gt; Patchwork_133732v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/index.html</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): bat-mtlp-9 fi-bsw-n3050 fi-snb-2520m bat-jsl-3 bat-dg2-11 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133732v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14779/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) +20 other tests dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14779/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v1/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14779 -&gt; Patchwork_133732v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14779: da27b39e5013fa07eda5623ee6b1ddadfc1e1dc3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7860: 05b3f5540c6dcaacdf2169dc730c126df9ffd7e2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133732v1: da27b39e5013fa07eda5623ee6b1ddadfc1e1dc3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5194598598960667499==--
