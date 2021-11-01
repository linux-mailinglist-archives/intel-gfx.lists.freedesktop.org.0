Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B451442215
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 21:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F57D89DB2;
	Mon,  1 Nov 2021 20:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73C6589D8D;
 Mon,  1 Nov 2021 20:56:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CFD5AA0ED;
 Mon,  1 Nov 2021 20:56:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8141490609852468494=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 01 Nov 2021 20:56:18 -0000
Message-ID: <163580017841.18410.6577279563971233151@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211101183551.3580546-1-imre.deak@intel.com>
In-Reply-To: <20211101183551.3580546-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Factor_out_i915=5Fggtt?=
 =?utf-8?b?X3N1c3BlbmRfdm0vaTkxNV9nZ3R0X3Jlc3VtZV92bSgp?=
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

--===============8141490609852468494==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Factor out i915_ggtt_suspend_vm/i915_ggtt_resume_vm()
URL   : https://patchwork.freedesktop.org/series/96467/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10824 -> Patchwork_21497
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21497/index.html

Participating hosts (40 -> 36)
------------------------------

  Missing    (4): fi-bsw-cyan bat-adlp-4 bat-dg1-6 fi-hsw-4200u 

Known issues
------------

  Here are the changes found in Patchwork_21497 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-hsw-gt1}:       [DMESG-WARN][1] ([i915#4290]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10824/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21497/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4290]: https://gitlab.freedesktop.org/drm/intel/issues/4290


Build changes
-------------

  * Linux: CI_DRM_10824 -> Patchwork_21497

  CI-20190529: 20190529
  CI_DRM_10824: ad79191290568b948a3bf99ba99fad4023ed2ab4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6265: 5004c6cf2ad4a72423b4cf0cd42686925bcb80fe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21497: ff27131e6e77f0fcd2ecfbe959463bd18df75168 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ff27131e6e77 drm/i915: Restore memory mapping for DPT FBs across system suspend/resume
0d5692933baf drm/i915: Factor out i915_ggtt_suspend_vm/i915_ggtt_resume_vm()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21497/index.html

--===============8141490609852468494==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Factor out i915_ggtt_suspend_vm/i915_ggtt_resume_vm()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96467/">https://patchwork.freedesktop.org/series/96467/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21497/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21497/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10824 -&gt; Patchwork_21497</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21497/index.html</p>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): fi-bsw-cyan bat-adlp-4 bat-dg1-6 fi-hsw-4200u </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21497 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10824/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4290">i915#4290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21497/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10824 -&gt; Patchwork_21497</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10824: ad79191290568b948a3bf99ba99fad4023ed2ab4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6265: 5004c6cf2ad4a72423b4cf0cd42686925bcb80fe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21497: ff27131e6e77f0fcd2ecfbe959463bd18df75168 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ff27131e6e77 drm/i915: Restore memory mapping for DPT FBs across system suspend/resume<br />
0d5692933baf drm/i915: Factor out i915_ggtt_suspend_vm/i915_ggtt_resume_vm()</p>

</body>
</html>

--===============8141490609852468494==--
