Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 662F56EA3CB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 08:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF56410ED89;
	Fri, 21 Apr 2023 06:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6BD5010ED89;
 Fri, 21 Apr 2023 06:23:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65670A0BCB;
 Fri, 21 Apr 2023 06:23:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1378139616765619357=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Fri, 21 Apr 2023 06:23:45 -0000
Message-ID: <168205822538.5823.198274909085678752@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230421053410.1836241-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230421053410.1836241-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Add_MTL_PXP_Support_=28rev8=29?=
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

--===============1378139616765619357==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Add MTL PXP Support (rev8)
URL   : https://patchwork.freedesktop.org/series/112647/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13037 -> Patchwork_112647v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/index.html

Participating hosts (38 -> 31)
------------------------------

  Missing    (7): fi-kbl-soraka bat-adlp-9 fi-cfl-8700k fi-ilk-650 fi-snb-2520m fi-glk-j4005 bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_112647v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][1] -> [ABORT][2] ([i915#7911])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13037/bat-rpls-1/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/bat-rpls-1/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][3] ([i915#5334]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13037/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@migrate:
    - bat-atsm-1:         [DMESG-FAIL][5] ([i915#7699]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13037/bat-atsm-1/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/bat-atsm-1/igt@i915_selftest@live@migrate.html

  
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911


Build changes
-------------

  * Linux: CI_DRM_13037 -> Patchwork_112647v8

  CI-20190529: 20190529
  CI_DRM_13037: c61620cfd82da4300b7992335bca9274568accba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7263: a6bd8f415c4ec41b5a014c7db47e46c81ffd0074 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112647v8: c61620cfd82da4300b7992335bca9274568accba @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

545d692f0b07 drm/i915/pxp: Enable PXP with MTL-GSC-CS
7455df7bf6cd drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component
f8ce3156fff1 drm/i915/uapi/pxp: Add a GET_PARAM for PXP
59ab9ca0ce60 drm/i915/pxp: Add ARB session creation and cleanup
35336829877c drm/i915/pxp: Add GSC-CS backend to send GSC fw messages
e7a54d25573e drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC
4f9980d8331b drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation
bd505e4f7221 drm/i915/pxp: Add GSC-CS back-end resource init and cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/index.html

--===============1378139616765619357==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Add MTL PXP Support (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112647/">https://patchwork.freedesktop.org/series/112647/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13037 -&gt; Patchwork_112647v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/index.html</p>
<h2>Participating hosts (38 -&gt; 31)</h2>
<p>Missing    (7): fi-kbl-soraka bat-adlp-9 fi-cfl-8700k fi-ilk-650 fi-snb-2520m fi-glk-j4005 bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112647v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13037/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13037/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13037/bat-atsm-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v8/bat-atsm-1/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13037 -&gt; Patchwork_112647v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13037: c61620cfd82da4300b7992335bca9274568accba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7263: a6bd8f415c4ec41b5a014c7db47e46c81ffd0074 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112647v8: c61620cfd82da4300b7992335bca9274568accba @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>545d692f0b07 drm/i915/pxp: Enable PXP with MTL-GSC-CS<br />
7455df7bf6cd drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component<br />
f8ce3156fff1 drm/i915/uapi/pxp: Add a GET_PARAM for PXP<br />
59ab9ca0ce60 drm/i915/pxp: Add ARB session creation and cleanup<br />
35336829877c drm/i915/pxp: Add GSC-CS backend to send GSC fw messages<br />
e7a54d25573e drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC<br />
4f9980d8331b drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation<br />
bd505e4f7221 drm/i915/pxp: Add GSC-CS back-end resource init and cleanup</p>

</body>
</html>

--===============1378139616765619357==--
