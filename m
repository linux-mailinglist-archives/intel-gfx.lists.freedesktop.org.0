Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CC03671AC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 19:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B846E1B5;
	Wed, 21 Apr 2021 17:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C43B56E1B5;
 Wed, 21 Apr 2021 17:45:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB2B0A363D;
 Wed, 21 Apr 2021 17:45:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 21 Apr 2021 17:45:37 -0000
Message-ID: <161902713776.19927.17043436987677210549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_DDI_buf_trans_cleaup_and_fixes?=
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
Content-Type: multipart/mixed; boundary="===============0838378066=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0838378066==
Content-Type: multipart/alternative;
 boundary="===============1941013547990960452=="

--===============1941013547990960452==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: DDI buf trans cleaup and fixes
URL   : https://patchwork.freedesktop.org/series/89311/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9993 -> Patchwork_19965
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/index.html

Known issues
------------

  Here are the changes found in Patchwork_19965 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][1] ([i915#2292] / [i915#2426] / [k.org#204565])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/fi-cfl-8700k/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-soraka:      [FAIL][2] ([i915#2346]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][4] ([i915#1849] / [i915#3180]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9993 -> Patchwork_19965

  CI-20190529: 20190529
  CI_DRM_9993: 629d3809e6d926c77ba5e9c5405e64eeba564560 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6072: 0a51f49df9f5ca535fc0206a27a6780de6b52320 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19965: 3b7edb1bd0f7046814cef8409b635d5e0f3d2908 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3b7edb1bd0f7 drm/i915: Add the missing adls vswing tables
7b6d286d856b drm/i915: Nuke buf_trans hdmi functions
578e59ec142f drm/i915: Clean up jsl/ehl buf trans functions
87baaa79a82e drm/i915: Fix ehl edp hbr2 vswing table
c02fe1383c62 drm/i915: Deduplicate icl DP HBR2 vs. eDP HBR3 table
6a8d3e2986f0 drm/i915: Fix dg1 buf trans tables
a8fc2844edc9 drm/i915: Introduce rkl_get_combo_buf_trans()
ec6e9e43811f drm/i915: Clean up hsw/bdw/skl/kbl buf trans funcs
2fd199ee08cc drm/i915: Introduce encoder->get_buf_trans()
a4ad121c30b4 drm/i915: Store the HDMI default entry in the bug trans struct
3684eb6e7604 drm/i915; Return the whole buf_trans struct from get_buf_trans()
e90b18869846 drm/i915: Introduce intel_get_buf_trans()
23cb70d43cd2 drm/i915: Wrap the buf trans tables into a struct
cb81a56fecaa drm/i915: Rename dkl phy buf trans tables
16aeb28e7179 drm/i915: Wrap the platform specific buf trans structs into a union
23e893369885 drm/i915: Introduce hsw_get_buf_trans()
1a9fc1bd6978 drm/i915: s/intel/hsw/ for hsw/bde/skl buf trans

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/index.html

--===============1941013547990960452==
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
<tr><td><b>Series:</b></td><td>drm/i915: DDI buf trans cleaup and fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89311/">https://patchwork.freedesktop.org/series/89311/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9993 -&gt; Patchwork_19965</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19965 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=204565">k.org#204565</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19965/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9993 -&gt; Patchwork_19965</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9993: 629d3809e6d926c77ba5e9c5405e64eeba564560 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6072: 0a51f49df9f5ca535fc0206a27a6780de6b52320 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19965: 3b7edb1bd0f7046814cef8409b635d5e0f3d2908 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3b7edb1bd0f7 drm/i915: Add the missing adls vswing tables<br />
7b6d286d856b drm/i915: Nuke buf_trans hdmi functions<br />
578e59ec142f drm/i915: Clean up jsl/ehl buf trans functions<br />
87baaa79a82e drm/i915: Fix ehl edp hbr2 vswing table<br />
c02fe1383c62 drm/i915: Deduplicate icl DP HBR2 vs. eDP HBR3 table<br />
6a8d3e2986f0 drm/i915: Fix dg1 buf trans tables<br />
a8fc2844edc9 drm/i915: Introduce rkl_get_combo_buf_trans()<br />
ec6e9e43811f drm/i915: Clean up hsw/bdw/skl/kbl buf trans funcs<br />
2fd199ee08cc drm/i915: Introduce encoder-&gt;get_buf_trans()<br />
a4ad121c30b4 drm/i915: Store the HDMI default entry in the bug trans struct<br />
3684eb6e7604 drm/i915; Return the whole buf_trans struct from get_buf_trans()<br />
e90b18869846 drm/i915: Introduce intel_get_buf_trans()<br />
23cb70d43cd2 drm/i915: Wrap the buf trans tables into a struct<br />
cb81a56fecaa drm/i915: Rename dkl phy buf trans tables<br />
16aeb28e7179 drm/i915: Wrap the platform specific buf trans structs into a union<br />
23e893369885 drm/i915: Introduce hsw_get_buf_trans()<br />
1a9fc1bd6978 drm/i915: s/intel/hsw/ for hsw/bde/skl buf trans</p>

</body>
</html>

--===============1941013547990960452==--

--===============0838378066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0838378066==--
