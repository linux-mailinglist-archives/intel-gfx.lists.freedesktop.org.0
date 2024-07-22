Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC09D9389F3
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 09:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FAC510E0A2;
	Mon, 22 Jul 2024 07:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370DA10E0A2;
 Mon, 22 Jul 2024 07:19:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0638549585485442281=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Fix_null_pointer_error_in_H?=
 =?utf-8?q?DCP_capability_check_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2024 07:19:33 -0000
Message-ID: <172163277321.326601.7568694955258627708@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240722064451.3610512-1-suraj.kandpal@intel.com>
In-Reply-To: <20240722064451.3610512-1-suraj.kandpal@intel.com>
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

--===============0638549585485442281==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix null pointer error in HDCP capability check (rev3)
URL   : https://patchwork.freedesktop.org/series/136318/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15106 -> Patchwork_136318v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (1): bat-dg2-11 

Known issues
------------

  Here are the changes found in Patchwork_136318v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][3] +30 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_15106 -> Patchwork_136318v3

  CI-20190529: 20190529
  CI_DRM_15106: db63d8686a4f33822041ab54c0c2c85b9cbefae4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7933: 7933
  Patchwork_136318v3: db63d8686a4f33822041ab54c0c2c85b9cbefae4 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/index.html

--===============0638549585485442281==
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
<tr><td><b>Series:</b></td><td>Fix null pointer error in HDCP capability check (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136318/">https://patchwork.freedesktop.org/series/136318/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15106 -&gt; Patchwork_136318v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (1): bat-dg2-11 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136318v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136318v3/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15106 -&gt; Patchwork_136318v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15106: db63d8686a4f33822041ab54c0c2c85b9cbefae4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7933: 7933<br />
  Patchwork_136318v3: db63d8686a4f33822041ab54c0c2c85b9cbefae4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0638549585485442281==--
