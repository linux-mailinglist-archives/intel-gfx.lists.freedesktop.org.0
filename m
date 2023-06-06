Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BF172346F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 03:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4273010E0EB;
	Tue,  6 Jun 2023 01:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3629910E0EB;
 Tue,  6 Jun 2023 01:21:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E2F8A73C7;
 Tue,  6 Jun 2023 01:21:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4040917022039278605=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 06 Jun 2023 01:21:21 -0000
Message-ID: <168601448115.22676.2392595591035359334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230605201021.13928-1-nirmoy.das@intel.com>
In-Reply-To: <20230605201021.13928-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_a_VMA_UAF_for_multi-gt_platform?=
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

--===============4040917022039278605==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix a VMA UAF for multi-gt platform
URL   : https://patchwork.freedesktop.org/series/118887/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13233 -> Patchwork_118887v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_118887v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][1] ([i915#7077])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-FAIL][3] ([i915#5334] / [i915#7872])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         NOTRUN -> [ABORT][4] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [ABORT][5] ([i915#6687] / [i915#7978])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][6] ([i915#7699]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [ABORT][8] ([i915#7913] / [i915#7982]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-rpls-2/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rpls-2/igt@i915_selftest@live@requests.html
    - {bat-mtlp-8}:       [DMESG-FAIL][10] ([i915#8497]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-mtlp-8/igt@i915_selftest@live@requests.html
    - bat-rpls-1:         [ABORT][12] ([i915#7911] / [i915#7920] / [i915#7982]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-rpls-1/igt@i915_selftest@live@requests.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [ABORT][14] ([i915#4579] / [i915#8260]) -> [SKIP][15] ([i915#3555] / [i915#4579])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497


Build changes
-------------

  * Linux: CI_DRM_13233 -> Patchwork_118887v1

  CI-20190529: 20190529
  CI_DRM_13233: ee6c4040676a668d5d54c54ef5d957a56f23a030 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7319: 2e1bcd49944452b5f9516eecee48e1fa3ae6a636 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118887v1: ee6c4040676a668d5d54c54ef5d957a56f23a030 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4bd97db120a9 drm/i915: Fix a VMA UAF for multi-gt platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/index.html

--===============4040917022039278605==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix a VMA UAF for multi-gt platform</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118887/">https://patchwork.freedesktop.org/series/118887/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13233 -&gt; Patchwork_118887v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118887v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_setmode@basic-clone-single-crtc:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13233/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118887v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13233 -&gt; Patchwork_118887v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13233: ee6c4040676a668d5d54c54ef5d957a56f23a030 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7319: 2e1bcd49944452b5f9516eecee48e1fa3ae6a636 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118887v1: ee6c4040676a668d5d54c54ef5d957a56f23a030 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4bd97db120a9 drm/i915: Fix a VMA UAF for multi-gt platform</p>

</body>
</html>

--===============4040917022039278605==--
