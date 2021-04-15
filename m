Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 735193610A0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 18:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D97D6EA9B;
	Thu, 15 Apr 2021 16:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 635266EA9A;
 Thu, 15 Apr 2021 16:59:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52C62A7DFC;
 Thu, 15 Apr 2021 16:59:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 15 Apr 2021 16:59:32 -0000
Message-ID: <161850597230.1081.8330122861623566046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210415155958.391624-1-matthew.auld@intel.com>
In-Reply-To: <20210415155958.391624-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/4=5D_drm/i915/uapi=3A_hide_kernel_d?=
 =?utf-8?q?oc_warnings?=
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
Content-Type: multipart/mixed; boundary="===============1341710750=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1341710750==
Content-Type: multipart/alternative;
 boundary="===============1242110769834954343=="

--===============1242110769834954343==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/4] drm/i915/uapi: hide kernel doc warnings
URL   : https://patchwork.freedesktop.org/series/89121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9976 -> Patchwork_19942
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/index.html

Known issues
------------

  Here are the changes found in Patchwork_19942 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        NOTRUN -> [INCOMPLETE][1] ([i915#2782])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [DMESG-WARN][2] ([i915#1982] / [k.org#205379]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9976/fi-tgl-y/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/fi-tgl-y/igt@i915_module_load@reload.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (45 -> 42)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9976 -> Patchwork_19942

  CI-20190529: 20190529
  CI_DRM_9976: 73739c865de5c4c504adff6d9873ca5dea2dc704 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6067: 14317b92a672d9a20cd04fc3b0c80e2fb12d51d5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19942: 3f2501d0f7a0595fd713c55e204ff7820fab6de7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3f2501d0f7a0 drm/doc/rfc: i915 DG1 uAPI
02474e90a224 drm/i915/uapi: convert i915_query and friend to kernel doc
e5bfc110caaa drm/i915/uapi: convert i915_user_extension to kernel doc
b67e5ba57e8a drm/i915/uapi: hide kernel doc warnings

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/index.html

--===============1242110769834954343==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/4] drm/i915/uapi: hide kernel doc warnings</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89121/">https://patchwork.freedesktop.org/series/89121/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9976 -&gt; Patchwork_19942</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19942 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9976/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19942/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 42)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9976 -&gt; Patchwork_19942</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9976: 73739c865de5c4c504adff6d9873ca5dea2dc704 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6067: 14317b92a672d9a20cd04fc3b0c80e2fb12d51d5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19942: 3f2501d0f7a0595fd713c55e204ff7820fab6de7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3f2501d0f7a0 drm/doc/rfc: i915 DG1 uAPI<br />
02474e90a224 drm/i915/uapi: convert i915_query and friend to kernel doc<br />
e5bfc110caaa drm/i915/uapi: convert i915_user_extension to kernel doc<br />
b67e5ba57e8a drm/i915/uapi: hide kernel doc warnings</p>

</body>
</html>

--===============1242110769834954343==--

--===============1341710750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1341710750==--
