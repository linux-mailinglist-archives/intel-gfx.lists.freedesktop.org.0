Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F405FC031
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 07:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE9F010E18B;
	Wed, 12 Oct 2022 05:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A50510E18B;
 Wed, 12 Oct 2022 05:52:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 809FEA0BCB;
 Wed, 12 Oct 2022 05:52:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3074382646224971311=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 12 Oct 2022 05:52:04 -0000
Message-ID: <166555392448.12984.17974859259350984545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221011-pick-even-ranges-v1-0-1aaea52752ed@intel.com>
In-Reply-To: <20221011-pick-even-ranges-v1-0-1aaea52752ed@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_=5FPICK=5FEVEN=5FRANGES?=
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

--===============3074382646224971311==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add _PICK_EVEN_RANGES
URL   : https://patchwork.freedesktop.org/series/109606/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12235 -> Patchwork_109606v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/index.html

Participating hosts (46 -> 42)
------------------------------

  Missing    (4): fi-ctg-p8600 bat-atsm-1 fi-tgl-dsi bat-jsl-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109606v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@slpc:
    - {bat-adlp-6}:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/bat-adlp-6/igt@i915_selftest@live@slpc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/bat-adlp-6/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_109606v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-icl-u2:          [PASS][3] -> [INCOMPLETE][4] ([i915#4890] / [i915#7057])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/fi-icl-u2/igt@i915_selftest@live@gt_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-icl-u2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][5] -> [INCOMPLETE][6] ([i915#146] / [i915#6712])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][8] ([fdo#111827])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][9] ([i915#4312] / [i915#4991])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][10] ([i915#2582]) -> [PASS][11] +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/bat-rpls-2/igt@fbdev@read.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/bat-rpls-2/igt@fbdev@read.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][12] ([i915#4785]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][14] ([i915#5982]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6471]: https://gitlab.freedesktop.org/drm/intel/issues/6471
  [i915#6712]: https://gitlab.freedesktop.org/drm/intel/issues/6712
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7031]: https://gitlab.freedesktop.org/drm/intel/issues/7031
  [i915#7057]: https://gitlab.freedesktop.org/drm/intel/issues/7057


Build changes
-------------

  * Linux: CI_DRM_12235 -> Patchwork_109606v1

  CI-20190529: 20190529
  CI_DRM_12235: caaf8c4c270b6b9ce1b8610b4eea888190fc087f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109606v1: caaf8c4c270b6b9ce1b8610b4eea888190fc087f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

182d8a3b487c drm/i915: Convert pll macros to _PICK_EVEN_RANGES
8f451e640415 drm/i915: Fix coding style on DPLL*_ENABLE defines
f3a8b8b1018c drm/i915: Add _PICK_EVEN_RANGES()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/index.html

--===============3074382646224971311==
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
<tr><td><b>Series:</b></td><td>Add _PICK_EVEN_RANGES</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109606/">https://patchwork.freedesktop.org/series/109606/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12235 -&gt; Patchwork_109606v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/index.html</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Missing    (4): fi-ctg-p8600 bat-atsm-1 fi-tgl-dsi bat-jsl-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109606v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/bat-adlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/bat-adlp-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109606v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/fi-icl-u2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-icl-u2/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4890">i915#4890</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7057">i915#7057</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6712">i915#6712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12235/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109606v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12235 -&gt; Patchwork_109606v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12235: caaf8c4c270b6b9ce1b8610b4eea888190fc087f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109606v1: caaf8c4c270b6b9ce1b8610b4eea888190fc087f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>182d8a3b487c drm/i915: Convert pll macros to _PICK_EVEN_RANGES<br />
8f451e640415 drm/i915: Fix coding style on DPLL*_ENABLE defines<br />
f3a8b8b1018c drm/i915: Add _PICK_EVEN_RANGES()</p>

</body>
</html>

--===============3074382646224971311==--
