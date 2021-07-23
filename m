Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4F33D42E1
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 00:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669536FD11;
	Fri, 23 Jul 2021 22:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DFE896FD0E;
 Fri, 23 Jul 2021 22:29:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9615A8169;
 Fri, 23 Jul 2021 22:29:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 23 Jul 2021 22:29:05 -0000
Message-ID: <162707934588.3045.8780775800286901350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/10=5D_drm/i915=3A_Check_for_nomodeset_i?=
 =?utf-8?q?n_i915=5Finit=28=29_first?=
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
Content-Type: multipart/mixed; boundary="===============1129307067=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1129307067==
Content-Type: multipart/alternative;
 boundary="===============3793693155065167068=="

--===============3793693155065167068==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/10] drm/i915: Check for nomodeset in i915_init() first
URL   : https://patchwork.freedesktop.org/series/92963/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10382 -> Patchwork_20699
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/index.html

Known issues
------------

  Here are the changes found in Patchwork_20699 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@hangcheck:
    - fi-tgl-u2:          [PASS][3] -> [INCOMPLETE][4] ([i915#750])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][5] ([i915#1436] / [i915#2966])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750


Participating hosts (43 -> 36)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10382 -> Patchwork_20699

  CI-20190529: 20190529
  CI_DRM_10382: 03db07ede8eeeae5fa12cb07684084e531db377b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20699: b9f5c891a63d767f6b0848ab7b81a9d37beac6d1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b9f5c891a63d drm/i915: Remove i915_globals
1a305f249f67 drm/i915: move vma slab to direct module init/exit
802d94da6e2f drm/i915: move scheduler slabs to direct module init/exit
ca5731fa0004 drm/i915: move request slabs to direct module init/exit
e4cdb6d07d58 drm/i915: move gem_objects slab to direct module init/exit
dff81a2d27c3 drm/i915: move gem_context slab to direct module init/exit
4e8510c6d2e3 drm/i915: move intel_context slab to direct module init/exit
837cb156bbe5 drm/i915: move i915_buddy slab to direct module init/exit
c95745397a80 drm/i915: move i915_active slab to direct module init/exit
51abed9a1d96 drm/i915: Check for nomodeset in i915_init() first

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/index.html

--===============3793693155065167068==
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
<tr><td><b>Series:</b></td><td>series starting with [01/10] drm/i915: Check for nomodeset in i915_init() first</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92963/">https://patchwork.freedesktop.org/series/92963/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10382 -&gt; Patchwork_20699</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20699 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/750">i915#750</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20699/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 36)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10382 -&gt; Patchwork_20699</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10382: 03db07ede8eeeae5fa12cb07684084e531db377b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20699: b9f5c891a63d767f6b0848ab7b81a9d37beac6d1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b9f5c891a63d drm/i915: Remove i915_globals<br />
1a305f249f67 drm/i915: move vma slab to direct module init/exit<br />
802d94da6e2f drm/i915: move scheduler slabs to direct module init/exit<br />
ca5731fa0004 drm/i915: move request slabs to direct module init/exit<br />
e4cdb6d07d58 drm/i915: move gem_objects slab to direct module init/exit<br />
dff81a2d27c3 drm/i915: move gem_context slab to direct module init/exit<br />
4e8510c6d2e3 drm/i915: move intel_context slab to direct module init/exit<br />
837cb156bbe5 drm/i915: move i915_buddy slab to direct module init/exit<br />
c95745397a80 drm/i915: move i915_active slab to direct module init/exit<br />
51abed9a1d96 drm/i915: Check for nomodeset in i915_init() first</p>

</body>
</html>

--===============3793693155065167068==--

--===============1129307067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1129307067==--
