Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EA14B95D2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 03:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322B510E6E0;
	Thu, 17 Feb 2022 02:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1BE010E6DD;
 Thu, 17 Feb 2022 02:13:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1991AADD4;
 Thu, 17 Feb 2022 02:13:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5143128075496395991=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Date: Thu, 17 Feb 2022 02:13:22 -0000
Message-ID: <164506400291.18053.4904919379639827273@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220215202601.22943-1-manasi.d.navare@intel.com>
In-Reply-To: <20220215202601.22943-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/vrr=3A_Reset_VRR_capable_property_on_a_long_hpd_?=
 =?utf-8?b?KHJldjMp?=
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

--===============5143128075496395991==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/vrr: Reset VRR capable property on a long hpd (rev3)
URL   : https://patchwork.freedesktop.org/series/98801/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11238 -> Patchwork_22288
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22288 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22288, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/index.html

Participating hosts (46 -> 18)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_22288 prevented too many machines from booting.

  Additional (1): fi-pnv-d510 
  Missing    (29): fi-kbl-soraka fi-bdw-gvtdvm fi-apl-guc fi-snb-2520m fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u shard-tglu fi-bsw-n3050 fi-glk-dsi fi-ilk-650 fi-kbl-7500u fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-skl-guc fi-cfl-8700k fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 

Known issues
------------

  Here are the changes found in Patchwork_22288 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +57 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [INCOMPLETE][2] ([i915#4898]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][4] ([i915#2867]) -> [PASS][5] +16 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][6] ([i915#4957]) -> [DMESG-FAIL][7] ([i915#4494] / [i915#4957])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11238 -> Patchwork_22288

  CI-20190529: 20190529
  CI_DRM_11238: e141e36b2871c529379f7ec7d5d6ebae3137a51b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22288: eceba9ce68898bc001ec05d1def1faa45833aa0d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eceba9ce6889 drm/i915/display/vrr: Reset VRR capable property on a long hpd

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/index.html

--===============5143128075496395991==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/vrr: Reset VRR capable property on a long hpd (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98801/">https://patchwork.freedesktop.org/series/98801/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11238 -&gt; Patchwork_22288</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22288 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22288, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/index.html</p>
<h2>Participating hosts (46 -&gt; 18)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_22288 prevented too many machines from booting.</p>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (29): fi-kbl-soraka fi-bdw-gvtdvm fi-apl-guc fi-snb-2520m fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u shard-tglu fi-bsw-n3050 fi-glk-dsi fi-ilk-650 fi-kbl-7500u fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-skl-guc fi-cfl-8700k fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22288 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-userptr:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4898">i915#4898</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +16 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22288/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11238 -&gt; Patchwork_22288</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11238: e141e36b2871c529379f7ec7d5d6ebae3137a51b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22288: eceba9ce68898bc001ec05d1def1faa45833aa0d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>eceba9ce6889 drm/i915/display/vrr: Reset VRR capable property on a long hpd</p>

</body>
</html>

--===============5143128075496395991==--
