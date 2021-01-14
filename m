Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2CB2F6CC5
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 22:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 709EC6E14B;
	Thu, 14 Jan 2021 21:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A7E96E141;
 Thu, 14 Jan 2021 21:01:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 145A1A008A;
 Thu, 14 Jan 2021 21:01:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 Jan 2021 21:01:41 -0000
Message-ID: <161065810107.19649.16088269663233577874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210114135612.13210-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210114135612.13210-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Mark_up_protected_?=
 =?utf-8?q?uses_of_=27i915=5Frequest=5Fcompleted=27?=
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
Content-Type: multipart/mixed; boundary="===============0722493144=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0722493144==
Content-Type: multipart/alternative;
 boundary="===============8443308138150894686=="

--===============8443308138150894686==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/5] drm/i915: Mark up protected uses of 'i915_request_completed'
URL   : https://patchwork.freedesktop.org/series/85871/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9612 -> Patchwork_19359
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/index.html

Known issues
------------

  Here are the changes found in Patchwork_19359 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@fbdev@read.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-tgl-y/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-snb-2600:        [PASS][4] -> [DMESG-WARN][5] ([i915#2772])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][6] -> [DMESG-WARN][7] ([i915#2605])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-snb-2600:        NOTRUN -> [FAIL][8] ([i915#698])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-snb-2600/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2772]: https://gitlab.freedesktop.org/drm/intel/issues/2772
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698


Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-byt-j1900 fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9612 -> Patchwork_19359

  CI-20190529: 20190529
  CI_DRM_9612: 3d921d1ad818c1aabb5b2bd3f0861df99e49be9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19359: 9c8dc1c949fc7275c07e0e66d941626d552cd192 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9c8dc1c949fc drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
c86145af0baa drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
f2037c8f347c drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
abefdc5fe6d9 drm/i915: Drop i915_request.lock serialisation around await_start
543d06eaf73f drm/i915: Mark up protected uses of 'i915_request_completed'

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/index.html

--===============8443308138150894686==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/5] drm/i915: Mark up protected uses of &#39;i915_request_completed&#39;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85871/">https://patchwork.freedesktop.org/series/85871/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9612 -&gt; Patchwork_19359</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19359 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2772">i915#2772</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/698">i915#698</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19359/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-byt-j1900 fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9612 -&gt; Patchwork_19359</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9612: 3d921d1ad818c1aabb5b2bd3f0861df99e49be9b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19359: 9c8dc1c949fc7275c07e0e66d941626d552cd192 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9c8dc1c949fc drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()<br />
c86145af0baa drm/i915/gem: Reduce ctx-&gt;engines_mutex for get_engines()<br />
f2037c8f347c drm/i915/gem: Reduce ctx-&gt;engine_mutex for reading the clone source<br />
abefdc5fe6d9 drm/i915: Drop i915_request.lock serialisation around await_start<br />
543d06eaf73f drm/i915: Mark up protected uses of 'i915_request_completed'</p>

</body>
</html>

--===============8443308138150894686==--

--===============0722493144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0722493144==--
