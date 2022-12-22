Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4E66545E8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 19:17:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC0C10E559;
	Thu, 22 Dec 2022 18:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 279BF10E07E;
 Thu, 22 Dec 2022 18:17:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2235BAADE0;
 Thu, 22 Dec 2022 18:17:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8110720853232212727=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 22 Dec 2022 18:17:44 -0000
Message-ID: <167173306410.14835.3149591420911889233@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221222110620.276311-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221222110620.276311-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_same_object_multiple_mmap_memory_leak?=
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

--===============8110720853232212727==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix same object multiple mmap memory leak
URL   : https://patchwork.freedesktop.org/series/112166/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12522 -> Patchwork_112166v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html

Participating hosts (44 -> 46)
------------------------------

  Additional (2): bat-adlm-1 bat-atsm-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112166v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@workarounds:
    - {bat-adln-1}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/bat-adln-1/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/bat-adln-1/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_112166v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][3] ([i915#7640])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][4] ([i915#7229]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [FAIL][6] -> [PASS][7] +11 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][8] ([i915#5334]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@guc_hang:
    - fi-kbl-soraka:      [INCOMPLETE][10] ([i915#7640]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-kbl-soraka/igt@i915_selftest@live@guc_hang.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-kbl-soraka/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][12] ([i915#4983]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/bat-rpls-1/igt@i915_selftest@live@reset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-apl-guc:         [SKIP][14] ([fdo#109271]) -> [SKIP][15] ([fdo#109271] / [fdo#111827])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7640]: https://gitlab.freedesktop.org/drm/intel/issues/7640


Build changes
-------------

  * IGT: IGT_7102 -> IGTPW_8263
  * Linux: CI_DRM_12522 -> Patchwork_112166v1

  CI-20190529: 20190529
  CI_DRM_12522: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8263: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8263/index.html
  IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112166v1: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f82357cd5260 drm/i915: Fix same object multiple mmap memory leak

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html

--===============8110720853232212727==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix same object multiple mmap memory leak</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112166/">https://patchwork.freedesktop.org/series/112166/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12522 -&gt; Patchwork_112166v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html</p>
<h2>Participating hosts (44 -&gt; 46)</h2>
<p>Additional (2): bat-adlm-1 bat-atsm-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112166v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/bat-adln-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/bat-adln-1/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112166v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@late_gt_pm:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7640">i915#7640</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@i915_selftest@live@execlists.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-apl-guc/igt@i915_selftest@live@execlists.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-kbl-soraka/igt@i915_selftest@live@guc_hang.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7640">i915#7640</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-kbl-soraka/igt@i915_selftest@live@guc_hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7102 -&gt; IGTPW_8263</li>
<li>Linux: CI_DRM_12522 -&gt; Patchwork_112166v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12522: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8263: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8263/index.html<br />
  IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112166v1: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f82357cd5260 drm/i915: Fix same object multiple mmap memory leak</p>

</body>
</html>

--===============8110720853232212727==--
