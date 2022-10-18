Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938C5602C5B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 15:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A05E510E21B;
	Tue, 18 Oct 2022 13:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FDA110E22A;
 Tue, 18 Oct 2022 13:05:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76D85A0169;
 Tue, 18 Oct 2022 13:05:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4260983029322180900=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 18 Oct 2022 13:05:49 -0000
Message-ID: <166609834945.20424.11589109050537652803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221014154655.14075-1-nirmoy.das@intel.com>
In-Reply-To: <20221014154655.14075-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Print_return_value_on_error_=28rev3=29?=
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

--===============4260983029322180900==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Print return value on error (rev3)
URL   : https://patchwork.freedesktop.org/series/109722/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12255 -> Patchwork_109722v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109722v3/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_109722v3 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-bdw-5557u:       [INCOMPLETE][1] -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12255/fi-bdw-5557u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109722v3/fi-bdw-5557u/igt@i915_pm_rpm@module-reload.html

  


Build changes
-------------

  * Linux: CI_DRM_12255 -> Patchwork_109722v3

  CI-20190529: 20190529
  CI_DRM_12255: a236605e800c4f71899730d9343834b2df2a5908 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7018: 8312a2fe3f3287ba4ac4bc8d100de0734480f482 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109722v3: a236605e800c4f71899730d9343834b2df2a5908 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b103860c9240 drm/i915: Print return value on error

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109722v3/index.html

--===============4260983029322180900==
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
<tr><td><b>Series:</b></td><td>drm/i915: Print return value on error (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109722/">https://patchwork.freedesktop.org/series/109722/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109722v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109722v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12255 -&gt; Patchwork_109722v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109722v3/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109722v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12255/fi-bdw-5557u/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109722v3/fi-bdw-5557u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12255 -&gt; Patchwork_109722v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12255: a236605e800c4f71899730d9343834b2df2a5908 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7018: 8312a2fe3f3287ba4ac4bc8d100de0734480f482 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109722v3: a236605e800c4f71899730d9343834b2df2a5908 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b103860c9240 drm/i915: Print return value on error</p>

</body>
</html>

--===============4260983029322180900==--
