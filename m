Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BC1B91BC9
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 16:32:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB16C10E1CA;
	Mon, 22 Sep 2025 14:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B8E10E1CA;
 Mon, 22 Sep 2025 14:32:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6774509170125793320=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Work_aroun?=
 =?utf-8?q?d_a_DSC_pixel_throughput_issue_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Sep 2025 14:32:48 -0000
Message-ID: <175855156879.354596.13727090250998777653@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250918211223.209674-1-imre.deak@intel.com>
In-Reply-To: <20250918211223.209674-1-imre.deak@intel.com>
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

--===============6774509170125793320==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Work around a DSC pixel throughput issue (rev3)
URL   : https://patchwork.freedesktop.org/series/154736/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17253 -> Patchwork_154736v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-kbl-guc 

Known issues
------------

  Here are the changes found in Patchwork_154736v3 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [ABORT][1] -> [ABORT][2] ([i915#15020])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/fi-ilk-650/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [ABORT][3] -> [ABORT][4] ([i915#15020])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-cfl-8700k/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/fi-cfl-8700k/igt@i915_module_load@load.html

  
  [i915#15020]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020


Build changes
-------------

  * Linux: CI_DRM_17253 -> Patchwork_154736v3

  CI-20190529: 20190529
  CI_DRM_17253: c4d19320a0e2f7d8dec97d4a59309349a3a63ec0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8546: 8546
  Patchwork_154736v3: c4d19320a0e2f7d8dec97d4a59309349a3a63ec0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/index.html

--===============6774509170125793320==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Work around a DSC pixel throughput issue (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/154736/">https://patchwork.freedesktop.org/series/154736/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17253 -&gt; Patchwork_154736v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-kbl-guc </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_154736v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020">i915#15020</a>)</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17253/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154736v3/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020">i915#15020</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17253 -&gt; Patchwork_154736v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17253: c4d19320a0e2f7d8dec97d4a59309349a3a63ec0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8546: 8546<br />
  Patchwork_154736v3: c4d19320a0e2f7d8dec97d4a59309349a3a63ec0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6774509170125793320==--
