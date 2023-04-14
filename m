Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8175A6E2AC7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 21:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D8510E1E1;
	Fri, 14 Apr 2023 19:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EB4210E1E1;
 Fri, 14 Apr 2023 19:52:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49A9FAADEB;
 Fri, 14 Apr 2023 19:52:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2224781731271428586=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 14 Apr 2023 19:52:13 -0000
Message-ID: <168150193325.26684.4710624081490156524@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Make_intel=5F=7Bmp?=
 =?utf-8?q?llb=2C_c10pll=7D=5Fstate=5Fverify=28=29_safer_=28rev2=29?=
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

--===============2224781731271428586==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915: Make intel_{mpllb, c10pll}_state_verify() safer (rev2)
URL   : https://patchwork.freedesktop.org/series/116461/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13008 -> Patchwork_116461v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116461v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [PASS][1] -> [ABORT][2] ([i915#4983] / [i915#7913])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13008/bat-rpls-2/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/bat-rpls-2/igt@i915_selftest@live@requests.html
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#7911])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13008/bat-rpls-1/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/bat-rpls-1/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:
    - bat-dg2-8:          [FAIL][5] ([i915#7932]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13008/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html

  
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932


Build changes
-------------

  * Linux: CI_DRM_13008 -> Patchwork_116461v2

  CI-20190529: 20190529
  CI_DRM_13008: 7862c60adcb74785d0063f6d978adf8c38cda97c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7256: 066fa5410180730b85f61e4f3073da9a2055dc49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116461v2: 7862c60adcb74785d0063f6d978adf8c38cda97c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

55a6f5045e61 drm/i915: Make intel_get_crtc_new_encoder() less oopsy
5309e418d1de drm/i915: Make intel_{mpllb, c10pll}_state_verify() safer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/index.html

--===============2224781731271428586==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915: Make intel_{mpllb, c10pll}_state_verify() safer (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116461/">https://patchwork.freedesktop.org/series/116461/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13008 -&gt; Patchwork_116461v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116461v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13008/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13008/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13008/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116461v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13008 -&gt; Patchwork_116461v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13008: 7862c60adcb74785d0063f6d978adf8c38cda97c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7256: 066fa5410180730b85f61e4f3073da9a2055dc49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116461v2: 7862c60adcb74785d0063f6d978adf8c38cda97c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>55a6f5045e61 drm/i915: Make intel_get_crtc_new_encoder() less oopsy<br />
5309e418d1de drm/i915: Make intel_{mpllb, c10pll}_state_verify() safer</p>

</body>
</html>

--===============2224781731271428586==--
