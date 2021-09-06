Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6C8402085
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 21:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B86D89C29;
	Mon,  6 Sep 2021 19:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CFF989C28;
 Mon,  6 Sep 2021 19:49:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 150DEAADCF;
 Mon,  6 Sep 2021 19:49:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2023099190268272497=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 Sep 2021 19:49:49 -0000
Message-ID: <163095778906.30430.281266378627128882@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906182715.3915100-1-imre.deak@intel.com>
In-Reply-To: <20210906182715.3915100-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp=3A_Add_support_for_remapping_CCS_FBs_=28rev2=29?=
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

--===============2023099190268272497==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adlp: Add support for remapping CCS FBs (rev2)
URL   : https://patchwork.freedesktop.org/series/94108/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10553 -> Patchwork_20968
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/index.html

Known issues
------------

  Here are the changes found in Patchwork_20968 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +18 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][2] ([i915#1602] / [i915#2029])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6600u:       [INCOMPLETE][3] ([i915#198]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-1 


Build changes
-------------

  * IGT: IGT_6197 -> IGTPW_6201
  * Linux: CI_DRM_10553 -> Patchwork_20968

  CI-20190529: 20190529
  CI_DRM_10553: 47b2bd2caa7b29b5741ff2521206657853b85165 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6201: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6201/index.html
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20968: d59a5a203c014fdbd06b4b01215c5f0c1c433fac @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d59a5a203c01 drm/fourcc: Add the ADL-P specific pitch requirements of CCS modifiers
6de7a755ff6b drm/i915/adlp: Add support for remapping CCS FBs
db26d072b678 drm/i915: Follow a new->old platform check order in intel_fb_stride_alignment
69f8d6cd402f drm/i915/adlp: Assert that VMAs in DPT start at 0
f008405ab6cc drm/i915/adlp: Require always a power-of-two sized CCS surface stride
5ea74ea48d04 drm/i915: Use tile block based dimensions for CCS origin x, y check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/index.html

--===============2023099190268272497==
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
<tr><td><b>Series:</b></td><td>drm/i915/adlp: Add support for remapping CCS FBs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94108/">https://patchwork.freedesktop.org/series/94108/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10553 -&gt; Patchwork_20968</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20968 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20968/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6197 -&gt; IGTPW_6201</li>
<li>Linux: CI_DRM_10553 -&gt; Patchwork_20968</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10553: 47b2bd2caa7b29b5741ff2521206657853b85165 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6201: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6201/index.html<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20968: d59a5a203c014fdbd06b4b01215c5f0c1c433fac @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d59a5a203c01 drm/fourcc: Add the ADL-P specific pitch requirements of CCS modifiers<br />
6de7a755ff6b drm/i915/adlp: Add support for remapping CCS FBs<br />
db26d072b678 drm/i915: Follow a new-&gt;old platform check order in intel_fb_stride_alignment<br />
69f8d6cd402f drm/i915/adlp: Assert that VMAs in DPT start at 0<br />
f008405ab6cc drm/i915/adlp: Require always a power-of-two sized CCS surface stride<br />
5ea74ea48d04 drm/i915: Use tile block based dimensions for CCS origin x, y check</p>

</body>
</html>

--===============2023099190268272497==--
