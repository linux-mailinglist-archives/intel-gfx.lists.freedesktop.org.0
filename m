Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC383E2F63
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 20:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96FA6E201;
	Fri,  6 Aug 2021 18:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75A626E201;
 Fri,  6 Aug 2021 18:42:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D9C3A47EB;
 Fri,  6 Aug 2021 18:42:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4126343057828518223=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Aug 2021 18:42:49 -0000
Message-ID: <162827536944.27549.8238498526476653144@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
In-Reply-To: <20210805163647.801064-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQmVn?=
 =?utf-8?q?in_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev10=29?=
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

--===============4126343057828518223==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev10)
URL   : https://patchwork.freedesktop.org/series/92135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10457 -> Patchwork_20781
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/index.html

Known issues
------------

  Here are the changes found in Patchwork_20781 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][1] ([i915#1888]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10457 -> Patchwork_20781

  CI-20190529: 20190529
  CI_DRM_10457: 7700f858b68060307b0a7d94377a5d8f64000e5d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6162: 2f32b9e0da5f1ac9529318dd5b836c8cf4d3c441 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20781: c5300668b502fff59ac563d2a7b22f2341bd8c95 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c5300668b502 drm/i915/dg2: Configure PCON in DP pre-enable path
23befa04925d drm/i915/dg2: Maintain backward-compatible nested batch behavior
8c7ca653ac33 drm/i915/dg2: Add new LRI reg offsets
8db8e3b6bca0 drm/i915/xehpsdv: Read correct RP_STATE_CAP register
9793162b05a6 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP
9dd72d6a97d4 drm/i915/xehpsdv: Add compute DSS type
91cde6f62ffc drm/i915/dg2: Report INSTDONE_GEOM values in error state
0ebc963f011d drm/i915/xehp: Loop over all gslices for INSTDONE processing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/index.html

--===============4126343057828518223==
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
<tr><td><b>Series:</b></td><td>Begin enabling Xe_HP SDV and DG2 platforms (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92135/">https://patchwork.freedesktop.org/series/92135/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10457 -&gt; Patchwork_20781</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20781 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20781/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10457 -&gt; Patchwork_20781</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10457: 7700f858b68060307b0a7d94377a5d8f64000e5d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6162: 2f32b9e0da5f1ac9529318dd5b836c8cf4d3c441 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20781: c5300668b502fff59ac563d2a7b22f2341bd8c95 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c5300668b502 drm/i915/dg2: Configure PCON in DP pre-enable path<br />
23befa04925d drm/i915/dg2: Maintain backward-compatible nested batch behavior<br />
8c7ca653ac33 drm/i915/dg2: Add new LRI reg offsets<br />
8db8e3b6bca0 drm/i915/xehpsdv: Read correct RP_STATE_CAP register<br />
9793162b05a6 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP<br />
9dd72d6a97d4 drm/i915/xehpsdv: Add compute DSS type<br />
91cde6f62ffc drm/i915/dg2: Report INSTDONE_GEOM values in error state<br />
0ebc963f011d drm/i915/xehp: Loop over all gslices for INSTDONE processing</p>

</body>
</html>

--===============4126343057828518223==--
