Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA8D50ABD5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 01:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2C010ECBB;
	Thu, 21 Apr 2022 23:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A14D510EC4C;
 Thu, 21 Apr 2022 23:09:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FC09A00E8;
 Thu, 21 Apr 2022 23:09:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3590601432905436487=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 21 Apr 2022 23:09:35 -0000
Message-ID: <165058257561.10761.13413368018547901261@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220413152852.7336-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220413152852.7336-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/fbc=3A_Consult_hw=2Ecrtc_i?=
 =?utf-8?q?nstead_of_uapi=2Ecrtc_=28rev3=29?=
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

--===============3590601432905436487==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/fbc: Consult hw.crtc instead of uapi.crtc (rev3)
URL   : https://patchwork.freedesktop.org/series/102657/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11537 -> Patchwork_102657v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102657v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102657v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/index.html

Participating hosts (45 -> 47)
------------------------------

  Additional (4): fi-cml-u2 fi-bdw-gvtdvm bat-adlm-1 fi-bdw-5557u 
  Missing    (2): fi-bsw-cyan fi-icl-u2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102657v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@reset:
    - bat-adlp-4:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-4/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-adlp-4/igt@i915_selftest@live@reset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@verify-random:
    - {bat-dg2-9}:        NOTRUN -> [SKIP][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       NOTRUN -> [WARN][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_102657v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@write:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][5] ([fdo#109271]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-bdw-gvtdvm/igt@fbdev@write.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-cml-u2:          NOTRUN -> [SKIP][6] ([i915#1208]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][7] ([i915#4831])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-cml-u2:          NOTRUN -> [INCOMPLETE][8] ([i915#5680])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][9] ([i915#146])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-4:         [PASS][10] -> [DMESG-WARN][11] ([i915#3576]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-adlp-4/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][12] ([i915#5334]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][14] ([i915#4494] / [i915#4957]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][16] ([i915#3921]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][18] ([i915#3576]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - bat-adlp-4:         [DMESG-WARN][20] ([i915#3576]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1208]: https://gitlab.freedesktop.org/drm/intel/issues/1208
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4831]: https://gitlab.freedesktop.org/drm/intel/issues/4831
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5171]: https://gitlab.freedesktop.org/drm/intel/issues/5171
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5181]: https://gitlab.freedesktop.org/drm/intel/issues/5181
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#5329]: https://gitlab.freedesktop.org/drm/intel/issues/5329
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5606]: https://gitlab.freedesktop.org/drm/intel/issues/5606
  [i915#5680]: https://gitlab.freedesktop.org/drm/intel/issues/5680
  [i915#5703]: https://gitlab.freedesktop.org/drm/intel/issues/5703
  [i915#5722]: https://gitlab.freedesktop.org/drm/intel/issues/5722
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763


Build changes
-------------

  * Linux: CI_DRM_11537 -> Patchwork_102657v3

  CI-20190529: 20190529
  CI_DRM_11537: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6444: df584c804e3a44431b0e5ae21c190b6e9acb35ab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102657v3: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

90f94aa7b162 drm/i915/fbc: s/false/0/
02570b1dd048 drm/i915/fbc: Consult hw.crtc instead of uapi.crtc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/index.html

--===============3590601432905436487==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/fbc: Consult hw.crtc instead of uapi.crtc (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102657/">https://patchwork.freedesktop.org/series/102657/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11537 -&gt; Patchwork_102657v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102657v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102657v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/index.html</p>
<h2>Participating hosts (45 -&gt; 47)</h2>
<p>Additional (4): fi-cml-u2 fi-bdw-gvtdvm bat-adlm-1 fi-bdw-5557u <br />
  Missing    (2): fi-bsw-cyan fi-icl-u2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102657v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-4/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-adlp-4/igt@i915_selftest@live@reset.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102657v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-bdw-gvtdvm/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1208">i915#1208</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4831">i915#4831</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-cml-u2/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5680">i915#5680</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102657v3/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11537 -&gt; Patchwork_102657v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11537: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6444: df584c804e3a44431b0e5ae21c190b6e9acb35ab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102657v3: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>90f94aa7b162 drm/i915/fbc: s/false/0/<br />
02570b1dd048 drm/i915/fbc: Consult hw.crtc instead of uapi.crtc</p>

</body>
</html>

--===============3590601432905436487==--
