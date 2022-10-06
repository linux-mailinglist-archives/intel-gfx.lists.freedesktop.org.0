Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DF45F7219
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 01:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFCFE10E522;
	Thu,  6 Oct 2022 23:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6684B10E522;
 Thu,  6 Oct 2022 23:56:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E63BAADD9;
 Thu,  6 Oct 2022 23:56:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1882292404495751159=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 06 Oct 2022 23:56:26 -0000
Message-ID: <166510058635.5835.1093965493532107465@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRGVs?=
 =?utf-8?q?ay_disabling_GuC_scheduling_of_an_idle_context?=
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

--===============1882292404495751159==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Delay disabling GuC scheduling of an idle context
URL   : https://patchwork.freedesktop.org/series/109466/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12223 -> Patchwork_109466v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109466v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109466v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-ctg-p8600 fi-hsw-4200u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109466v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@migrate:
    - fi-bdw-gvtdvm:      [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-bdw-gvtdvm/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/fi-bdw-gvtdvm/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_109466v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - bat-dg1-5:          NOTRUN -> [SKIP][3] ([fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-dg1-5:          NOTRUN -> [SKIP][4] ([i915#4078])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@runner@aborted:
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][5] ([i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][6] ([i915#2867]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - {bat-dg2-11}:       [DMESG-WARN][8] ([i915#6816]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][10] ([i915#2867]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [INCOMPLETE][12] ([i915#4418]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_pm:
    - {bat-adln-1}:       [DMESG-FAIL][14] ([i915#4258]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adln-1/igt@i915_selftest@live@gt_pm.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-adln-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][16] ([i915#4983] / [i915#6257]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-1/igt@i915_selftest@live@requests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5134]: https://gitlab.freedesktop.org/drm/intel/issues/5134
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816


Build changes
-------------

  * Linux: CI_DRM_12223 -> Patchwork_109466v1

  CI-20190529: 20190529
  CI_DRM_12223: c53a5e48e0405a63cda64682304cd8b391025be3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7002: 523844c74e7da6b39d856596c28a92f04172035f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109466v1: c53a5e48e0405a63cda64682304cd8b391025be3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b985cb7dbf1a drm/i915/guc: Remove intel_context:number_committed_requests counter
65db2b2c551c drm/i915/guc: Delay disabling guc_id scheduling for better hysteresis

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/index.html

--===============1882292404495751159==
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
<tr><td><b>Series:</b></td><td>Delay disabling GuC scheduling of an idle context</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109466/">https://patchwork.freedesktop.org/series/109466/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12223 -&gt; Patchwork_109466v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109466v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_109466v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-ctg-p8600 fi-hsw-4200u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109466v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-bdw-gvtdvm/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/fi-bdw-gvtdvm/igt@i915_selftest@live@migrate.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109466v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6816">i915#6816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adln-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-adln-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109466v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12223 -&gt; Patchwork_109466v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12223: c53a5e48e0405a63cda64682304cd8b391025be3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7002: 523844c74e7da6b39d856596c28a92f04172035f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109466v1: c53a5e48e0405a63cda64682304cd8b391025be3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b985cb7dbf1a drm/i915/guc: Remove intel_context:number_committed_requests counter<br />
65db2b2c551c drm/i915/guc: Delay disabling guc_id scheduling for better hysteresis</p>

</body>
</html>

--===============1882292404495751159==--
