Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA123B4BA5
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jun 2021 02:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AAD86E986;
	Sat, 26 Jun 2021 00:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF9716E12B;
 Sat, 26 Jun 2021 00:39:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2774AA0ED;
 Sat, 26 Jun 2021 00:39:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 26 Jun 2021 00:39:13 -0000
Message-ID: <162466795390.10571.13938379121784913033@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210625235600.765677-1-jose.souza@intel.com>
In-Reply-To: <20210625235600.765677-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display/adl=5Fp=3A_Impleme?=
 =?utf-8?q?nt_PSR_changes?=
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
Content-Type: multipart/mixed; boundary="===============1620487439=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1620487439==
Content-Type: multipart/alternative;
 boundary="===============1857805912903885573=="

--===============1857805912903885573==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/display/adl_p: Implement PSR changes
URL   : https://patchwork.freedesktop.org/series/91931/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10282 -> Patchwork_20472
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/index.html

Known issues
------------

  Here are the changes found in Patchwork_20472 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +16 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - {fi-tgl-1115g4}:    [DMESG-WARN][2] ([i915#2867]) -> [PASS][3] +14 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10282/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10282 -> Patchwork_20472

  CI-20190529: 20190529
  CI_DRM_10282: 67f5a18128770817e4218a9e496d2bf5047c51e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20472: 399cecf3f729c6dd519d878af2bc0dc40cab3bec @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

399cecf3f729 drm/i915/display: Disable FBC when PSR2 is enabled display 12 and newer
40703d3f9d23 drm/i915/display/adl_p: Implement PSR changes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/index.html

--===============1857805912903885573==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/display/adl_p: Implement PSR changes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91931/">https://patchwork.freedesktop.org/series/91931/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10282 -&gt; Patchwork_20472</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20472 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_basic@cs-gfx:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10282/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20472/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">PASS</a> +14 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10282 -&gt; Patchwork_20472</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10282: 67f5a18128770817e4218a9e496d2bf5047c51e8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20472: 399cecf3f729c6dd519d878af2bc0dc40cab3bec @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>399cecf3f729 drm/i915/display: Disable FBC when PSR2 is enabled display 12 and newer<br />
40703d3f9d23 drm/i915/display/adl_p: Implement PSR changes</p>

</body>
</html>

--===============1857805912903885573==--

--===============1620487439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1620487439==--
