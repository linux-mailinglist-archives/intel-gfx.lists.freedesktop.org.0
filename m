Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 939D8723EB7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 11:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B544B10E328;
	Tue,  6 Jun 2023 09:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 27B7410E337;
 Tue,  6 Jun 2023 09:59:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24250AA01E;
 Tue,  6 Jun 2023 09:59:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1703419605849097974=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 06 Jun 2023 09:59:48 -0000
Message-ID: <168604558814.22674.5718880417965400102@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230605123224.373633-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230605123224.373633-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_the_fdinfo_helper?=
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

--===============1703419605849097974==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use the fdinfo helper
URL   : https://patchwork.freedesktop.org/series/118864/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13228_full -> Patchwork_118864v1_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_118864v1_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_118864v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 6)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_118864v1_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - shard-glk:          [FAIL][1] ([i915#1623]) -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk3/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  
Known issues
------------

  Here are the changes found in Patchwork_118864v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][3] -> [ABORT][4] ([i915#5566])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-apl6/igt@gen9_exec_parse@allowed-single.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271]) +41 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-snb7/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#2346]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4579]) +13 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-snb1/igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][9] ([fdo#109271]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk5/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  
#### Possible fixes ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-glk:          [ABORT][10] ([i915#7461] / [i915#8211]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk6/igt@gem_barrier_race@remote-request@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-apl:          [TIMEOUT][12] ([i915#3063]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-apl7/igt@gem_eio@in-flight-contexts-1us.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-apl2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][14] ([i915#2842]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - {shard-rkl}:        [FAIL][16] ([i915#2842]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-rkl}:        [SKIP][18] ([i915#1397]) -> [PASS][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][20] ([i915#2346]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][22] ([i915#2122]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - {shard-rkl}:        [FAIL][24] ([i915#8292]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292


Build changes
-------------

  * Linux: CI_DRM_13228 -> Patchwork_118864v1

  CI-20190529: 20190529
  CI_DRM_13228: e1c7a0f8d1ad2af33f6c71852b9f2d85a7db32ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7318: c2d8ef8b9397d0976959f29dc1dd7c8a698d65fe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118864v1: e1c7a0f8d1ad2af33f6c71852b9f2d85a7db32ac @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/index.html

--===============1703419605849097974==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use the fdinfo helper</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118864/">https://patchwork.freedesktop.org/series/118864/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13228_full -&gt; Patchwork_118864v1_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_118864v1_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_118864v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (7 -&gt; 6)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_118864v1_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1623">i915#1623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk3/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118864v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-apl6/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-snb7/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-snb1/igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk5/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk6/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-apl7/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-apl2/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13228/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118864v1/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13228 -&gt; Patchwork_118864v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13228: e1c7a0f8d1ad2af33f6c71852b9f2d85a7db32ac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7318: c2d8ef8b9397d0976959f29dc1dd7c8a698d65fe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118864v1: e1c7a0f8d1ad2af33f6c71852b9f2d85a7db32ac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1703419605849097974==--
