Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7930444EE62
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 22:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD956E413;
	Fri, 12 Nov 2021 21:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C3436E413;
 Fri, 12 Nov 2021 21:12:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 921E2AADD2;
 Fri, 12 Nov 2021 21:12:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4872950651982395364=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 12 Nov 2021 21:12:13 -0000
Message-ID: <163675153359.27231.7166190821218894350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Register_define_cleanups?=
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

--===============4872950651982395364==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Register define cleanups
URL   : https://patchwork.freedesktop.org/series/96868/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10877 -> Patchwork_21579
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/index.html

Participating hosts (30 -> 29)
------------------------------

  Additional (2): fi-skl-6700k2 fi-pnv-d510 
  Missing    (3): fi-bsw-cyan bat-dg1-6 bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_21579 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][1] ([fdo#109271]) +28 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#533])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +53 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_10877 -> Patchwork_21579

  CI-20190529: 20190529
  CI_DRM_10877: 688d3ea17a90b4acf51de31ef08cd2b23799952e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6280: 246bfd31dba6bf184b26b170d91d72c90a54be6b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21579: f89511a6ac520ed572057ab4153692b6c59cb1d7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f89511a6ac52 drm/i915: Clean up FPGA_DBG/CLAIM_ER bits
1b63beb57cdd drm/i915: Clean up DPINVGTT/VLV_DPFLIPSTAT bits
8a7681e19c01 drm/i915: Clean up CRC register defines
9f255d46dcb8 drm/i915: Clean up PIPESRC defines
0a96d6cd3a6a drm/i915: Clean up PCH_TRANSCONF/TRANS_DP_CTL bit defines
0a60b5b4e2d5 drm/i915: Clean up PIPECONF bit defines
972a671d657e drm/i915: Clean up SKL_BOTTOM_COLOR defines
d6e456b58dab drm/i915: Clean up PIPEMISC register defines
07e09e2bbe21 drm/i915: Bump DSL linemask to 20 bits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/index.html

--===============4872950651982395364==
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
<tr><td><b>Series:</b></td><td>drm/i915: Register define cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96868/">https://patchwork.freedesktop.org/series/96868/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10877 -&gt; Patchwork_21579</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/index.html</p>
<h2>Participating hosts (30 -&gt; 29)</h2>
<p>Additional (2): fi-skl-6700k2 fi-pnv-d510 <br />
  Missing    (3): fi-bsw-cyan bat-dg1-6 bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21579 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21579/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10877 -&gt; Patchwork_21579</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10877: 688d3ea17a90b4acf51de31ef08cd2b23799952e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6280: 246bfd31dba6bf184b26b170d91d72c90a54be6b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21579: f89511a6ac520ed572057ab4153692b6c59cb1d7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f89511a6ac52 drm/i915: Clean up FPGA_DBG/CLAIM_ER bits<br />
1b63beb57cdd drm/i915: Clean up DPINVGTT/VLV_DPFLIPSTAT bits<br />
8a7681e19c01 drm/i915: Clean up CRC register defines<br />
9f255d46dcb8 drm/i915: Clean up PIPESRC defines<br />
0a96d6cd3a6a drm/i915: Clean up PCH_TRANSCONF/TRANS_DP_CTL bit defines<br />
0a60b5b4e2d5 drm/i915: Clean up PIPECONF bit defines<br />
972a671d657e drm/i915: Clean up SKL_BOTTOM_COLOR defines<br />
d6e456b58dab drm/i915: Clean up PIPEMISC register defines<br />
07e09e2bbe21 drm/i915: Bump DSL linemask to 20 bits</p>

</body>
</html>

--===============4872950651982395364==--
