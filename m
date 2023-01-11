Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52982666561
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 22:14:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A778B10E0CA;
	Wed, 11 Jan 2023 21:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCD2110E0D4;
 Wed, 11 Jan 2023 21:14:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA14AAADD2;
 Wed, 11 Jan 2023 21:14:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1187016183137293918=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 11 Jan 2023 21:14:25 -0000
Message-ID: <167347166575.20085.6346524983963887628@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230111200429.2139084-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230111200429.2139084-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_module_oriented_dmesg_output_=28rev4=29?=
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

--===============1187016183137293918==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add module oriented dmesg output (rev4)
URL   : https://patchwork.freedesktop.org/series/111050/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12574 -> Patchwork_111050v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111050v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111050v4, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/index.html

Participating hosts (35 -> 34)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111050v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-ilk-650:         [PASS][1] -> [DMESG-WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_111050v4 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-5:          [SKIP][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/bat-dg1-5/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/bat-dg1-5/igt@i915_pm_rpm@module-reload.html

  


Build changes
-------------

  * Linux: CI_DRM_12574 -> Patchwork_111050v4

  CI-20190529: 20190529
  CI_DRM_12574: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7116: 79eb8984acd309108be713a8831e60667db67e21 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111050v4: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

73b4e474fcee drm/i915/gt: Start adding module oriented dmesg output

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/index.html

--===============1187016183137293918==
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
<tr><td><b>Series:</b></td><td>Add module oriented dmesg output (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111050/">https://patchwork.freedesktop.org/series/111050/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12574 -&gt; Patchwork_111050v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111050v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_111050v4, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111050v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111050v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111050v4/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12574 -&gt; Patchwork_111050v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12574: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7116: 79eb8984acd309108be713a8831e60667db67e21 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111050v4: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>73b4e474fcee drm/i915/gt: Start adding module oriented dmesg output</p>

</body>
</html>

--===============1187016183137293918==--
