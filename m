Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CC73F836F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 09:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E496E89803;
	Thu, 26 Aug 2021 07:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87C09897F9;
 Thu, 26 Aug 2021 07:57:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FD2BAAA91;
 Thu, 26 Aug 2021 07:57:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8334841000718548797=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 07:57:02 -0000
Message-ID: <162996462249.15049.10914035449648888874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826064750.372557-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210826064750.372557-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Register_the_migrate_contexts_with_their_engines?=
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

--===============8334841000718548797==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Register the migrate contexts with their engines
URL   : https://patchwork.freedesktop.org/series/94058/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10522 -> Patchwork_20899
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/index.html

Known issues
------------

  Here are the changes found in Patchwork_20899 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@memory-alloc:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-kbl-soraka/igt@amdgpu/amd_basic@memory-alloc.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-rkl-11600:       [PASS][3] -> [FAIL][4] ([i915#3983])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [INCOMPLETE][5] ([i915#3920]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@modeset:
    - fi-tgl-1115g4:      [DMESG-WARN][7] ([i915#4002]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {fi-dg1-1}:         [INCOMPLETE][9] ([i915#3717]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-dg1-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-dg1-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      [DMESG-WARN][11] ([i915#4002]) -> [DMESG-WARN][12] ([i915#1982] / [i915#4002])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [DMESG-WARN][13] ([i915#4002]) -> [FAIL][14] ([i915#1888])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [DMESG-WARN][15] ([i915#4002]) -> [DMESG-FAIL][16] ([i915#1888])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-1115g4:      [SKIP][17] ([i915#1072]) -> [SKIP][18] ([i915#1072] / [i915#1385])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3920]: https://gitlab.freedesktop.org/drm/intel/issues/3920
  [i915#3983]: https://gitlab.freedesktop.org/drm/intel/issues/3983
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002


Participating hosts (40 -> 34)
------------------------------

  Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10522 -> Patchwork_20899

  CI-20190529: 20190529
  CI_DRM_10522: b9b50258869989a477e7c04ac6d21a6e3660048e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20899: 306736f63ccc3c070436ff48bed3796ad85cf9b7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

306736f63ccc drm/i915/gt: Register the migrate contexts with their engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/index.html

--===============8334841000718548797==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Register the migrate contexts with their engines</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94058/">https://patchwork.freedesktop.org/series/94058/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10522 -&gt; Patchwork_20899</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20899 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-kbl-soraka/igt@amdgpu/amd_basic@memory-alloc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3983">i915#3983</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3920">i915#3920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-dg1-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3717">i915#3717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-dg1-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20899/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10522 -&gt; Patchwork_20899</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10522: b9b50258869989a477e7c04ac6d21a6e3660048e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20899: 306736f63ccc3c070436ff48bed3796ad85cf9b7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>306736f63ccc drm/i915/gt: Register the migrate contexts with their engines</p>

</body>
</html>

--===============8334841000718548797==--
