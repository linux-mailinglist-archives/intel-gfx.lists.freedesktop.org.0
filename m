Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC5B59708E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 16:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CEC8941EC;
	Wed, 17 Aug 2022 14:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B2AE94A1F;
 Wed, 17 Aug 2022 14:08:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13CE5A7DFF;
 Wed, 17 Aug 2022 14:08:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8524393806143678347=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 17 Aug 2022 14:08:58 -0000
Message-ID: <166074533805.11665.11913290749439975445@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220817121948.180655-1-jani.nikula@intel.com>
In-Reply-To: <20220817121948.180655-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Meteorlake_and_later_support_DP_2=2E0_=28rev2=29?=
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

--===============8524393806143678347==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Meteorlake and later support DP 2.0 (rev2)
URL   : https://patchwork.freedesktop.org/series/107364/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11993 -> Patchwork_107364v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107364v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107364v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/index.html

Participating hosts (31 -> 37)
------------------------------

  Additional (6): bat-adls-5 fi-tgl-dsi fi-icl-u2 bat-adln-1 bat-rpls-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107364v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-icl-u2:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-icl-u2/igt@i915_module_load@load.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-hsw-g3258:       [INCOMPLETE][2] ([i915#4939]) -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/fi-hsw-g3258/igt@gem_exec_suspend@basic-s3@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-hsw-g3258/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-jsl-1}:        NOTRUN -> [DMESG-WARN][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-jsl-1/igt@i915_module_load@load.html
    - {bat-adls-5}:       NOTRUN -> [DMESG-WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-adls-5/igt@i915_module_load@load.html
    - {bat-adln-1}:       NOTRUN -> [DMESG-WARN][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-adln-1/igt@i915_module_load@load.html
    - {bat-rpls-2}:       NOTRUN -> [DMESG-WARN][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-rpls-2/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       NOTRUN -> [WARN][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-tgl-dsi/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_107364v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [PASS][9] -> [FAIL][10] ([i915#6298])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][11] ([i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][12] ([i915#4494] / [i915#4957]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1245]: https://gitlab.freedesktop.org/drm/intel/issues/1245
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559


Build changes
-------------

  * Linux: CI_DRM_11993 -> Patchwork_107364v2

  CI-20190529: 20190529
  CI_DRM_11993: 2dfc67084761ba9b6259873bd574548dc4827296 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6629: d24e986fb3b2ab6d755498d27828bc85931d12ff @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107364v2: 2dfc67084761ba9b6259873bd574548dc4827296 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e86089372ec1 drm/i915/mtl: Meteorlake and later support DP 2.0

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/index.html

--===============8524393806143678347==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Meteorlake and later support DP 2.0 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107364/">https://patchwork.freedesktop.org/series/107364/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11993 -&gt; Patchwork_107364v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107364v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107364v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/index.html</p>
<h2>Participating hosts (31 -&gt; 37)</h2>
<p>Additional (6): bat-adls-5 fi-tgl-dsi fi-icl-u2 bat-adln-1 bat-rpls-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107364v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-icl-u2/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/fi-hsw-g3258/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-hsw-g3258/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-jsl-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-adls-5/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-adln-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-rpls-2/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-tgl-dsi/igt@i915_module_load@reload.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107364v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107364v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11993 -&gt; Patchwork_107364v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11993: 2dfc67084761ba9b6259873bd574548dc4827296 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6629: d24e986fb3b2ab6d755498d27828bc85931d12ff @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107364v2: 2dfc67084761ba9b6259873bd574548dc4827296 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e86089372ec1 drm/i915/mtl: Meteorlake and later support DP 2.0</p>

</body>
</html>

--===============8524393806143678347==--
