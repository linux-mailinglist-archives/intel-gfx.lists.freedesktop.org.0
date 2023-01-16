Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D9666BD84
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 13:11:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3501010E3DF;
	Mon, 16 Jan 2023 12:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1531110E3DF;
 Mon, 16 Jan 2023 12:11:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D5F7AADDC;
 Mon, 16 Jan 2023 12:11:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9081082136418624969=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 16 Jan 2023 12:11:12 -0000
Message-ID: <167387107204.6371.3589985576982144197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgV2Ug?=
 =?utf-8?q?need_to_have_additional_checks_for_DP_MST_UHBR?=
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

--===============9081082136418624969==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: We need to have additional checks for DP MST UHBR
URL   : https://patchwork.freedesktop.org/series/112876/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12586 -> Patchwork_112876v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/index.html

Participating hosts (44 -> 41)
------------------------------

  Missing    (3): fi-rkl-11600 bat-atsm-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_112876v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@write:
    - fi-blb-e6850:       [PASS][1] -> [SKIP][2] ([fdo#109271]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-blb-e6850/igt@fbdev@write.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-blb-e6850/igt@fbdev@write.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][3] -> [INCOMPLETE][4] ([i915#6972])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][6] ([i915#7229]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][8] -> [PASS][9] +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-rplp-1}:       [SKIP][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/bat-rplp-1/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/bat-rplp-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-adl-ddr5:        [DMESG-WARN][12] ([i915#5591]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
    - {bat-dg2-11}:       [INCOMPLETE][14] ([i915#7834]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][16] ([i915#4983] / [i915#6257]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/bat-rpls-1/igt@i915_selftest@live@requests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-apl-guc:         [DMESG-WARN][18] ([i915#1982]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic:
    - fi-bsw-kefka:       [FAIL][20] ([i915#2346]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6972]: https://gitlab.freedesktop.org/drm/intel/issues/6972
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7834]: https://gitlab.freedesktop.org/drm/intel/issues/7834


Build changes
-------------

  * Linux: CI_DRM_12586 -> Patchwork_112876v1

  CI-20190529: 20190529
  CI_DRM_12586: fa21fb1326b89fe3d376d82a6ce95d7cf0bcefb1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7119: 1e6d24e6dfa42b22f950f7d5e436b8f9acf8747f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112876v1: fa21fb1326b89fe3d376d82a6ce95d7cf0bcefb1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

fc1ec7133c92 drm/i915: Implement UHBR bandwidth check
481c6c5a96b2 drm/i915: Add generic constraint checker when determining DP MST DSC bpp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/index.html

--===============9081082136418624969==
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
<tr><td><b>Series:</b></td><td>We need to have additional checks for DP MST UHBR</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112876/">https://patchwork.freedesktop.org/series/112876/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12586 -&gt; Patchwork_112876v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/index.html</p>
<h2>Participating hosts (44 -&gt; 41)</h2>
<p>Missing    (3): fi-rkl-11600 bat-atsm-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112876v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-blb-e6850/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-blb-e6850/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6972">i915#6972</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/bat-rplp-1/igt@i915_pm_rpm@module-reload.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/bat-rplp-1/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7834">i915#7834</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-apl-guc/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12586/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112876v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12586 -&gt; Patchwork_112876v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12586: fa21fb1326b89fe3d376d82a6ce95d7cf0bcefb1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7119: 1e6d24e6dfa42b22f950f7d5e436b8f9acf8747f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112876v1: fa21fb1326b89fe3d376d82a6ce95d7cf0bcefb1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>fc1ec7133c92 drm/i915: Implement UHBR bandwidth check<br />
481c6c5a96b2 drm/i915: Add generic constraint checker when determining DP MST DSC bpp</p>

</body>
</html>

--===============9081082136418624969==--
