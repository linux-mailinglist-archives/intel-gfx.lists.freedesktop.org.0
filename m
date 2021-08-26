Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 729073F8A72
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 16:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B71B6E86C;
	Thu, 26 Aug 2021 14:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 785776E86C;
 Thu, 26 Aug 2021 14:51:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7056EA008A;
 Thu, 26 Aug 2021 14:51:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4681114331113512023=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 14:51:57 -0000
Message-ID: <162998951743.15049.2770329031501900756@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826104514.400352-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210826104514.400352-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Register_the_migrate_contexts_with_their_engines_?=
 =?utf-8?b?KHJldjIp?=
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

--===============4681114331113512023==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Register the migrate contexts with their engines (rev2)
URL   : https://patchwork.freedesktop.org/series/94058/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10525 -> Patchwork_20902
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/index.html

Known issues
------------

  Here are the changes found in Patchwork_20902 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][2] -> [DMESG-WARN][3] ([i915#3958])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {fi-dg1-1}:         [INCOMPLETE][4] ([i915#3717]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-dg1-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/fi-dg1-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958


Participating hosts (40 -> 33)
------------------------------

  Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10525 -> Patchwork_20902

  CI-20190529: 20190529
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20902: c3a760daf2a2b36d07c1ce110c988fda0bd1d16a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c3a760daf2a2 drm/i915/gt: Register the migrate contexts with their engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/index.html

--===============4681114331113512023==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Register the migrate contexts with their engines (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94058/">https://patchwork.freedesktop.org/series/94058/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10525 -&gt; Patchwork_20902</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20902 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:<ul>
<li>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-dg1-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3717">i915#3717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20902/fi-dg1-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 33)</h2>
<p>Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10525 -&gt; Patchwork_20902</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20902: c3a760daf2a2b36d07c1ce110c988fda0bd1d16a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c3a760daf2a2 drm/i915/gt: Register the migrate contexts with their engines</p>

</body>
</html>

--===============4681114331113512023==--
