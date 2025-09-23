Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 168C9B95550
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 11:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DEA10E5D2;
	Tue, 23 Sep 2025 09:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9422710E5D2;
 Tue, 23 Sep 2025 09:52:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6243754541531227118=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_series_starting_with_=5Bv?=
 =?utf-8?q?7=2C1/3=5D_drm/buddy=3A_Optimize_free_block_management_with_RB_tr?=
 =?utf-8?q?ee?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Sep 2025 09:52:52 -0000
Message-ID: <175862117259.357031.648868026521468682@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250923090242.60649-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20250923090242.60649-1-Arunpravin.PaneerSelvam@amd.com>
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

--===============6243754541531227118==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v7,1/3] drm/buddy: Optimize free block management with RB tree
URL   : https://patchwork.freedesktop.org/series/154888/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17254 -> Patchwork_154888v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-kbl-guc 

Known issues
------------

  Here are the changes found in Patchwork_154888v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_force_connector_basic@force-edid:
    - bat-kbl-2:          NOTRUN -> [ABORT][1] ([i915#15020])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/bat-kbl-2/igt@kms_force_connector_basic@force-edid.html

  
#### Possible fixes ####

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-kbl-2:          [ABORT][2] ([i915#15020]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html

  
  [i915#15020]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020


Build changes
-------------

  * Linux: CI_DRM_17254 -> Patchwork_154888v1

  CI-20190529: 20190529
  CI_DRM_17254: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8547: 8547
  Patchwork_154888v1: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/index.html

--===============6243754541531227118==
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
<tr><td><b>Series:</b></td><td>series starting with [v7,1/3] drm/buddy: Optimize free block management with RB tree</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/154888/">https://patchwork.freedesktop.org/series/154888/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17254 -&gt; Patchwork_154888v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-kbl-guc </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_154888v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_force_connector_basic@force-edid:<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/bat-kbl-2/igt@kms_force_connector_basic@force-edid.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020">i915#15020</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_force_connector_basic@force-connector-state:<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17254/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020">i915#15020</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154888v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17254 -&gt; Patchwork_154888v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17254: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8547: 8547<br />
  Patchwork_154888v1: 3ff214d6c6a86025aa3feadcb5bba4abfc2dd8f1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6243754541531227118==--
