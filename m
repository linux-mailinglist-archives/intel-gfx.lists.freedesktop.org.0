Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8397C33B86
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 02:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAC410E10E;
	Wed,  5 Nov 2025 01:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77CD510E10E;
 Wed,  5 Nov 2025 01:59:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2605776725629502732=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Rename_MCF?=
 =?utf-8?q?G=5FMCR=5FSELECTOR_to_STEER=5FSEMAPHORE?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 05 Nov 2025 01:59:04 -0000
Message-ID: <176230794448.18967.15545324423819234925@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251104111840.2110000-1-nitin.r.gote@intel.com>
In-Reply-To: <20251104111840.2110000-1-nitin.r.gote@intel.com>
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

--===============2605776725629502732==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Rename MCFG_MCR_SELECTOR to STEER_SEMAPHORE
URL   : https://patchwork.freedesktop.org/series/156997/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17481 -> Patchwork_156997v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_156997v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][1] -> [DMESG-WARN][2] ([i915#13494])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/bat-mtlp-9/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/bat-mtlp-9/igt@i915_module_load@load.html

  
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494


Build changes
-------------

  * Linux: CI_DRM_17481 -> Patchwork_156997v1

  CI-20190529: 20190529
  CI_DRM_17481: 3512eb46a8d42c3deb477856c25d519b19a7d165 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8606: 7f516488d66a52df3b3027d5c02c5be298424b78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_156997v1: 3512eb46a8d42c3deb477856c25d519b19a7d165 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/index.html

--===============2605776725629502732==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Rename MCFG_MCR_SELECTOR to STEER_SEMAPHORE</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/156997/">https://patchwork.freedesktop.org/series/156997/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17481 -&gt; Patchwork_156997v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_156997v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17481/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156997v1/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17481 -&gt; Patchwork_156997v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17481: 3512eb46a8d42c3deb477856c25d519b19a7d165 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8606: 7f516488d66a52df3b3027d5c02c5be298424b78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_156997v1: 3512eb46a8d42c3deb477856c25d519b19a7d165 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2605776725629502732==--
