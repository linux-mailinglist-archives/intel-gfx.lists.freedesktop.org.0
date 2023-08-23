Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB061784ED7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 04:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13E210E046;
	Wed, 23 Aug 2023 02:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F072010E046;
 Wed, 23 Aug 2023 02:45:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE75CACC23;
 Wed, 23 Aug 2023 02:45:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6605926540893258033=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Oak Zeng" <oak.zeng@intel.com>
Date: Wed, 23 Aug 2023 02:45:52 -0000
Message-ID: <169275875288.16625.13867905428491886724@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230822152859.1586761-1-oak.zeng@intel.com>
In-Reply-To: <20230822152859.1586761-1-oak.zeng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Create_a_blitter_contex?=
 =?utf-8?q?t_for_GGTT_updates?=
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

--===============6605926540893258033==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Create a blitter context for GGTT updates
URL   : https://patchwork.freedesktop.org/series/122748/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13549 -> Patchwork_122748v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_122748v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122748v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_122748v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - bat-dg2-11:         NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-dg2-11/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-dg2-11:         NOTRUN -> [WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_122748v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [PASS][3] -> [ABORT][4] ([i915#8630])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-adlp-9:         NOTRUN -> [INCOMPLETE][5] ([i915#7443])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html
    - bat-dg2-11:         NOTRUN -> [INCOMPLETE][6] ([i915#4817])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlp-9:         [INCOMPLETE][7] ([i915#4983] / [i915#7913]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html
    - bat-dg2-11:         [INCOMPLETE][9] ([i915#7609] / [i915#7913]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8630]: https://gitlab.freedesktop.org/drm/intel/issues/8630


Build changes
-------------

  * Linux: CI_DRM_13549 -> Patchwork_122748v1

  CI-20190529: 20190529
  CI_DRM_13549: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122748v1: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

60448642fa81 drm/i915: Enable GGTT blitting in MTL
a53ef76b297d drm/i915: Implement GGTT update method with blitter
f224bfd0ab1b drm/i915: Create a blitter context for GGTT updates

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/index.html

--===============6605926540893258033==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Create a blitter context for GGTT updates</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122748/">https://patchwork.freedesktop.org/series/122748/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13549 -&gt; Patchwork_122748v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_122748v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122748v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_122748v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-dg2-11/igt@i915_selftest@live@mman.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122748v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8630">i915#8630</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-adlp-9/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>)</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">PASS</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122748v1/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13549 -&gt; Patchwork_122748v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13549: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122748v1: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>60448642fa81 drm/i915: Enable GGTT blitting in MTL<br />
a53ef76b297d drm/i915: Implement GGTT update method with blitter<br />
f224bfd0ab1b drm/i915: Create a blitter context for GGTT updates</p>

</body>
</html>

--===============6605926540893258033==--
