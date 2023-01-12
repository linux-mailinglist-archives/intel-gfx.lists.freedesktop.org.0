Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6833F6668EF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 03:33:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B516D10E082;
	Thu, 12 Jan 2023 02:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA58B10E082;
 Thu, 12 Jan 2023 02:33:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3837A0169;
 Thu, 12 Jan 2023 02:33:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6784348152054083271=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 12 Jan 2023 02:33:47 -0000
Message-ID: <167349082769.2074.12294266960105397382@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230112015447.2430224-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230112015447.2430224-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ2xl?=
 =?utf-8?q?an_up_some_GuC_related_failure_paths?=
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

--===============6784348152054083271==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up some GuC related failure paths
URL   : https://patchwork.freedesktop.org/series/112708/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12574 -> Patchwork_112708v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/index.html

Participating hosts (35 -> 34)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_112708v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][1] -> [FAIL][2] ([i915#7229])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-5:          [SKIP][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/bat-dg1-5/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html

  
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12574 -> Patchwork_112708v1

  CI-20190529: 20190529
  CI_DRM_12574: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7116: 79eb8984acd309108be713a8831e60667db67e21 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112708v1: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6aa0e5127b05 drm/i915/guc: Fix missing return code checks in submission init
882f4daee3b3 drm/i915/guc: Improve clean up of busyness stats worker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/index.html

--===============6784348152054083271==
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
<tr><td><b>Series:</b></td><td>Clean up some GuC related failure paths</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112708/">https://patchwork.freedesktop.org/series/112708/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12574 -&gt; Patchwork_112708v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112708v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112708v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12574 -&gt; Patchwork_112708v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12574: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7116: 79eb8984acd309108be713a8831e60667db67e21 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112708v1: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6aa0e5127b05 drm/i915/guc: Fix missing return code checks in submission init<br />
882f4daee3b3 drm/i915/guc: Improve clean up of busyness stats worker</p>

</body>
</html>

--===============6784348152054083271==--
