Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0687B923E7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 18:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6839610E2E2;
	Mon, 22 Sep 2025 16:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E5D10E2EB;
 Mon, 22 Sep 2025 16:35:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5293265908158640442=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/xe3=3A_Restrict_?=
 =?utf-8?q?PTL_intel=5Fencoder=5Fis=5Fc10phy=28=29_to_only_PHY_A_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Sep 2025 16:35:21 -0000
Message-ID: <175855892142.354824.916385372356699875@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
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

--===============5293265908158640442==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only PHY A (rev4)
URL   : https://patchwork.freedesktop.org/series/154220/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17253 -> Patchwork_154220v4
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_154220v4 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_154220v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): bat-adls-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_154220v4:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@load:
    - fi-kbl-7567u:       [ABORT][1] ([i915#15020]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-kbl-7567u/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/fi-kbl-7567u/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_154220v4 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [ABORT][3] -> [ABORT][4] ([i915#15020])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-ilk-650/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/fi-ilk-650/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [ABORT][5] -> [ABORT][6] ([i915#15020])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-cfl-8700k/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/fi-cfl-8700k/igt@i915_module_load@load.html

  
  [i915#15020]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020


Build changes
-------------

  * Linux: CI_DRM_17253 -> Patchwork_154220v4

  CI-20190529: 20190529
  CI_DRM_17253: c4d19320a0e2f7d8dec97d4a59309349a3a63ec0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8546: 8546
  Patchwork_154220v4: c4d19320a0e2f7d8dec97d4a59309349a3a63ec0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/index.html

--===============5293265908158640442==
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
<tr><td><b>Series:</b></td><td>drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only PHY A (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/154220/">https://patchwork.freedesktop.org/series/154220/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17253 -&gt; Patchwork_154220v4</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_154220v4 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_154220v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): bat-adls-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_154220v4:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020">i915#15020</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_154220v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020">i915#15020</a>)</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154220v4/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020">i915#15020</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17253 -&gt; Patchwork_154220v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17253: c4d19320a0e2f7d8dec97d4a59309349a3a63ec0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8546: 8546<br />
  Patchwork_154220v4: c4d19320a0e2f7d8dec97d4a59309349a3a63ec0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5293265908158640442==--
