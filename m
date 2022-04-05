Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3824F2093
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 03:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63CA010E1D7;
	Tue,  5 Apr 2022 01:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D342C10E1D5;
 Tue,  5 Apr 2022 01:29:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0269AA0EB;
 Tue,  5 Apr 2022 01:29:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4973841277429106346=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 05 Apr 2022 01:29:36 -0000
Message-ID: <164912217681.24158.3316962703298461598@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405001149.2675226-1-lucas.demarchi@intel.com>
In-Reply-To: <20220405001149.2675226-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/uncore=3A_Warn_on_previous_unclaimed_accesses?=
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

--===============4973841277429106346==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/uncore: Warn on previous unclaimed accesses
URL   : https://patchwork.freedesktop.org/series/102167/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11452 -> Patchwork_22778
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/index.html

Participating hosts (46 -> 43)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (4): fi-hsw-4770 bat-rpls-2 fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22778:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {bat-dg2-9}:        [FAIL][1] ([i915#4312]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/bat-dg2-9/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/bat-dg2-9/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22778 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic@modeset:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/fi-tgl-u2/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/fi-tgl-u2/igt@kms_busy@basic@modeset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#5341])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +57 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - bat-dg1-5:          NOTRUN -> [FAIL][7] ([i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/bat-dg1-5/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@dmabuf@all@dma_fence_chain:
    - bat-dg1-6:          [INCOMPLETE][8] ([i915#4154]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/bat-dg1-6/igt@dmabuf@all@dma_fence_chain.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/bat-dg1-6/igt@dmabuf@all@dma_fence_chain.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/fi-tgl-u2/igt@kms_busy@basic@flip.html
    - {bat-adlp-6}:       [DMESG-WARN][12] ([i915#3576]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/bat-adlp-6/igt@kms_busy@basic@flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4154]: https://gitlab.freedesktop.org/drm/intel/issues/4154
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341


Build changes
-------------

  * Linux: CI_DRM_11452 -> Patchwork_22778

  CI-20190529: 20190529
  CI_DRM_11452: 56657b03a34e1e5a744a96b8526f6f11474abb70 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6409: 13700f4a3ffaac3a825fe59b014c7c6c48a0a5f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22778: 2e46b6bf1c90f8e8ca468540ce45a83a31dd0dbc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e46b6bf1c90 drm/i915/uncore: Warn on previous unclaimed accesses

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/index.html

--===============4973841277429106346==
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
<tr><td><b>Series:</b></td><td>drm/i915/uncore: Warn on previous unclaimed accesses</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102167/">https://patchwork.freedesktop.org/series/102167/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11452 -&gt; Patchwork_22778</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/index.html</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (4): fi-hsw-4770 bat-rpls-2 fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22778:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/bat-dg2-9/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/bat-dg2-9/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22778 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/fi-tgl-u2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/fi-tgl-u2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/bat-dg1-6/igt@dmabuf@all@dma_fence_chain.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4154">i915#4154</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/bat-dg1-6/igt@dmabuf@all@dma_fence_chain.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11452 -&gt; Patchwork_22778</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11452: 56657b03a34e1e5a744a96b8526f6f11474abb70 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6409: 13700f4a3ffaac3a825fe59b014c7c6c48a0a5f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22778: 2e46b6bf1c90f8e8ca468540ce45a83a31dd0dbc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2e46b6bf1c90 drm/i915/uncore: Warn on previous unclaimed accesses</p>

</body>
</html>

--===============4973841277429106346==--
