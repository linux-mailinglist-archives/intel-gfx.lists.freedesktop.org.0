Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B447B6E8405
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 23:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4450110E1F4;
	Wed, 19 Apr 2023 21:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 997A410E1F4;
 Wed, 19 Apr 2023 21:58:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0EB0AADE6;
 Wed, 19 Apr 2023 21:58:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5547643467657398733=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 19 Apr 2023 21:58:09 -0000
Message-ID: <168194148971.10532.13830254287176955993@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230419115449.422214-1-jani.nikula@intel.com>
In-Reply-To: <20230419115449.422214-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/wm=3A_remove_stale_and_unused_ilk=5Fwm=5Fmax=5Flevel=28?=
 =?utf-8?q?=29_declaration?=
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

--===============5547643467657398733==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/wm: remove stale and unused ilk_wm_max_level() declaration
URL   : https://patchwork.freedesktop.org/series/116689/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13029_full -> Patchwork_116689v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (7 -> 7)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116689v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {shard-dg1}:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-17/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-17/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_116689v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-glk:          [PASS][3] -> [ABORT][4] ([i915#8211])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk6/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-apl1/igt@gem_exec_fair@basic-deadline.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-apl6/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2846])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#5334])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk2/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#79])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271]) +39 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-snb5/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1.html

  * igt@perf@stress-open-close@0-rcs0:
    - shard-glk:          [PASS][14] -> [ABORT][15] ([i915#5213])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk2/igt@perf@stress-open-close@0-rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk3/igt@perf@stress-open-close@0-rcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@kms:
    - {shard-dg1}:        [FAIL][16] ([i915#5784]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-16/igt@gem_eio@kms.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-14/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][18] ([i915#2842]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_mmap_offset@clear@smem0:
    - {shard-dg1}:        [DMESG-WARN][20] ([i915#8304]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-15/igt@gem_mmap_offset@clear@smem0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-16/igt@gem_mmap_offset@clear@smem0.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-dg1}:        [SKIP][22] ([i915#1937]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-dg1}:        [SKIP][24] ([i915#1397]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-16/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-14/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-rkl}:        [SKIP][26] ([i915#1397]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-rkl-4/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][28] ([i915#2346]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][30] ([i915#2346]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][32] ([i915#4767]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][34] ([i915#79]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8304]: https://gitlab.freedesktop.org/drm/intel/issues/8304
  [i915#8311]: https://gitlab.freedesktop.org/drm/intel/issues/8311
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8371]: https://gitlab.freedesktop.org/drm/intel/issues/8371


Build changes
-------------

  * Linux: CI_DRM_13029 -> Patchwork_116689v1

  CI-20190529: 20190529
  CI_DRM_13029: 5eae4746072c2d127c8bd21c76036072aec806a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7260: 5a0dab0153d184b4497e5e25305699f76a20b303 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116689v1: 5eae4746072c2d127c8bd21c76036072aec806a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/index.html

--===============5547643467657398733==
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
<tr><td><b>Series:</b></td><td>drm/i915/wm: remove stale and unused ilk_wm_max_level() declaration</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116689/">https://patchwork.freedesktop.org/series/116689/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13029_full -&gt; Patchwork_116689v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116689v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-17/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-17/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116689v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk6/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-apl1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-apl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-snb5/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close@0-rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk2/igt@perf@stress-open-close@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk3/igt@perf@stress-open-close@0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-16/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-14/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-15/igt@gem_mmap_offset@clear@smem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8304">i915#8304</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-16/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-dg1-16/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-dg1-14/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-rkl-4/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13029/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116689v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13029 -&gt; Patchwork_116689v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13029: 5eae4746072c2d127c8bd21c76036072aec806a4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7260: 5a0dab0153d184b4497e5e25305699f76a20b303 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116689v1: 5eae4746072c2d127c8bd21c76036072aec806a4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5547643467657398733==--
