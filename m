Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A940269D130
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 17:16:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6EF10E288;
	Mon, 20 Feb 2023 16:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A303D10E288;
 Mon, 20 Feb 2023 16:16:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97C7AAADDA;
 Mon, 20 Feb 2023 16:16:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1585625601084181867=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 20 Feb 2023 16:16:31 -0000
Message-ID: <167690979161.31315.3446747783031824546@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Fix_audio_ELD_handling_?=
 =?utf-8?q?for_DP_MST?=
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

--===============1585625601084181867==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Fix audio ELD handling for DP MST
URL   : https://patchwork.freedesktop.org/series/114194/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12762 -> Patchwork_114194v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114194v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@guc:
    - bat-rpls-2:         [PASS][1] -> [DMESG-WARN][2] ([i915#7852])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12762/bat-rpls-2/igt@i915_selftest@live@guc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#4983])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12762/bat-rpls-1/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-adlm-1:         [PASS][5] -> [DMESG-WARN][6] ([i915#2867])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12762/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-FAIL][7] ([i915#6367] / [i915#6997]) -> [DMESG-FAIL][8] ([i915#6367])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12762/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852


Build changes
-------------

  * Linux: CI_DRM_12762 -> Patchwork_114194v1

  CI-20190529: 20190529
  CI_DRM_12762: 7db509313c2f676ff22df731c0e8b1acb4a3d2ba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7166: 73a66b9f4418cd14b0c0d20d50cdd4d41053f78c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114194v1: 7db509313c2f676ff22df731c0e8b1acb4a3d2ba @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

dc43a4fb3206 drm/i915: Drop useless intel_dp_has_audio() argument
27fad932d621 drm/i915: Fix audio ELD handling for DP MST

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/index.html

--===============1585625601084181867==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Fix audio ELD handling for DP MST</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114194/">https://patchwork.freedesktop.org/series/114194/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12762 -&gt; Patchwork_114194v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114194v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12762/bat-rpls-2/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12762/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12762/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12762/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114194v1/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12762 -&gt; Patchwork_114194v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12762: 7db509313c2f676ff22df731c0e8b1acb4a3d2ba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7166: 73a66b9f4418cd14b0c0d20d50cdd4d41053f78c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114194v1: 7db509313c2f676ff22df731c0e8b1acb4a3d2ba @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>dc43a4fb3206 drm/i915: Drop useless intel_dp_has_audio() argument<br />
27fad932d621 drm/i915: Fix audio ELD handling for DP MST</p>

</body>
</html>

--===============1585625601084181867==--
