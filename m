Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A39333F2274
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 23:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372D16E9E2;
	Thu, 19 Aug 2021 21:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B171F6E9E1;
 Thu, 19 Aug 2021 21:49:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AACDEAADDA;
 Thu, 19 Aug 2021 21:49:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6590851489210701648=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Aug 2021 21:49:28 -0000
Message-ID: <162940976867.746.15277363165180004972@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210819210349.95103-1-lucas.demarchi@intel.com>
In-Reply-To: <20210819210349.95103-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg1=3A_remove_=5F=5Fmaybe=5Funused_leftover?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6590851489210701648==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg1: remove __maybe_unused leftover
URL   : https://patchwork.freedesktop.org/series/93842/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10499 -> Patchwork_20857
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/index.html

Known issues
------------

  Here are the changes found in Patchwork_20857 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-1115g4:      [PASS][1] -> [DMESG-WARN][2] ([i915#4002]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#3958])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      [DMESG-WARN][5] ([i915#4002]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-rkl-11600:       [SKIP][9] -> [PASS][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_prop_blob@basic:
    - fi-tgl-1115g4:      [DMESG-WARN][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@kms_prop_blob@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@kms_prop_blob@basic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][13] ([i915#1888]) -> [DMESG-WARN][14] ([i915#4002])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-1115g4:      [SKIP][15] ([fdo#111827] / [i915#1385]) -> [SKIP][16] ([fdo#111827])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-1115g4:      [SKIP][17] ([i915#1072] / [i915#1385]) -> [SKIP][18] ([i915#1072])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750


Participating hosts (42 -> 34)
------------------------------

  Missing    (8): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-cfl-guc fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10499 -> Patchwork_20857

  CI-20190529: 20190529
  CI_DRM_10499: 31a08664127ff61b69d9e540ebf153eb7493d2ae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6179: e41ebfddab3031b7765cc7cbcbf73b03c3c46bd1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20857: 754fb3718f630560778f4c513f4fb5aaec39565e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

754fb3718f63 drm/i915/dg1: remove __maybe_unused leftover

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/index.html

--===============6590851489210701648==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg1: remove __maybe_unused leftover</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93842/">https://patchwork.freedesktop.org/series/93842/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10499 -&gt; Patchwork_20857</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20857 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@basic:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@kms_prop_blob@basic.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@kms_prop_blob@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20857/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 34)</h2>
<p>Missing    (8): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-cfl-guc fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10499 -&gt; Patchwork_20857</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10499: 31a08664127ff61b69d9e540ebf153eb7493d2ae @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6179: e41ebfddab3031b7765cc7cbcbf73b03c3c46bd1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20857: 754fb3718f630560778f4c513f4fb5aaec39565e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>754fb3718f63 drm/i915/dg1: remove __maybe_unused leftover</p>

</body>
</html>

--===============6590851489210701648==--
