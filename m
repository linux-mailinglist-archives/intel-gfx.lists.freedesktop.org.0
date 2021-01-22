Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292883009E7
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 18:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B486E9F0;
	Fri, 22 Jan 2021 17:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F304D89FA0;
 Fri, 22 Jan 2021 17:38:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB793A8169;
 Fri, 22 Jan 2021 17:38:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 Jan 2021 17:38:09 -0000
Message-ID: <161133708993.14036.3061294465789808960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122114625.29098-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210122114625.29098-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Check_for_engine-reset_errors_in_the_middle_?=
 =?utf-8?q?of_workarounds?=
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
Content-Type: multipart/mixed; boundary="===============1622630836=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1622630836==
Content-Type: multipart/alternative;
 boundary="===============3175191174724118178=="

--===============3175191174724118178==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Check for engine-reset errors in the middle of workarounds
URL   : https://patchwork.freedesktop.org/series/86179/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9670 -> Patchwork_19457
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/index.html

Known issues
------------

  Here are the changes found in Patchwork_19457 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][4] ([i915#142] / [i915#2405]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@vgem_basic@setversion.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/fi-tgl-y/igt@vgem_basic@setversion.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9670 -> Patchwork_19457

  CI-20190529: 20190529
  CI_DRM_9670: 85fd189b9fbfb6e7af8d956d37be012fdd6ae0ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19457: 7b40678254358a12a52f0ad7f6441344260b1654 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7b4067825435 drm/i915/selftests: Check for engine-reset errors in the middle of workarounds

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/index.html

--===============3175191174724118178==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Check for engine-reset errors in the middle of workarounds</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86179/">https://patchwork.freedesktop.org/series/86179/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9670 -&gt; Patchwork_19457</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19457 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9670 -&gt; Patchwork_19457</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9670: 85fd189b9fbfb6e7af8d956d37be012fdd6ae0ad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19457: 7b40678254358a12a52f0ad7f6441344260b1654 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7b4067825435 drm/i915/selftests: Check for engine-reset errors in the middle of workarounds</p>

</body>
</html>

--===============3175191174724118178==--

--===============1622630836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1622630836==--
