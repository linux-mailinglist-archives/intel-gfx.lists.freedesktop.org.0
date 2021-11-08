Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81142448048
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 14:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB086E837;
	Mon,  8 Nov 2021 13:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14E036E837;
 Mon,  8 Nov 2021 13:25:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D1FEA0078;
 Mon,  8 Nov 2021 13:25:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4906974700176362322=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 08 Nov 2021 13:25:55 -0000
Message-ID: <163637795503.32037.17627035606991575245@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211108123637.929617-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211108123637.929617-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Fix_gem=5Fmadvise_for_ttm+shmem_objects_=28rev2=29?=
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

--===============4906974700176362322==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Fix gem_madvise for ttm+shmem objects (rev2)
URL   : https://patchwork.freedesktop.org/series/96611/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10853 -> Patchwork_21533
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/index.html

Participating hosts (41 -> 35)
------------------------------

  Additional (1): fi-bdw-samus 
  Missing    (7): bat-dg1-6 fi-tgl-u2 fi-bsw-n3050 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 

Known issues
------------

  Here are the changes found in Patchwork_21533 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10853/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][3] -> [DMESG-FAIL][4] ([i915#2927] / [i915#3428])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10853/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bdw-samus:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-bdw-samus/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-bdw-samus:       NOTRUN -> [SKIP][6] ([fdo#109271]) +29 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-bdw-samus/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][8] ([i915#4269]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10853/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Build changes
-------------

  * Linux: CI_DRM_10853 -> Patchwork_21533

  CI-20190529: 20190529
  CI_DRM_10853: 215295e7b0a3deb2015c6d6b343b319e4f6d9a1d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6274: 569de51145fba197a8d93b2417348d47507bf485 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21533: 2407c72a6de4bf3e34d9c6e7b695be685433c006 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2407c72a6de4 drm/i915/gem: Fix gem_madvise for ttm+shmem objects

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/index.html

--===============4906974700176362322==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Fix gem_madvise for ttm+shmem objects (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96611/">https://patchwork.freedesktop.org/series/96611/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10853 -&gt; Patchwork_21533</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/index.html</p>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Additional (1): fi-bdw-samus <br />
  Missing    (7): bat-dg1-6 fi-tgl-u2 fi-bsw-n3050 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21533 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10853/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10853/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bdw-samus:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-bdw-samus/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-bdw-samus:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-bdw-samus/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10853/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10853 -&gt; Patchwork_21533</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10853: 215295e7b0a3deb2015c6d6b343b319e4f6d9a1d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6274: 569de51145fba197a8d93b2417348d47507bf485 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21533: 2407c72a6de4bf3e34d9c6e7b695be685433c006 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2407c72a6de4 drm/i915/gem: Fix gem_madvise for ttm+shmem objects</p>

</body>
</html>

--===============4906974700176362322==--
