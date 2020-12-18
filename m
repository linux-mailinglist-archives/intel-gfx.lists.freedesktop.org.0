Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB292DE2EC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 13:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 872EA6E0AA;
	Fri, 18 Dec 2020 12:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA5736E096;
 Fri, 18 Dec 2020 12:48:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2944A0BA8;
 Fri, 18 Dec 2020 12:48:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 18 Dec 2020 12:48:54 -0000
Message-ID: <160829573469.27179.17355766646376005531@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201218091944.32417-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201218091944.32417-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_for_rq-=3Ehwsp_validity_after_acquiring_RCU_lock?=
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
Content-Type: multipart/mixed; boundary="===============1485351577=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1485351577==
Content-Type: multipart/alternative;
 boundary="===============8011812322960056125=="

--===============8011812322960056125==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Check for rq->hwsp validity after acquiring RCU lock
URL   : https://patchwork.freedesktop.org/series/85071/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9503 -> Patchwork_19175
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19175 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19175, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19175:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-ivb-3770/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-ivb-3770/igt@i915_selftest@live@gt_timelines.html
    - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-snb-2520m/igt@i915_selftest@live@gt_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-snb-2520m/igt@i915_selftest@live@gt_timelines.html
    - fi-byt-j1900:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-byt-j1900/igt@i915_selftest@live@gt_timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-byt-j1900/igt@i915_selftest@live@gt_timelines.html
    - fi-hsw-4770:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-hsw-4770/igt@i915_selftest@live@gt_timelines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-hsw-4770/igt@i915_selftest@live@gt_timelines.html
    - fi-bwr-2160:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-bwr-2160/igt@i915_selftest@live@gt_timelines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-bwr-2160/igt@i915_selftest@live@gt_timelines.html
    - fi-snb-2600:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-snb-2600/igt@i915_selftest@live@gt_timelines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-snb-2600/igt@i915_selftest@live@gt_timelines.html
    - fi-ilk-650:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-ilk-650/igt@i915_selftest@live@gt_timelines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-ilk-650/igt@i915_selftest@live@gt_timelines.html
    - fi-elk-e7500:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-elk-e7500/igt@i915_selftest@live@gt_timelines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-elk-e7500/igt@i915_selftest@live@gt_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_19175 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-pnv-d510:        [PASS][17] -> [INCOMPLETE][18] ([i915#299])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-pnv-d510/igt@i915_selftest@live@gt_timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-pnv-d510/igt@i915_selftest@live@gt_timelines.html
    - fi-gdg-551:         [PASS][19] -> [INCOMPLETE][20] ([i915#172])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-gdg-551/igt@i915_selftest@live@gt_timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-gdg-551/igt@i915_selftest@live@gt_timelines.html

  
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299


Participating hosts (42 -> 11)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_19175 prevented too many machines from booting.

  Missing    (31): fi-kbl-soraka fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-bsw-n3050 fi-tgl-u2 fi-glk-dsi fi-kbl-7500u fi-tgl-y fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ilk-m540 fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9503 -> Patchwork_19175

  CI-20190529: 20190529
  CI_DRM_9503: 82c5c0ad8d578504865837b2135b60dd2d0054a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5909: 3d6caf71a3e988cd125eb9efdd0a7cdcd0451673 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19175: eda31dae251767aa255796fbca58a83c9f523f0a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eda31dae2517 drm/i915: Check for rq->hwsp validity after acquiring RCU lock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/index.html

--===============8011812322960056125==
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
<tr><td><b>Series:</b></td><td>drm/i915: Check for rq-&gt;hwsp validity after acquiring RCU lock</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85071/">https://patchwork.freedesktop.org/series/85071/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9503 -&gt; Patchwork_19175</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19175 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19175, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19175:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-ivb-3770/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-ivb-3770/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-snb-2520m/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-snb-2520m/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-byt-j1900/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-byt-j1900/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-hsw-4770/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-hsw-4770/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-bwr-2160/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-bwr-2160/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-snb-2600/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-snb-2600/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-ilk-650/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-ilk-650/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-elk-e7500/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-elk-e7500/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19175 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-pnv-d510/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-pnv-d510/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-gdg-551/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19175/fi-gdg-551/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 11)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_19175 prevented too many machines from booting.</p>
<p>Missing    (31): fi-kbl-soraka fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-bsw-n3050 fi-tgl-u2 fi-glk-dsi fi-kbl-7500u fi-tgl-y fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ilk-m540 fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9503 -&gt; Patchwork_19175</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9503: 82c5c0ad8d578504865837b2135b60dd2d0054a1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5909: 3d6caf71a3e988cd125eb9efdd0a7cdcd0451673 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19175: eda31dae251767aa255796fbca58a83c9f523f0a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>eda31dae2517 drm/i915: Check for rq-&gt;hwsp validity after acquiring RCU lock</p>

</body>
</html>

--===============8011812322960056125==--

--===============1485351577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1485351577==--
