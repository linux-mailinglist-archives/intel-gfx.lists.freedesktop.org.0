Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5BD3F7DE4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 23:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F7F6E42C;
	Wed, 25 Aug 2021 21:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB63C6E42A;
 Wed, 25 Aug 2021 21:42:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2B35A66C8;
 Wed, 25 Aug 2021 21:42:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7744645210679639139=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Aug 2021 21:42:02 -0000
Message-ID: <162992772269.17672.4249179472709371579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629906431.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629906431.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/fdi=3A_refactor_some_fdi_code_out_of_intel=5Fdisplay=2Ec?=
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

--===============7744645210679639139==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fdi: refactor some fdi code out of intel_display.c
URL   : https://patchwork.freedesktop.org/series/94026/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10520 -> Patchwork_20894
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/index.html

Known issues
------------

  Here are the changes found in Patchwork_20894 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][2] -> [FAIL][3] ([i915#1372])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10520/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (40 -> 33)
------------------------------

  Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10520 -> Patchwork_20894

  CI-20190529: 20190529
  CI_DRM_10520: df6d856ea920279c17e875a80fca47a428fd7fcd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6185: 5dca04416f50576f464ebbd9aea96edccd7e4eab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20894: 8e6bd97aa2be037c4bc36c05cf15025a98c5b745 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8e6bd97aa2be drm/i915/fdi: convert BUG()'s to MISSING_CASE()
dd2f514ed896 drm/i915/fdi: move fdi mphy reset and programming to intel_fdi.c
efc363bfa49e drm/i915/fdi: move more FDI stuff to FDI link train hooks
e2f0b2d220b7 drm/i915/fdi: move fdi bc bifurcation functions to intel_fdi.c
b573cd162507 drm/i915/fdi: move intel_update_fdi_pll_freq to intel_fdi.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/index.html

--===============7744645210679639139==
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
<tr><td><b>Series:</b></td><td>drm/i915/fdi: refactor some fdi code out of intel_display.c</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94026/">https://patchwork.freedesktop.org/series/94026/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10520 -&gt; Patchwork_20894</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20894 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10520/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20894/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 33)</h2>
<p>Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10520 -&gt; Patchwork_20894</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10520: df6d856ea920279c17e875a80fca47a428fd7fcd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6185: 5dca04416f50576f464ebbd9aea96edccd7e4eab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20894: 8e6bd97aa2be037c4bc36c05cf15025a98c5b745 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8e6bd97aa2be drm/i915/fdi: convert BUG()'s to MISSING_CASE()<br />
dd2f514ed896 drm/i915/fdi: move fdi mphy reset and programming to intel_fdi.c<br />
efc363bfa49e drm/i915/fdi: move more FDI stuff to FDI link train hooks<br />
e2f0b2d220b7 drm/i915/fdi: move fdi bc bifurcation functions to intel_fdi.c<br />
b573cd162507 drm/i915/fdi: move intel_update_fdi_pll_freq to intel_fdi.c</p>

</body>
</html>

--===============7744645210679639139==--
