Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D18693D39F2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 14:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359846E969;
	Fri, 23 Jul 2021 12:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B01E6E969;
 Fri, 23 Jul 2021 12:11:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A5A4A47DB;
 Fri, 23 Jul 2021 12:11:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 23 Jul 2021 12:11:19 -0000
Message-ID: <162704227921.3044.8910538819683944683@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723083457.696939-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210723083457.696939-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/plane=3A_remove_drm=5Fhelper=5F?=
 =?utf-8?q?get=5Fplane=5Fdamage=5Fclips?=
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
Content-Type: multipart/mixed; boundary="===============1475086659=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1475086659==
Content-Type: multipart/alternative;
 boundary="===============3271477589407419555=="

--===============3271477589407419555==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/plane: remove drm_helper_get_plane_damage_clips
URL   : https://patchwork.freedesktop.org/series/92926/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10377 -> Patchwork_20691
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/index.html

Known issues
------------

  Here are the changes found in Patchwork_20691 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-apl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][2] ([i915#1610])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][3] ([i915#2426] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/fi-apl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-tgl-1115g4}:    [FAIL][4] ([i915#1888]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10377/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363


Participating hosts (43 -> 36)
------------------------------

  Additional (1): fi-apl-guc 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10377 -> Patchwork_20691

  CI-20190529: 20190529
  CI_DRM_10377: 4d78197ace2ea28cfd1adce0977130c8c70a8e12 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6148: 784dca328ac03b97da517008103b903eca100170 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20691: ba232875c03e37a40484bd07e9430d53f604ba7b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ba232875c03e drm/plane: Move drm_plane_enable_fb_damage_clips into core
3a54b2ebca33 drm/plane: check that fb_damage is set up when used
61c19aef0e1c drm/plane: remove drm_helper_get_plane_damage_clips

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/index.html

--===============3271477589407419555==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/plane: remove drm_helper_get_plane_damage_clips</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92926/">https://patchwork.freedesktop.org/series/92926/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10377 -&gt; Patchwork_20691</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20691 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10377/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20691/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 36)</h2>
<p>Additional (1): fi-apl-guc <br />
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10377 -&gt; Patchwork_20691</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10377: 4d78197ace2ea28cfd1adce0977130c8c70a8e12 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6148: 784dca328ac03b97da517008103b903eca100170 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20691: ba232875c03e37a40484bd07e9430d53f604ba7b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ba232875c03e drm/plane: Move drm_plane_enable_fb_damage_clips into core<br />
3a54b2ebca33 drm/plane: check that fb_damage is set up when used<br />
61c19aef0e1c drm/plane: remove drm_helper_get_plane_damage_clips</p>

</body>
</html>

--===============3271477589407419555==--

--===============1475086659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1475086659==--
