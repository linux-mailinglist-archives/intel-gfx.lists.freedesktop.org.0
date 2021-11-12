Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8055D44E29A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 08:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C4D6EACA;
	Fri, 12 Nov 2021 07:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 166DF6EAD0;
 Fri, 12 Nov 2021 07:48:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F8B9AA01E;
 Fri, 12 Nov 2021 07:48:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4224040257333675253=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Fri, 12 Nov 2021 07:48:37 -0000
Message-ID: <163670331704.27230.7872860242295132249@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112071016.9640-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20211112071016.9640-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Check_GuC_status_before_freq_boost?=
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

--===============4224040257333675253==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc/slpc: Check GuC status before freq boost
URL   : https://patchwork.freedesktop.org/series/96844/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10873 -> Patchwork_21570
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/index.html

Participating hosts (28 -> 24)
------------------------------

  Additional (1): fi-kbl-7500u 
  Missing    (5): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_21570 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +28 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [PASS][2] -> [INCOMPLETE][3] ([i915#146])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#533])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4290]: https://gitlab.freedesktop.org/drm/intel/issues/4290
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_10873 -> Patchwork_21570

  CI-20190529: 20190529
  CI_DRM_10873: cc954ce1809b31a952a8262521995ffd6010b124 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6279: 1c70b17877974491273ac3fb1de93ba75309df79 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21570: e8af1d3e4654e512aeb447b228510682512f8839 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e8af1d3e4654 drm/i915/guc/slpc: Check GuC status before freq boost

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/index.html

--===============4224040257333675253==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc/slpc: Check GuC status before freq boost</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96844/">https://patchwork.freedesktop.org/series/96844/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10873 -&gt; Patchwork_21570</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/index.html</p>
<h2>Participating hosts (28 -&gt; 24)</h2>
<p>Additional (1): fi-kbl-7500u <br />
  Missing    (5): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21570 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21570/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10873 -&gt; Patchwork_21570</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10873: cc954ce1809b31a952a8262521995ffd6010b124 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6279: 1c70b17877974491273ac3fb1de93ba75309df79 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21570: e8af1d3e4654e512aeb447b228510682512f8839 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e8af1d3e4654 drm/i915/guc/slpc: Check GuC status before freq boost</p>

</body>
</html>

--===============4224040257333675253==--
