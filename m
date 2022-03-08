Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B25B4D160B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 12:18:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D99210E53F;
	Tue,  8 Mar 2022 11:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C65410E53F;
 Tue,  8 Mar 2022 11:18:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 879D7AA914;
 Tue,  8 Mar 2022 11:18:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1656461859615359424=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 08 Mar 2022 11:18:25 -0000
Message-ID: <164673830551.13384.1035473405160459562@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220307184330.1635013-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220307184330.1635013-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_CDCLK_checks_to_atomic_check_phase_=28rev2=29?=
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

--===============1656461859615359424==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add CDCLK checks to atomic check phase (rev2)
URL   : https://patchwork.freedesktop.org/series/101068/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11334 -> Patchwork_22503
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22503 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22503, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/index.html

Participating hosts (44 -> 37)
------------------------------

  Additional (6): fi-cml-u2 bat-adls-5 fi-skl-guc fi-icl-u2 bat-jsl-2 fi-bsw-nick 
  Missing    (13): fi-kbl-soraka fi-bdw-5557u fi-bsw-n3050 fi-bsw-cyan fi-snb-2520m fi-ilk-650 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-kefka fi-blb-e6850 fi-bdw-samus fi-snb-2600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22503:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@runner@aborted:
    - fi-bwr-2160:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-bwr-2160/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {bat-adlp-6}:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-adlp-6/igt@runner@aborted.html
    - {bat-jsl-2}:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-jsl-2/igt@runner@aborted.html
    - {bat-dg2-9}:        [FAIL][5] ([i915#4312]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/bat-dg2-9/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-dg2-9/igt@runner@aborted.html
    - {fi-rkl-11600}:     NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-rkl-11600/igt@runner@aborted.html
    - {shard-rkl}:        [FAIL][8] ([i915#4312]) -> ([FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/shard-rkl-2/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-5/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-2/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-1/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-6/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-4/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-jsl-1/igt@runner@aborted.html
    - {bat-jsl-1}:        NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22503 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@write:
    - fi-bsw-nick:        NOTRUN -> [SKIP][17] ([fdo#109271]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-bsw-nick/igt@fbdev@write.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][18] ([i915#2426])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][19] ([i915#2426] / [i915#3690])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][20] ([i915#2426] / [k.org#202321])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][21] ([i915#2426])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-7500u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][22] ([i915#2426])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][23] ([i915#2426])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-bxt-dsi/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][24] ([i915#2426])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-dg1-6/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][25] ([i915#2426])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-cfl-guc/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][26] ([i915#2426] / [k.org#202321])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][27] ([i915#2426])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][28] ([i915#2426])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][29] ([i915#2426])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-skl-6700k2/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][30] ([i915#2426])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][31] ([i915#2426])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-cfl-8700k/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][32] ([i915#2426])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-dg1-5/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][33] ([i915#2426])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][34] ([i915#2426])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-guc/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][35] ([i915#2426])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-rkl-guc/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-1115g4:      [FAIL][36] ([i915#2722] / [i915#4312]) -> [FAIL][37] ([i915#3690])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/fi-tgl-1115g4/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-skl-6600u:       [FAIL][38] ([i915#4312] / [i915#5257]) -> [FAIL][39] ([i915#2426])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/fi-skl-6600u/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-skl-6600u/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][40] ([i915#2426] / [i915#4312]) -> [FAIL][41] ([i915#2426])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/fi-apl-guc/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5169]: https://gitlab.freedesktop.org/drm/intel/issues/5169
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11334 -> Patchwork_22503

  CI-20190529: 20190529
  CI_DRM_11334: e7af229f52672104f4b170304c80e2d6849a2489 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6367: f8eac64564b12326721f1d5bea692bde4fe1ef15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22503: 5c4cc47d2fc7184ba5ef61dc5c1ea1f490ecccf1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5c4cc47d2fc7 drm/i915/display: Add cdclk checks to atomic check
606dc35fcfa9 drm/i915/display: Add drm_i915_private to intel_cdclk_needs_modeset()
63062936667f drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
287fb31ae0d4 drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash
a6b602089dfe drm/i915/display: Add CDCLK actions to intel_cdclk_state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/index.html

--===============1656461859615359424==
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
<tr><td><b>Series:</b></td><td>Add CDCLK checks to atomic check phase (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101068/">https://patchwork.freedesktop.org/series/101068/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11334 -&gt; Patchwork_22503</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22503 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22503, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/index.html</p>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Additional (6): fi-cml-u2 bat-adls-5 fi-skl-guc fi-icl-u2 bat-jsl-2 fi-bsw-nick <br />
  Missing    (13): fi-kbl-soraka fi-bdw-5557u fi-bsw-n3050 fi-bsw-cyan fi-snb-2520m fi-ilk-650 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-kefka fi-blb-e6850 fi-bdw-samus fi-snb-2600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22503:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-adlp-6/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-jsl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/bat-dg2-9/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-dg2-9/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-rkl-11600}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/shard-rkl-2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/shard-rkl-4/igt@runner@aborted.html">FAIL</a>)</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22503 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-bsw-nick/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11334/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22503/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11334 -&gt; Patchwork_22503</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11334: e7af229f52672104f4b170304c80e2d6849a2489 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6367: f8eac64564b12326721f1d5bea692bde4fe1ef15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22503: 5c4cc47d2fc7184ba5ef61dc5c1ea1f490ecccf1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5c4cc47d2fc7 drm/i915/display: Add cdclk checks to atomic check<br />
606dc35fcfa9 drm/i915/display: Add drm_i915_private to intel_cdclk_needs_modeset()<br />
63062936667f drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl<br />
287fb31ae0d4 drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash<br />
a6b602089dfe drm/i915/display: Add CDCLK actions to intel_cdclk_state</p>

</body>
</html>

--===============1656461859615359424==--
