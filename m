Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D72246AC38
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 23:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6E86E91D;
	Mon,  6 Dec 2021 22:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 491F26E91D;
 Mon,  6 Dec 2021 22:36:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40A63A00E8;
 Mon,  6 Dec 2021 22:36:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4698575355047143629=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Mon, 06 Dec 2021 22:36:01 -0000
Message-ID: <163883016125.15874.17317839039069198012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211206215245.513677-1-michael.cheng@intel.com>
In-Reply-To: <20211206215245.513677-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_new_i915_macros_for_checking_PTEs_=28rev7=29?=
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

--===============4698575355047143629==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce new i915 macros for checking PTEs (rev7)
URL   : https://patchwork.freedesktop.org/series/96679/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10965 -> Patchwork_21766
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/index.html

Participating hosts (43 -> 31)
------------------------------

  Missing    (12): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21766 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +35 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][3] -> [INCOMPLETE][4] ([i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-FAIL][7] ([i915#295])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][8] -> [DMESG-WARN][9] ([i915#295]) +10 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][10] ([i915#2426] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-kefka:       [INCOMPLETE][11] ([i915#2539]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][13] ([i915#1888]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [DMESG-FAIL][15] ([i915#2927] / [i915#3428]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2539]: https://gitlab.freedesktop.org/drm/intel/issues/2539
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Build changes
-------------

  * Linux: CI_DRM_10965 -> Patchwork_21766

  CI-20190529: 20190529
  CI_DRM_10965: e9dedc5d0907d96371774cacca10160a167c5cd2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6300: f69bd65fa9f72b7d5e5a5a22981f16d034334761 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21766: fd5845562313775ef6f6ffacced3f330f04ea6bf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fd5845562313 drm/i915: Introduce new macros for i915 PTE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/index.html

--===============4698575355047143629==
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
<tr><td><b>Series:</b></td><td>Introduce new i915 macros for checking PTEs (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96679/">https://patchwork.freedesktop.org/series/96679/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10965 -&gt; Patchwork_21766</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/index.html</p>
<h2>Participating hosts (43 -&gt; 31)</h2>
<p>Missing    (12): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21766 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21766/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10965 -&gt; Patchwork_21766</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10965: e9dedc5d0907d96371774cacca10160a167c5cd2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6300: f69bd65fa9f72b7d5e5a5a22981f16d034334761 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21766: fd5845562313775ef6f6ffacced3f330f04ea6bf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fd5845562313 drm/i915: Introduce new macros for i915 PTE</p>

</body>
</html>

--===============4698575355047143629==--
