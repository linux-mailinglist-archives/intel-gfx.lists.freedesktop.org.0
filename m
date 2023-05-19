Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71833709D90
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 19:10:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AB110E5B6;
	Fri, 19 May 2023 17:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1B0110E542;
 Fri, 19 May 2023 17:10:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAE51AA3D8;
 Fri, 19 May 2023 17:10:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7200636591811075750=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cong Liu" <liucong2@kylinos.cn>
Date: Fri, 19 May 2023 17:10:24 -0000
Message-ID: <168451622473.26992.7310364691925061583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230508085016.437836-1-liucong2@kylinos.cn>
In-Reply-To: <20230508085016.437836-1-liucong2@kylinos.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_memory_leaks_in_function_live=5Fnop=5Fswitch_=28re?=
 =?utf-8?b?djMp?=
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

--===============7200636591811075750==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix memory leaks in function live_nop_switch (rev3)
URL   : https://patchwork.freedesktop.org/series/117458/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13166_full -> Patchwork_117458v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (7 -> 7)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_117458v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4] ([i915#7790])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-snb4/igt@i915_pm_rps@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-snb1/igt@i915_pm_rps@reset.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2122]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4579]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-snb7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271]) +68 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-snb5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1.html

  
#### Possible fixes ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - {shard-rkl}:        [ABORT][9] ([i915#7461] / [i915#8211]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-rkl-7/igt@gem_barrier_race@remote-request@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-rkl-3/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - {shard-tglu}:       [TIMEOUT][11] ([i915#3778]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-tglu-8/igt@gem_exec_endless@dispatch@vecs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-tglu-5/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-snb:          [ABORT][13] ([i915#5161]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - {shard-dg1}:        [FAIL][15] ([i915#3591]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][17] ([i915#2346]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - {shard-tglu}:       [FAIL][19] ([i915#4767]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][21] ([i915#79]) -> [PASS][22] +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@perf_pmu@idle@rcs0:
    - {shard-rkl}:        [FAIL][23] ([i915#4349]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-rkl-2/igt@perf_pmu@idle@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-rkl-3/igt@perf_pmu@idle@rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211


Build changes
-------------

  * Linux: CI_DRM_13166 -> Patchwork_117458v3

  CI-20190529: 20190529
  CI_DRM_13166: d517ff66aa5fd8e8fd71831eb218aa6d1bb1a3c5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7296: f58eaf30c30c1cc9f00c8b5c596ee5c94d054198 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117458v3: d517ff66aa5fd8e8fd71831eb218aa6d1bb1a3c5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/index.html

--===============7200636591811075750==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix memory leaks in function live_nop_switch (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117458/">https://patchwork.freedesktop.org/series/117458/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13166_full -&gt; Patchwork_117458v3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117458v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-snb1/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-snb7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-snb5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +68 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-rkl-7/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-rkl-3/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-tglu-8/igt@gem_exec_endless@dispatch@vecs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-tglu-5/igt@gem_exec_endless@dispatch@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13166/shard-rkl-2/igt@perf_pmu@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117458v3/shard-rkl-3/igt@perf_pmu@idle@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13166 -&gt; Patchwork_117458v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13166: d517ff66aa5fd8e8fd71831eb218aa6d1bb1a3c5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7296: f58eaf30c30c1cc9f00c8b5c596ee5c94d054198 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117458v3: d517ff66aa5fd8e8fd71831eb218aa6d1bb1a3c5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7200636591811075750==--
