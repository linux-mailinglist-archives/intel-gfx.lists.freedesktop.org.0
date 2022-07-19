Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED0E57A676
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 20:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6BC18A732;
	Tue, 19 Jul 2022 18:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E89CE10ED28;
 Tue, 19 Jul 2022 18:26:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0A9EAADD6;
 Tue, 19 Jul 2022 18:26:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4488151494913894160=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Tue, 19 Jul 2022 18:26:18 -0000
Message-ID: <165825517889.16364.5545480692315635367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220719172825.3155696-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220719172825.3155696-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Remove_more_GuC_error_capture_noise?=
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

--===============4488151494913894160==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Remove more GuC error capture noise
URL   : https://patchwork.freedesktop.org/series/106493/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11925 -> Patchwork_106493v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/index.html

Participating hosts (37 -> 32)
------------------------------

  Additional (1): bat-jsl-3 
  Missing    (6): bat-dg1-5 bat-dg2-8 bat-dg2-9 bat-adlp-4 bat-adln-1 bat-rpls-2 

Known issues
------------

  Here are the changes found in Patchwork_106493v1 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][1] ([i915#4785]) -> [INCOMPLETE][2] ([i915#3303] / [i915#4785])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11925/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][3] ([fdo#103375]) -> [INCOMPLETE][4] ([i915#5982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11925/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982


Build changes
-------------

  * Linux: CI_DRM_11925 -> Patchwork_106493v1

  CI-20190529: 20190529
  CI_DRM_11925: 5dfb5a4e47e73362e5557bc87d1b97bb96dc8903 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6592: d7c0659613199a5dcf535ed3add68ed1991ead7e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106493v1: 5dfb5a4e47e73362e5557bc87d1b97bb96dc8903 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

38371677b955 drm/i915/guc: Remove more GuC-Err-Cap noise

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/index.html

--===============4488151494913894160==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Remove more GuC error capture noise</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106493/">https://patchwork.freedesktop.org/series/106493/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11925 -&gt; Patchwork_106493v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/index.html</p>
<h2>Participating hosts (37 -&gt; 32)</h2>
<p>Additional (1): bat-jsl-3 <br />
  Missing    (6): bat-dg1-5 bat-dg2-8 bat-dg2-9 bat-adlp-4 bat-adln-1 bat-rpls-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106493v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11925/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11925/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106493v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11925 -&gt; Patchwork_106493v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11925: 5dfb5a4e47e73362e5557bc87d1b97bb96dc8903 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6592: d7c0659613199a5dcf535ed3add68ed1991ead7e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106493v1: 5dfb5a4e47e73362e5557bc87d1b97bb96dc8903 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>38371677b955 drm/i915/guc: Remove more GuC-Err-Cap noise</p>

</body>
</html>

--===============4488151494913894160==--
