Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B80349A40
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 20:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0596E096;
	Thu, 25 Mar 2021 19:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A5C96E096;
 Thu, 25 Mar 2021 19:28:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2266AA0003;
 Thu, 25 Mar 2021 19:28:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 25 Mar 2021 19:28:57 -0000
Message-ID: <161670053711.15546.9182587440439878869@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325004415.17432-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210325004415.17432-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Fix_transposed_argument?=
 =?utf-8?q?s_to_skl=5Fplane=5Fwm=5Flevel=28=29?=
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
Content-Type: multipart/mixed; boundary="===============1677234515=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1677234515==
Content-Type: multipart/alternative;
 boundary="===============2696578630932093397=="

--===============2696578630932093397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Fix transposed arguments to skl_plane_wm_level()
URL   : https://patchwork.freedesktop.org/series/88420/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9895 -> Patchwork_19851
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/index.html

Known issues
------------

  Here are the changes found in Patchwork_19851 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-tgl-y/igt@fbdev@read.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +24 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#1886] / [i915#2291])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([i915#1372])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#533])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#2411] / [i915#402]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][12] ([i915#402]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3278]: https://gitlab.freedesktop.org/drm/intel/issues/3278
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (46 -> 42)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9895 -> Patchwork_19851

  CI-20190529: 20190529
  CI_DRM_9895: bb187b1b292c637c3ef195f46d6e5c74f60df8f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6046: e76039273b1524147c43dba061756f06003d56ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19851: bb530435a8e128e1d2d7b292efea3289d3b63b82 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bb530435a8e1 drm/i915: Stop adding planes to the commit needlessly
f91462ea538d drm/i915: Fix transposed arguments to skl_plane_wm_level()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/index.html

--===============2696578630932093397==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Fix transposed arguments to skl_plane_wm_level()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88420/">https://patchwork.freedesktop.org/series/88420/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9895 -&gt; Patchwork_19851</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19851 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19851/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9895 -&gt; Patchwork_19851</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9895: bb187b1b292c637c3ef195f46d6e5c74f60df8f4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6046: e76039273b1524147c43dba061756f06003d56ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19851: bb530435a8e128e1d2d7b292efea3289d3b63b82 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bb530435a8e1 drm/i915: Stop adding planes to the commit needlessly<br />
f91462ea538d drm/i915: Fix transposed arguments to skl_plane_wm_level()</p>

</body>
</html>

--===============2696578630932093397==--

--===============1677234515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1677234515==--
