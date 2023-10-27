Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8A67D8EDC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 08:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D0E10E92E;
	Fri, 27 Oct 2023 06:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD8E210E92E;
 Fri, 27 Oct 2023 06:40:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6691A0003;
 Fri, 27 Oct 2023 06:40:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0437440969005228560=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhanjun Dong" <zhanjun.dong@intel.com>
Date: Fri, 27 Oct 2023 06:40:47 -0000
Message-ID: <169838884777.19709.2295785040055136700@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231026215444.54880-1-zhanjun.dong@intel.com>
In-Reply-To: <20231026215444.54880-1-zhanjun.dong@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Skip_pxp_init_if_gt_is_wedged?=
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

--===============0437440969005228560==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Skip pxp init if gt is wedged
URL   : https://patchwork.freedesktop.org/series/125658/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13799 -> Patchwork_125658v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/index.html

Participating hosts (36 -> 20)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (17): fi-kbl-7567u bat-adls-5 bat-adlp-9 bat-dg1-5 fi-tgl-1115g4 fi-cfl-guc fi-snb-2520m fi-apl-guc fi-ilk-650 fi-hsw-4770 fi-kbl-guc fi-kbl-x1275 fi-ivb-3770 bat-rplp-1 fi-blb-e6850 fi-bsw-nick bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_125658v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - bat-atsm-1:         NOTRUN -> [DMESG-WARN][1] ([i915#8841]) +4 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][2] ([fdo#109271]) +18 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-atsm-1:         NOTRUN -> [SKIP][3] ([i915#6645])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][4] ([IGT#3])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][5] ([i915#1836])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-atsm-1:         [INCOMPLETE][6] ([i915#9174]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp5:
    - bat-adlp-11:        [DMESG-FAIL][8] ([i915#6868]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html

  * igt@kms_flip@basic-flip-vs-dpms@d-dp5:
    - bat-adlp-11:        [FAIL][10] ([i915#6121]) -> [PASS][11] +1 other test pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#9174]: https://gitlab.freedesktop.org/drm/intel/issues/9174


Build changes
-------------

  * Linux: CI_DRM_13799 -> Patchwork_125658v1

  CI-20190529: 20190529
  CI_DRM_13799: 76ad050e075bcd86919ed755602ded34c0d9e276 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7559: 62ac3d2ddb6005b16df00a36565779848c1390c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125658v1: 76ad050e075bcd86919ed755602ded34c0d9e276 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0466173a1218 drm/i915: Skip pxp init if gt is wedged

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/index.html

--===============0437440969005228560==
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
<tr><td><b>Series:</b></td><td>drm/i915: Skip pxp init if gt is wedged</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125658/">https://patchwork.freedesktop.org/series/125658/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13799 -&gt; Patchwork_125658v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/index.html</p>
<h2>Participating hosts (36 -&gt; 20)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (17): fi-kbl-7567u bat-adls-5 bat-adlp-9 bat-dg1-5 fi-tgl-1115g4 fi-cfl-guc fi-snb-2520m fi-apl-guc fi-ilk-650 fi-hsw-4770 fi-kbl-guc fi-kbl-x1275 fi-ivb-3770 bat-rplp-1 fi-blb-e6850 fi-bsw-nick bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125658v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9174">i915#9174</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125658v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13799 -&gt; Patchwork_125658v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13799: 76ad050e075bcd86919ed755602ded34c0d9e276 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7559: 62ac3d2ddb6005b16df00a36565779848c1390c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125658v1: 76ad050e075bcd86919ed755602ded34c0d9e276 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0466173a1218 drm/i915: Skip pxp init if gt is wedged</p>

</body>
</html>

--===============0437440969005228560==--
