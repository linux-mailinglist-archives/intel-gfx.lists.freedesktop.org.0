Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 473036C294B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 05:50:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2BA10E03F;
	Tue, 21 Mar 2023 04:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C970810E03F;
 Tue, 21 Mar 2023 04:50:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA533AADE0;
 Tue, 21 Mar 2023 04:50:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5522866527907075881=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 21 Mar 2023 04:50:44 -0000
Message-ID: <167937424472.18679.1812519501583636929@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230310094544.3865-1-nirmoy.das@intel.com>
In-Reply-To: <20230310094544.3865-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Disable_stolen_memory_backed_FB_for_A0_=28rev4=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5522866527907075881==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Disable stolen memory backed FB for A0 (rev4)
URL   : https://patchwork.freedesktop.org/series/114925/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12884 -> Patchwork_114925v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/index.html

Participating hosts (35 -> 34)
------------------------------

  Missing    (1): bat-dg1-6 

Known issues
------------

  Here are the changes found in Patchwork_114925v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][1] -> [DMESG-FAIL][2] ([i915#7699])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/bat-adlp-9/igt@i915_selftest@live@migrate.html
    - bat-atsm-1:         [PASS][3] -> [DMESG-FAIL][4] ([i915#7699])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-atsm-1/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/bat-atsm-1/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@slpc:
    - bat-rplp-1:         [PASS][5] -> [DMESG-FAIL][6] ([i915#6367] / [i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-rplp-1/igt@i915_selftest@live@slpc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/bat-rplp-1/igt@i915_selftest@live@slpc.html

  
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913


Build changes
-------------

  * Linux: CI_DRM_12884 -> Patchwork_114925v4

  CI-20190529: 20190529
  CI_DRM_12884: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7208: f327c5d77b6ea6adff1ef6d08f21f232dfe093e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114925v4: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

efaafbc8ba15 drm/i915/mtl: Disable stolen memory backed FB for A0

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/index.html

--===============5522866527907075881==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Disable stolen memory backed FB for A0 (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114925/">https://patchwork.freedesktop.org/series/114925/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12884 -&gt; Patchwork_114925v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): bat-dg1-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114925v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</p>
</li>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-atsm-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/bat-atsm-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-rplp-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114925v4/bat-rplp-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12884 -&gt; Patchwork_114925v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12884: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7208: f327c5d77b6ea6adff1ef6d08f21f232dfe093e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114925v4: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>efaafbc8ba15 drm/i915/mtl: Disable stolen memory backed FB for A0</p>

</body>
</html>

--===============5522866527907075881==--
