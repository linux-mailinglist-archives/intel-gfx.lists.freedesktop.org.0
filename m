Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2F9372A3F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 14:41:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109106E22F;
	Tue,  4 May 2021 12:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81DC26E22F;
 Tue,  4 May 2021 12:41:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79F08A47DF;
 Tue,  4 May 2021 12:41:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 04 May 2021 12:41:39 -0000
Message-ID: <162013209947.3295.3324855064604498041@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_DDI_buf_trans_cleaup_and_fixes_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============2050503097=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2050503097==
Content-Type: multipart/alternative;
 boundary="===============0226246099983669920=="

--===============0226246099983669920==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: DDI buf trans cleaup and fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/89311/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10041 -> Patchwork_20061
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/index.html

Known issues
------------

  Here are the changes found in Patchwork_20061 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/fi-kbl-soraka/igt@amdgpu/amd_prime@amd-to-i915.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-tgl-1115g4}:    [FAIL][2] ([i915#1888]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10041/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-y:           [DMESG-FAIL][4] ([i915#2373]) -> [INCOMPLETE][5] ([i915#750])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10041/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750


Participating hosts (46 -> 41)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10041 -> Patchwork_20061

  CI-20190529: 20190529
  CI_DRM_10041: 54c7983f58407208cb3bd82f04112debb4ee3440 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20061: e8816b2c10691631133d8104d2c056f867963b3b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e8816b2c1069 drm/i915: Add the missing adls vswing tables
5b1bb03f7c33 drm/i915: Nuke buf_trans hdmi functions
edbc05ee202f drm/i915: Clean up jsl/ehl buf trans functions
7f03efbc37b6 drm/i915: Fix ehl edp hbr2 vswing table
56b9a07d75d5 drm/i915: Deduplicate icl DP HBR2 vs. eDP HBR3 table
ed4788c769b6 drm/i915: Fix dg1 buf trans tables
bd2188204d3a drm/i915: Introduce rkl_get_combo_buf_trans()
2f814a8d7445 drm/i915: Clean up hsw/bdw/skl/kbl buf trans funcs
8d20186e4a5b drm/i915: Introduce encoder->get_buf_trans()
89125d4782bd drm/i915: Store the HDMI default entry in the bug trans struct
4aefdd5efa28 drm/i915; Return the whole buf_trans struct from get_buf_trans()
1e6b611520e0 drm/i915: Introduce intel_get_buf_trans()
681adec95a5c drm/i915: Wrap the buf trans tables into a struct
c2887df88bd7 drm/i915: Rename dkl phy buf trans tables
92c909de2a5f drm/i915: Wrap the platform specific buf trans structs into a union
f12ad854bbba drm/i915: Introduce hsw_get_buf_trans()
41597e735d81 drm/i915: s/intel/hsw/ for hsw/bde/skl buf trans

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/index.html

--===============0226246099983669920==
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
<tr><td><b>Series:</b></td><td>drm/i915: DDI buf trans cleaup and fixes (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89311/">https://patchwork.freedesktop.org/series/89311/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10041 -&gt; Patchwork_20061</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20061 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_prime@amd-to-i915:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/fi-kbl-soraka/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10041/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10041/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20061/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/750">i915#750</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10041 -&gt; Patchwork_20061</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10041: 54c7983f58407208cb3bd82f04112debb4ee3440 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20061: e8816b2c10691631133d8104d2c056f867963b3b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e8816b2c1069 drm/i915: Add the missing adls vswing tables<br />
5b1bb03f7c33 drm/i915: Nuke buf_trans hdmi functions<br />
edbc05ee202f drm/i915: Clean up jsl/ehl buf trans functions<br />
7f03efbc37b6 drm/i915: Fix ehl edp hbr2 vswing table<br />
56b9a07d75d5 drm/i915: Deduplicate icl DP HBR2 vs. eDP HBR3 table<br />
ed4788c769b6 drm/i915: Fix dg1 buf trans tables<br />
bd2188204d3a drm/i915: Introduce rkl_get_combo_buf_trans()<br />
2f814a8d7445 drm/i915: Clean up hsw/bdw/skl/kbl buf trans funcs<br />
8d20186e4a5b drm/i915: Introduce encoder-&gt;get_buf_trans()<br />
89125d4782bd drm/i915: Store the HDMI default entry in the bug trans struct<br />
4aefdd5efa28 drm/i915; Return the whole buf_trans struct from get_buf_trans()<br />
1e6b611520e0 drm/i915: Introduce intel_get_buf_trans()<br />
681adec95a5c drm/i915: Wrap the buf trans tables into a struct<br />
c2887df88bd7 drm/i915: Rename dkl phy buf trans tables<br />
92c909de2a5f drm/i915: Wrap the platform specific buf trans structs into a union<br />
f12ad854bbba drm/i915: Introduce hsw_get_buf_trans()<br />
41597e735d81 drm/i915: s/intel/hsw/ for hsw/bde/skl buf trans</p>

</body>
</html>

--===============0226246099983669920==--

--===============2050503097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2050503097==--
