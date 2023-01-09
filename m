Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 297CA6624C0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 12:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856DE10E3ED;
	Mon,  9 Jan 2023 11:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6782710E3ED;
 Mon,  9 Jan 2023 11:54:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61AF5A00E6;
 Mon,  9 Jan 2023 11:54:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5831686294541907846=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Mon, 09 Jan 2023 11:54:49 -0000
Message-ID: <167326528939.18429.3266538005840011528@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/9=5D_drm/i915/display/core=3A_use_i?=
 =?utf-8?q?ntel=5Fde=5Frmw_if_possible_=28rev2=29?=
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

--===============5831686294541907846==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/9] drm/i915/display/core: use intel_de_rmw if possible (rev2)
URL   : https://patchwork.freedesktop.org/series/112438/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12556 -> Patchwork_112438v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v2/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (1): bat-rpls-2 
  Missing    (2): fi-snb-2520m bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_112438v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - {bat-rpls-1}:       [INCOMPLETE][1] ([i915#4983]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12556/bat-rpls-1/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v2/bat-rpls-1/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12556 -> Patchwork_112438v2

  CI-20190529: 20190529
  CI_DRM_12556: ac04152253dccfb02dcedfa0c57443122cf79314 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7110: db10a19b94d1d7ae5ba62eb48d52c47ccb27766f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112438v2: ac04152253dccfb02dcedfa0c57443122cf79314 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

06c2b65be747 drm/i915/display/misc: use intel_de_rmw if possible
b5c5ee4a0016 drm/i915/display/interfaces: use intel_de_rmw if possible
cca98fd0b977 drm/i915/display/panel: use intel_de_rmw if possible in panel related code
4b2224aafa01 drm/i915/display/hdmi: use intel_de_rmw if possible
7abd22b21efb drm/i915/display/pch: use intel_de_rmw if possible
4e8eed12ac14 drm/i915/display/phys: use intel_de_rmw if possible
a15c0ef6cce2 drm/i915/display/dpll: use intel_de_rmw if possible
05b4dff11f26 drm/i915/display/power: use intel_de_rmw if possible
ff0bd552fdd5 drm/i915/display/core: use intel_de_rmw if possible

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v2/index.html

--===============5831686294541907846==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/9] drm/i915/display/core: use intel_de_rmw if possible (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112438/">https://patchwork.freedesktop.org/series/112438/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12556 -&gt; Patchwork_112438v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v2/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): bat-rpls-2 <br />
  Missing    (2): fi-snb-2520m bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112438v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12556/bat-rpls-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v2/bat-rpls-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12556 -&gt; Patchwork_112438v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12556: ac04152253dccfb02dcedfa0c57443122cf79314 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7110: db10a19b94d1d7ae5ba62eb48d52c47ccb27766f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112438v2: ac04152253dccfb02dcedfa0c57443122cf79314 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>06c2b65be747 drm/i915/display/misc: use intel_de_rmw if possible<br />
b5c5ee4a0016 drm/i915/display/interfaces: use intel_de_rmw if possible<br />
cca98fd0b977 drm/i915/display/panel: use intel_de_rmw if possible in panel related code<br />
4b2224aafa01 drm/i915/display/hdmi: use intel_de_rmw if possible<br />
7abd22b21efb drm/i915/display/pch: use intel_de_rmw if possible<br />
4e8eed12ac14 drm/i915/display/phys: use intel_de_rmw if possible<br />
a15c0ef6cce2 drm/i915/display/dpll: use intel_de_rmw if possible<br />
05b4dff11f26 drm/i915/display/power: use intel_de_rmw if possible<br />
ff0bd552fdd5 drm/i915/display/core: use intel_de_rmw if possible</p>

</body>
</html>

--===============5831686294541907846==--
