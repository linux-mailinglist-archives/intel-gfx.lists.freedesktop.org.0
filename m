Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC18C3D113A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 16:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365346E49A;
	Wed, 21 Jul 2021 14:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10E296E49A;
 Wed, 21 Jul 2021 14:25:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0951DA66C9;
 Wed, 21 Jul 2021 14:25:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 21 Jul 2021 14:25:34 -0000
Message-ID: <162687753401.769.14247008172133320153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721133014.3880922-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210721133014.3880922-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
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
Content-Type: multipart/mixed; boundary="===============1246504772=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1246504772==
Content-Type: multipart/alternative;
 boundary="===============1348982882054647803=="

--===============1348982882054647803==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/plane: remove drm_helper_get_plane_damage_clips
URL   : https://patchwork.freedesktop.org/series/92822/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10365 -> Patchwork_20663
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20663 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20663, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20663:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-ilk-650/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bdw-5557u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-elk-e7500/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_force_connector_basic@force-connector-state:
    - {fi-hsw-gt1}:       [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-hsw-gt1/igt@kms_force_connector_basic@force-connector-state.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-hsw-gt1/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_20663 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][12] ([i915#2403] / [i915#2505])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][13] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][14] ([i915#1610])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][15] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][16] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][17] ([i915#3363] / [k.org#202321])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][18] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-8809g/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][19] ([i915#2505])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][20] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][21] ([i915#192] / [i915#193] / [i915#194] / [i915#2505])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][22] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][23] ([i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][24] ([i915#3363])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][25] ([i915#2426] / [i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][26] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][27] ([i915#1569])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][28] ([i915#3363])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][29] ([i915#3363])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][30] ([i915#3363])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][31] ([i915#1610])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][32] ([i915#1888]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][34] ([i915#1814] / [i915#3363]) -> [FAIL][35] ([i915#1569] / [i915#3363])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-icl-u2/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-icl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3626]: https://gitlab.freedesktop.org/drm/intel/issues/3626
  [k.org#202107]: https://bugzilla.kernel.org/show_bug.cgi?id=202107
  [k.org#202109]: https://bugzilla.kernel.org/show_bug.cgi?id=202109
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (38 -> 35)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10365 -> Patchwork_20663

  CI-20190529: 20190529
  CI_DRM_10365: ac586c6a6b56905df2af88699c1e6d28416dd9a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20663: a896b164d83b0bf080708759af777d6b43a74615 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a896b164d83b drm/plane: Move drm_plane_enable_fb_damage_clips into core
c11741a8ac84 drm/plane: check that fb_damage is set up when used
fc061e34c557 drm/plane: remove drm_helper_get_plane_damage_clips

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/index.html

--===============1348982882054647803==
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
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92822/">https://patchwork.freedesktop.org/series/92822/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10365 -&gt; Patchwork_20663</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20663 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20663, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20663:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_force_connector_basic@force-connector-state:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-hsw-gt1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-hsw-gt1/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20663 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10365/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20663/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10365 -&gt; Patchwork_20663</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10365: ac586c6a6b56905df2af88699c1e6d28416dd9a4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20663: a896b164d83b0bf080708759af777d6b43a74615 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a896b164d83b drm/plane: Move drm_plane_enable_fb_damage_clips into core<br />
c11741a8ac84 drm/plane: check that fb_damage is set up when used<br />
fc061e34c557 drm/plane: remove drm_helper_get_plane_damage_clips</p>

</body>
</html>

--===============1348982882054647803==--

--===============1246504772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1246504772==--
