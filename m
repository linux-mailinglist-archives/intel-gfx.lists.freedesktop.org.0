Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 262C14C524B
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 00:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F36310E252;
	Fri, 25 Feb 2022 23:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E644010E252;
 Fri, 25 Feb 2022 23:52:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1997AA0ED;
 Fri, 25 Feb 2022 23:52:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8342083280123127288=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 25 Feb 2022 23:52:51 -0000
Message-ID: <164583317188.6270.139214994357145186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220225174118.1320237-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220225174118.1320237-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Fix_assert_in_i915=5Fgg?=
 =?utf-8?q?tt=5Fpin?=
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

--===============8342083280123127288==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Fix assert in i915_ggtt_pin
URL   : https://patchwork.freedesktop.org/series/100752/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11289 -> Patchwork_22418
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-bsw-cyan 

Known issues
------------

  Here are the changes found in Patchwork_22418 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][1] ([i915#579]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - {bat-jsl-2}:        [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/bat-jsl-2/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/bat-jsl-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][5] ([i915#4494] / [i915#4957]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][7] ([i915#3576]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/bat-adlp-6/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Build changes
-------------

  * Linux: CI_DRM_11289 -> Patchwork_22418

  CI-20190529: 20190529
  CI_DRM_11289: a560f8f58a191a7ff533db6448b09eb779da603e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22418: a6883ad8498669b10e22de8780afaba82fe177c5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a6883ad84986 dma-resv: Fix dma_resv_held
4a30d90acaa9 drm/i915: Fix assert in i915_ggtt_pin

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/index.html

--===============8342083280123127288==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Fix assert in i915_ggtt_pin</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100752/">https://patchwork.freedesktop.org/series/100752/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11289 -&gt; Patchwork_22418</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22418 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/bat-jsl-2/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/bat-jsl-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22418/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11289 -&gt; Patchwork_22418</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11289: a560f8f58a191a7ff533db6448b09eb779da603e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22418: a6883ad8498669b10e22de8780afaba82fe177c5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a6883ad84986 dma-resv: Fix dma_resv_held<br />
4a30d90acaa9 drm/i915: Fix assert in i915_ggtt_pin</p>

</body>
</html>

--===============8342083280123127288==--
