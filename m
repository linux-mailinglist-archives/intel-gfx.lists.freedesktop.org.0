Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1579267C2D3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 03:27:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467A510E8DD;
	Thu, 26 Jan 2023 02:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2742F10E8DD;
 Thu, 26 Jan 2023 02:27:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0AC16AADED;
 Thu, 26 Jan 2023 02:27:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8618887915978159996=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 26 Jan 2023 02:27:45 -0000
Message-ID: <167470006500.542.13237969601990050519@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Error/underrun_interrupt_fixes?=
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

--===============8618887915978159996==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Error/underrun interrupt fixes
URL   : https://patchwork.freedesktop.org/series/113353/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12640 -> Patchwork_113353v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-rkl-11600 

Known issues
------------

  Here are the changes found in Patchwork_113353v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-hsw-4770:        NOTRUN -> [SKIP][2] ([fdo#109271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][3] ([i915#7229]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-adlp-9}:       [DMESG-WARN][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][7] ([i915#7911]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@migrate:
    - {bat-dg2-11}:       [DMESG-WARN][9] ([i915#7699]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:
    - fi-bsw-n3050:       [FAIL][11] ([i915#2346]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911


Build changes
-------------

  * Linux: CI_DRM_12640 -> Patchwork_113353v1

  CI-20190529: 20190529
  CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113353v1: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2f1752ce21e5 drm/i915: Mask page table errors on gen2/3 with FBC
9cc4667e1b16 drm/i915: Extract {i9xx, i965)_error_mask()
7c1aade88d3e drm/i915: Dump PGTBL_ER on gen2/3/4 error interrupt
3667dec44110 drm/i915: Undo rmw damage to gen3 error interrupt handler
c74466c4b5e7 drm/i915: Mark FIFO underrun disabled earlier

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/index.html

--===============8618887915978159996==
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
<tr><td><b>Series:</b></td><td>drm/i915: Error/underrun interrupt fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113353/">https://patchwork.freedesktop.org/series/113353/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12640 -&gt; Patchwork_113353v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-rkl-11600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113353v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113353v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12640 -&gt; Patchwork_113353v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113353v1: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2f1752ce21e5 drm/i915: Mask page table errors on gen2/3 with FBC<br />
9cc4667e1b16 drm/i915: Extract {i9xx, i965)_error_mask()<br />
7c1aade88d3e drm/i915: Dump PGTBL_ER on gen2/3/4 error interrupt<br />
3667dec44110 drm/i915: Undo rmw damage to gen3 error interrupt handler<br />
c74466c4b5e7 drm/i915: Mark FIFO underrun disabled earlier</p>

</body>
</html>

--===============8618887915978159996==--
