Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F2356A952
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 19:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C250410FFEA;
	Thu,  7 Jul 2022 17:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46F8110FCE6;
 Thu,  7 Jul 2022 17:22:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDD06A66C9;
 Thu,  7 Jul 2022 17:22:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4994043603037829707=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Thu, 07 Jul 2022 17:22:26 -0000
Message-ID: <165721454673.2212.3861913651720686239@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220707163606.1474111-1-bob.beckett@collabora.com>
In-Reply-To: <20220707163606.1474111-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ttm_for_stolen_=28rev7=29?=
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

--===============4994043603037829707==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: ttm for stolen (rev7)
URL   : https://patchwork.freedesktop.org/series/101396/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11857 -> Patchwork_101396v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/index.html

Participating hosts (45 -> 41)
------------------------------

  Additional (1): bat-dg2-8 
  Missing    (5): bat-dg1-5 fi-ctg-p8600 fi-kbl-x1275 bat-rpls-1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_101396v7:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@reset:
    - {bat-adlp-6}:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adlp-6/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adlp-6/igt@i915_selftest@live@reset.html

  * igt@kms_busy@basic@flip:
    - {bat-dg2-9}:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-dg2-9/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-dg2-9/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_101396v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-guc:         [PASS][5] -> [FAIL][6] ([i915#6253])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/fi-kbl-guc/igt@debugfs_test@read_all_entries.html

  * igt@kms_busy@basic@modeset:
    - bat-adlp-4:         [PASS][7] -> [DMESG-WARN][8] ([i915#3576])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adlp-4/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adlp-4/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-ivb-3770:        NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - {bat-adln-1}:       [DMESG-FAIL][10] ([i915#6297]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adln-1/igt@i915_selftest@live@gt_mocs.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adln-1/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][12] ([i915#3303] / [i915#5370]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][14] ([i915#4494] / [i915#4957]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - {bat-adln-1}:       [DMESG-WARN][16] ([i915#3576]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adln-1/igt@kms_busy@basic@modeset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adln-1/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-adlp-4:         [DMESG-WARN][18] ([i915#3576]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][20] ([i915#3576]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5370]: https://gitlab.freedesktop.org/drm/intel/issues/5370
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6253]: https://gitlab.freedesktop.org/drm/intel/issues/6253
  [i915#6297]: https://gitlab.freedesktop.org/drm/intel/issues/6297


Build changes
-------------

  * Linux: CI_DRM_11857 -> Patchwork_101396v7

  CI-20190529: 20190529
  CI_DRM_11857: de2555fd1402a79eb3c89db3f62944fec2026c8f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6561: 4b673211d1645eaafa9da32eece4c274d8cd6c41 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_101396v7: de2555fd1402a79eb3c89db3f62944fec2026c8f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

18db33c5a7cf drm/i915: stolen memory use ttm backend
d9ee7bd3f280 drm/i915/selftest: wait for requests during engine reset selftest
a506a7bd63b2 drm/i915/selftest: don't attempt engine reset of guc submission engines
766343d3c459 drm/i915/ttm: add buffer pin on alloc flag
731a1fc57eeb drm/i915: ttm move/clear logic fix
40984bdfe8c6 drm/i915: sanitize mem_flags for stolen buffers
fb28050ed8c7 drm/i915: instantiate ttm ranger manager for stolen memory
231dccecb69d drm/i915/gem: selftest should not attempt mmap of private regions
04838f25dd82 drm/i915/ttm: only trust snooping for dgfx when deciding default cache_level
127af103ff96 drm/i915: limit ttm to dma32 for i965G[M]
3cd3e7a8e055 drm/i915/ttm: dont trample cache_level overrides during ttm move

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/index.html

--===============4994043603037829707==
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
<tr><td><b>Series:</b></td><td>drm/i915: ttm for stolen (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101396/">https://patchwork.freedesktop.org/series/101396/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11857 -&gt; Patchwork_101396v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/index.html</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): bat-dg2-8 <br />
  Missing    (5): bat-dg1-5 fi-ctg-p8600 fi-kbl-x1275 bat-rpls-1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_101396v7:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adlp-6/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adlp-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-dg2-9/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-dg2-9/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_101396v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6253">i915#6253</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adlp-4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adlp-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adln-1/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6297">i915#6297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adln-1/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5370">i915#5370</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adln-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adln-1/igt@kms_busy@basic@modeset.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v7/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11857 -&gt; Patchwork_101396v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11857: de2555fd1402a79eb3c89db3f62944fec2026c8f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6561: 4b673211d1645eaafa9da32eece4c274d8cd6c41 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_101396v7: de2555fd1402a79eb3c89db3f62944fec2026c8f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>18db33c5a7cf drm/i915: stolen memory use ttm backend<br />
d9ee7bd3f280 drm/i915/selftest: wait for requests during engine reset selftest<br />
a506a7bd63b2 drm/i915/selftest: don't attempt engine reset of guc submission engines<br />
766343d3c459 drm/i915/ttm: add buffer pin on alloc flag<br />
731a1fc57eeb drm/i915: ttm move/clear logic fix<br />
40984bdfe8c6 drm/i915: sanitize mem_flags for stolen buffers<br />
fb28050ed8c7 drm/i915: instantiate ttm ranger manager for stolen memory<br />
231dccecb69d drm/i915/gem: selftest should not attempt mmap of private regions<br />
04838f25dd82 drm/i915/ttm: only trust snooping for dgfx when deciding default cache_level<br />
127af103ff96 drm/i915: limit ttm to dma32 for i965G[M]<br />
3cd3e7a8e055 drm/i915/ttm: dont trample cache_level overrides during ttm move</p>

</body>
</html>

--===============4994043603037829707==--
