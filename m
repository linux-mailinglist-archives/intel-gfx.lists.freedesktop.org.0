Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3695B4263
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 00:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90EA510E0B1;
	Fri,  9 Sep 2022 22:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B405810E0A0;
 Fri,  9 Sep 2022 22:14:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC5F3AAA91;
 Fri,  9 Sep 2022 22:14:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1230800207077459559=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 09 Sep 2022 22:14:11 -0000
Message-ID: <166276165167.1364.17585563427738023179@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220909205932.32537-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220909205932.32537-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_TV_encoder_clock_computation?=
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

--===============1230800207077459559==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix TV encoder clock computation
URL   : https://patchwork.freedesktop.org/series/108385/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12111 -> Patchwork_108385v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108385v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@mman:
    - {bat-rpls-2}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/bat-rpls-2/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/bat-rpls-2/igt@i915_selftest@live@mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_108385v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [PASS][3] -> [DMESG-FAIL][4] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_pm:
    - bat-adlp-4:         [PASS][5] -> [DMESG-FAIL][6] ([i915#3987])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/bat-adlp-4/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/bat-adlp-4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][7] -> [DMESG-FAIL][8] ([i915#4528])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][9] ([fdo#109271] / [i915#2403] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - {bat-rpls-2}:       [DMESG-FAIL][10] ([i915#4258]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {bat-rpls-2}:       [FAIL][12] ([i915#6559]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559


Build changes
-------------

  * Linux: CI_DRM_12111 -> Patchwork_108385v1

  CI-20190529: 20190529
  CI_DRM_12111: 4b4827c67d8cd77fb0785f208a0290aa8eadc4a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6650: f7aff600ab16d6405f0704b1743d2b7909715752 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108385v1: 4b4827c67d8cd77fb0785f208a0290aa8eadc4a4 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

35c973f61227 drm/i915: Fix TV encoder clock computation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/index.html

--===============1230800207077459559==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix TV encoder clock computation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108385/">https://patchwork.freedesktop.org/series/108385/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12111 -&gt; Patchwork_108385v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108385v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@mman:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/bat-rpls-2/igt@i915_selftest@live@mman.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108385v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/bat-adlp-4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/bat-adlp-4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12111/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108385v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12111 -&gt; Patchwork_108385v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12111: 4b4827c67d8cd77fb0785f208a0290aa8eadc4a4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6650: f7aff600ab16d6405f0704b1743d2b7909715752 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108385v1: 4b4827c67d8cd77fb0785f208a0290aa8eadc4a4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>35c973f61227 drm/i915: Fix TV encoder clock computation</p>

</body>
</html>

--===============1230800207077459559==--
