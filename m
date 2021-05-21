Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BED5238BB97
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 03:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A377C6F59A;
	Fri, 21 May 2021 01:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83B356F599;
 Fri, 21 May 2021 01:32:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D0D7A47E9;
 Fri, 21 May 2021 01:32:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 21 May 2021 01:32:07 -0000
Message-ID: <162156072748.6036.9217981748291488931@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210521005209.4058702-1-lucas.demarchi@intel.com>
In-Reply-To: <20210521005209.4058702-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_fix_typo_when_returning_table?=
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
Content-Type: multipart/mixed; boundary="===============0141663101=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0141663101==
Content-Type: multipart/alternative;
 boundary="===============4171832784218830240=="

--===============4171832784218830240==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: fix typo when returning table
URL   : https://patchwork.freedesktop.org/series/90385/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10116 -> Patchwork_20166
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/index.html

Known issues
------------

  Here are the changes found in Patchwork_20166 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][2] ([i915#2782]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u2:          [FAIL][4] ([i915#49]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][6] ([i915#3363]) -> [FAIL][7] ([i915#2426] / [i915#3363])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-cfl-8700k/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-cfl-8700k/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][8] ([i915#2426] / [i915#3363] / [k.org#202321]) -> [FAIL][9] ([i915#3363] / [k.org#202321])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-glk-dsi/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][10] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][11] ([i915#1436] / [i915#3363])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-kbl-soraka/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][12] ([i915#2082] / [i915#2426] / [i915#3363]) -> [FAIL][13] ([i915#3363])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-cml-u2/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-cml-u2/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][14] ([i915#1436] / [i915#3363]) -> [FAIL][15] ([i915#1436] / [i915#2426] / [i915#3363])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-skl-6700k2/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-skl-6700k2/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10116 -> Patchwork_20166

  CI-20190529: 20190529
  CI_DRM_10116: beca532f1c9f49044e5080e547d72548ff50136d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6090: 8eeb9c130e75d4063d0dc2ed69c8acde66b6b5d0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20166: 88e8d46ff0784b3df88878eff653cb57e142019d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

88e8d46ff078 drm/i915/display: fix typo when returning table

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/index.html

--===============4171832784218830240==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: fix typo when returning table</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90385/">https://patchwork.freedesktop.org/series/90385/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10116 -&gt; Patchwork_20166</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20166 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_cs_nop@sync-fork-compute0:<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10116/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20166/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10116 -&gt; Patchwork_20166</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10116: beca532f1c9f49044e5080e547d72548ff50136d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6090: 8eeb9c130e75d4063d0dc2ed69c8acde66b6b5d0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20166: 88e8d46ff0784b3df88878eff653cb57e142019d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>88e8d46ff078 drm/i915/display: fix typo when returning table</p>

</body>
</html>

--===============4171832784218830240==--

--===============0141663101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0141663101==--
