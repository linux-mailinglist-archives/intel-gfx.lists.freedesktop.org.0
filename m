Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4601048C103
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 10:31:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 994261134FA;
	Wed, 12 Jan 2022 09:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07E221134F9;
 Wed, 12 Jan 2022 09:31:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03442AADD2;
 Wed, 12 Jan 2022 09:31:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3265158827720263005=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 12 Jan 2022 09:31:50 -0000
Message-ID: <164197991098.21761.3193401232626221688@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1641977368.git.jani.nikula@intel.com>
In-Reply-To: <cover.1641977368.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?b?L2k5MTU6IGNsZWFuIHVwIGk5MTVfZHJ2LmgsIHBhcnQgMiwgdGFrZSAyLi4u?=
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

--===============3265158827720263005==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: clean up i915_drv.h, part 2, take 2...
URL   : https://patchwork.freedesktop.org/series/98780/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11069 -> Patchwork_21977
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/index.html

Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-adlp-4 fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_21977 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-ilk-650:         [PASS][1] -> [FAIL][2] ([i915#4684])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-ilk-650/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-ilk-650/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-cfl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271]) +26 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][4] -> [INCOMPLETE][5] ([i915#146])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][6] -> [INCOMPLETE][7] ([i915#4547])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#295]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-cfl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#533])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][12] ([i915#2722] / [i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-tgl-1115g4:      [FAIL][13] ([i915#1888]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4684]: https://gitlab.freedesktop.org/drm/intel/issues/4684
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11069 -> Patchwork_21977

  CI-20190529: 20190529
  CI_DRM_11069: fd4f1b6004407e645951f719524b404211ba101d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21977: 053eeffdee44217632c5e812a414c4432babd35b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

053eeffdee44 drm/i915: split out gem/i915_gem_domain.h from i915_drv.h
11d91d8d6869 drm/i915: split out gem/i915_gem_create.h from i915_drv.h
cf8ab18d3fe4 drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
9f784bea9fa1 drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
41a85094d2e1 drm/i915: split out i915_gem_internal.h from i915_drv.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/index.html

--===============3265158827720263005==
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
<tr><td><b>Series:</b></td><td>drm/i915: clean up i915_drv.h, part 2, take 2...</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98780/">https://patchwork.freedesktop.org/series/98780/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11069 -&gt; Patchwork_21977</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/index.html</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan bat-adlp-4 fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21977 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-ilk-650/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-ilk-650/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4684">i915#4684</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11069/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21977/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11069 -&gt; Patchwork_21977</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11069: fd4f1b6004407e645951f719524b404211ba101d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21977: 053eeffdee44217632c5e812a414c4432babd35b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>053eeffdee44 drm/i915: split out gem/i915_gem_domain.h from i915_drv.h<br />
11d91d8d6869 drm/i915: split out gem/i915_gem_create.h from i915_drv.h<br />
cf8ab18d3fe4 drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h<br />
9f784bea9fa1 drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h<br />
41a85094d2e1 drm/i915: split out i915_gem_internal.h from i915_drv.h</p>

</body>
</html>

--===============3265158827720263005==--
