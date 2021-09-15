Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4D340BD18
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 03:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7154B6E88B;
	Wed, 15 Sep 2021 01:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58C5B6E887;
 Wed, 15 Sep 2021 01:21:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5256BAA916;
 Wed, 15 Sep 2021 01:21:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4035216743424513063=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Sep 2021 01:21:16 -0000
Message-ID: <163166887631.30119.8241488882445107804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1631643729.git.jani.nikula@intel.com>
In-Reply-To: <cover.1631643729.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/display=3A_split_and_constify_vtable_=28rev5=29?=
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

--===============4035216743424513063==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/display: split and constify vtable (rev5)
URL   : https://patchwork.freedesktop.org/series/94459/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10586 -> Patchwork_21052
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21052 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21052, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21052:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-skl-guc/igt@kms_busy@basic@modeset.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-rkl-11600/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-rkl-guc/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         [FAIL][8] ([i915#3970]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-jsl-1/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21052 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - fi-kbl-soraka:      [PASS][13] -> [DMESG-WARN][14] ([i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-soraka/igt@kms_busy@basic@modeset.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][15] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-cfl-8700k/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][16] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][17] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-guc/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][18] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][19] ([i915#1569])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-icl-y/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][20] ([i915#1814] / [i915#2426] / [i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-skl-guc/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cfl-8109u:       [FAIL][21] ([i915#2426] / [i915#3363]) -> [FAIL][22] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-cfl-8109u/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][23] ([i915#2426] / [i915#3363] / [i915#3690]) -> [FAIL][24] ([i915#1569] / [i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-icl-u2/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-icl-u2/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][25] ([i915#2426] / [i915#3363]) -> [FAIL][26] ([i915#1814] / [i915#2426] / [i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-soraka/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][27] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][28] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-7500u/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][29] ([fdo#109271] / [i915#1814] / [i915#2426] / [i915#3363]) -> [FAIL][30] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-7567u/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][31] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][32] ([i915#1814] / [i915#2426] / [i915#3363])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-skl-6700k2/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202107]: https://bugzilla.kernel.org/show_bug.cgi?id=202107
  [k.org#202109]: https://bugzilla.kernel.org/show_bug.cgi?id=202109


Participating hosts (41 -> 28)
------------------------------

  Missing    (13): fi-cml-u2 fi-hsw-gt1 fi-bdw-5557u bat-dg1-6 fi-bdw-gvtdvm fi-tgl-1115g4 fi-bsw-cyan fi-snb-2520m fi-hsw-4770 fi-ivb-3770 bat-jsl-2 fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10586 -> Patchwork_21052

  CI-20190529: 20190529
  CI_DRM_10586: 84dcd8a1b2a281b296db22fac5f7ffe52dd7c501 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21052: 0b9853442fd84da92a5176f895f1349d22bea918 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0b9853442fd8 drm/i915: constify display wm vtable
1c6f686f0ff9 drm/i915: constify clock gating init vtable.
43df9f5fd78c drm/i915: constify display function vtable
2a79c0876663 drm/i915: drop unused function ptr and comments.
ae656f5302b5 drm/i915: constify the cdclk vtable
4cf7d1ee6422 drm/i915: constify the dpll clock vtable
279b30727870 drm/i915: constify the audio function vtable
4a6c7e4d8f47 drm/i915: constify color function vtable.
8f81d15f47fb drm/i915: constify hotplug function vtable.
2a07ef7ab0a4 drm/i915: constify fdi link training vtable
2fa341dd4959 drm/i915: split the dpll clock compute out from display vtable.
a8affbd54af5 drm/i915: split fdi link training from display vtable.
acdcc485829c drm/i915: split irq hotplug function from display vtable
9c1f3f3d3646 drm/i915: split cdclk functions from display vtable.
fdbf1f460624 drm/i915: split audio functions from display vtable
6935719a9688 drm/i915: split color functions from display vtable
6dd5d455c1a0 drm/i915: split watermark vfuncs from display vtable.
1fca45b59ad3 drm/i915: split clock gating init from display vtable
674574afea70 drm/i915/display: add intel_fdi_link_train wrapper.
3244c7d3e7de drm/i915: add wrappers around cdclk vtable funcs.
dcbf48b5c63a drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)
ca9c40d0be2d drm/i915: make update_wm take a dev_priv.
870e9ca20427 drm/i915/pm: drop get_fifo_size vfunc.
e37b65685b48 drm/i915/uncore: split the fw get function into separate vfunc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/index.html

--===============4035216743424513063==
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
<tr><td><b>Series:</b></td><td>i915/display: split and constify vtable (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94459/">https://patchwork.freedesktop.org/series/94459/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10586 -&gt; Patchwork_21052</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21052 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21052, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21052:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-skl-6700k2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-skl-6700k2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-skl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-skl-guc/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
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
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-jsl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3970">i915#3970</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21052 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-soraka/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-soraka/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
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
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21052/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 28)</h2>
<p>Missing    (13): fi-cml-u2 fi-hsw-gt1 fi-bdw-5557u bat-dg1-6 fi-bdw-gvtdvm fi-tgl-1115g4 fi-bsw-cyan fi-snb-2520m fi-hsw-4770 fi-ivb-3770 bat-jsl-2 fi-bdw-samus fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10586 -&gt; Patchwork_21052</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10586: 84dcd8a1b2a281b296db22fac5f7ffe52dd7c501 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21052: 0b9853442fd84da92a5176f895f1349d22bea918 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0b9853442fd8 drm/i915: constify display wm vtable<br />
1c6f686f0ff9 drm/i915: constify clock gating init vtable.<br />
43df9f5fd78c drm/i915: constify display function vtable<br />
2a79c0876663 drm/i915: drop unused function ptr and comments.<br />
ae656f5302b5 drm/i915: constify the cdclk vtable<br />
4cf7d1ee6422 drm/i915: constify the dpll clock vtable<br />
279b30727870 drm/i915: constify the audio function vtable<br />
4a6c7e4d8f47 drm/i915: constify color function vtable.<br />
8f81d15f47fb drm/i915: constify hotplug function vtable.<br />
2a07ef7ab0a4 drm/i915: constify fdi link training vtable<br />
2fa341dd4959 drm/i915: split the dpll clock compute out from display vtable.<br />
a8affbd54af5 drm/i915: split fdi link training from display vtable.<br />
acdcc485829c drm/i915: split irq hotplug function from display vtable<br />
9c1f3f3d3646 drm/i915: split cdclk functions from display vtable.<br />
fdbf1f460624 drm/i915: split audio functions from display vtable<br />
6935719a9688 drm/i915: split color functions from display vtable<br />
6dd5d455c1a0 drm/i915: split watermark vfuncs from display vtable.<br />
1fca45b59ad3 drm/i915: split clock gating init from display vtable<br />
674574afea70 drm/i915/display: add intel_fdi_link_train wrapper.<br />
3244c7d3e7de drm/i915: add wrappers around cdclk vtable funcs.<br />
dcbf48b5c63a drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)<br />
ca9c40d0be2d drm/i915: make update_wm take a dev_priv.<br />
870e9ca20427 drm/i915/pm: drop get_fifo_size vfunc.<br />
e37b65685b48 drm/i915/uncore: split the fw get function into separate vfunc</p>

</body>
</html>

--===============4035216743424513063==--
