Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68254653F23
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 12:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B11810E03D;
	Thu, 22 Dec 2022 11:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EC3C10E03D;
 Thu, 22 Dec 2022 11:39:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 876FDAADD6;
 Thu, 22 Dec 2022 11:39:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8115137168406098410=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 22 Dec 2022 11:39:56 -0000
Message-ID: <167170919652.14835.15922960142594844229@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221221193031.687266-1-John.C.Harrison@Intel.com>
In-Reply-To: <20221221193031.687266-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?es_for_various_UC_related_issues_=28rev2=29?=
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

--===============8115137168406098410==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes for various UC related issues (rev2)
URL   : https://patchwork.freedesktop.org/series/112080/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12521 -> Patchwork_112080v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): bat-atsm-1 

Known issues
------------

  Here are the changes found in Patchwork_112080v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2] ([i915#4785])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4] ([i915#7640])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#4312] / [i915#5594])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][6] ([i915#4983]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-rpls-2/igt@i915_selftest@live@reset.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7640]: https://gitlab.freedesktop.org/drm/intel/issues/7640


Build changes
-------------

  * Linux: CI_DRM_12521 -> Patchwork_112080v2

  CI-20190529: 20190529
  CI_DRM_12521: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7101: bd33b4c060eb6b2e24c5784b2aa817ae5840f84f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112080v2: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d7dfa2110237 drm/i915/uc: Fix two issues with over-size firmware files
4de2218ab8fa drm/i915/guc: Fix a static analysis warning
d860452a25d2 drm/i915/guc: Fix missing return code checks in submission init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/index.html

--===============8115137168406098410==
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
<tr><td><b>Series:</b></td><td>Fixes for various UC related issues (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112080/">https://patchwork.freedesktop.org/series/112080/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12521 -&gt; Patchwork_112080v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): bat-atsm-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112080v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7640">i915#7640</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112080v2/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12521 -&gt; Patchwork_112080v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12521: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7101: bd33b4c060eb6b2e24c5784b2aa817ae5840f84f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112080v2: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d7dfa2110237 drm/i915/uc: Fix two issues with over-size firmware files<br />
4de2218ab8fa drm/i915/guc: Fix a static analysis warning<br />
d860452a25d2 drm/i915/guc: Fix missing return code checks in submission init</p>

</body>
</html>

--===============8115137168406098410==--
