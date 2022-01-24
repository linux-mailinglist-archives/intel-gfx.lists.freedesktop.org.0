Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E03649A047
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 00:27:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCF9310E75C;
	Mon, 24 Jan 2022 23:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B96D110E272;
 Mon, 24 Jan 2022 23:27:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5C79A7E03;
 Mon, 24 Jan 2022 23:27:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8207147996312431302=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Mon, 24 Jan 2022 23:27:47 -0000
Message-ID: <164306686770.1344.16838297989635798733@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124150157.15758-1-matthew.brost@intel.com>
In-Reply-To: <20220124150157.15758-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?_up_request_cancel_=28rev2=29?=
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

--===============8207147996312431302==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix up request cancel (rev2)
URL   : https://patchwork.freedesktop.org/series/99173/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11129 -> Patchwork_22087
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/index.html

Participating hosts (48 -> 43)
------------------------------

  Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-icl-u2 fi-ctg-p8600 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22087 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-snb-2600:        [PASS][1] -> [DMESG-WARN][2] ([i915#4913])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-snb-2600/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-snb-2600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [PASS][3] -> [FAIL][4] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][5] ([i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-skl-6600u/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][6] ([i915#2426] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][7] ([i915#541]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-kefka:       [DMESG-FAIL][9] ([i915#541]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][11] ([i915#4494]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][13] -> [DMESG-FAIL][14] ([i915#4494])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770:        [INCOMPLETE][15] ([i915#3303]) -> [INCOMPLETE][16] ([i915#4785])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4562]: https://gitlab.freedesktop.org/drm/intel/issues/4562
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4913]: https://gitlab.freedesktop.org/drm/intel/issues/4913
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11129 -> Patchwork_22087

  CI-20190529: 20190529
  CI_DRM_11129: 0b83d3cf9f9eab03ec804d56ac2686320a64f3ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6330: f73008bac9a8db0779264b170f630483e9165764 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22087: 8a5938d99c50adeced0139269015a91bc9ec126b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8a5938d99c50 drm/i915/selftests: Set preemption timeout to zero in cancel reset test
bebfc9866392 drm/i915/execlists: Fix execlists request cancellation corner case
f478dcc4fbab drm/i915/guc: Cancel requests immediately
9d38a07fb177 drm/i915: Add request cancel low level trace point

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/index.html

--===============8207147996312431302==
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
<tr><td><b>Series:</b></td><td>Fix up request cancel (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99173/">https://patchwork.freedesktop.org/series/99173/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11129 -&gt; Patchwork_22087</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/index.html</p>
<h2>Participating hosts (48 -&gt; 43)</h2>
<p>Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-icl-u2 fi-ctg-p8600 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22087 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-snb-2600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-snb-2600/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4913">i915#4913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11129/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22087/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11129 -&gt; Patchwork_22087</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11129: 0b83d3cf9f9eab03ec804d56ac2686320a64f3ee @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6330: f73008bac9a8db0779264b170f630483e9165764 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22087: 8a5938d99c50adeced0139269015a91bc9ec126b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8a5938d99c50 drm/i915/selftests: Set preemption timeout to zero in cancel reset test<br />
bebfc9866392 drm/i915/execlists: Fix execlists request cancellation corner case<br />
f478dcc4fbab drm/i915/guc: Cancel requests immediately<br />
9d38a07fb177 drm/i915: Add request cancel low level trace point</p>

</body>
</html>

--===============8207147996312431302==--
