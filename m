Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C34E9404369
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 04:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E7D6E420;
	Thu,  9 Sep 2021 02:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40E8D6E418;
 Thu,  9 Sep 2021 02:02:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33CCBA9A42;
 Thu,  9 Sep 2021 02:02:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0946305444182048377=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 02:02:41 -0000
Message-ID: <163115296118.16810.16119642583478961820@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909011100.2987971-1-airlied@gmail.com>
In-Reply-To: <20210909011100.2987971-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/display=3A_split_and_constify_vtable_=28rev2=29?=
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

--===============0946305444182048377==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/display: split and constify vtable (rev2)
URL   : https://patchwork.freedesktop.org/series/94459/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10565 -> Patchwork_20994
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20994 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20994, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20994:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-rkl-11600/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-tgl-y/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-bwr-2160/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-rkl-guc/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20994 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][9] -> [INCOMPLETE][10] ([i915#3921])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][11] ([fdo#109271]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][13] ([i915#2403])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][14] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][15] ([i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][16] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][17] ([i915#1569] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][18] ([i915#3363] / [k.org#202321])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][19] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][20] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][21] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][22] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][23] ([i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][24] ([i915#3363])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][25] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][26] ([i915#1569])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][27] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][28] ([i915#3363])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][29] ([i915#3363])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-skl-6700k2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][30] ([i915#2426] / [i915#3363]) -> [FAIL][31] ([i915#1610] / [i915#3363])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-apl-guc/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][32] ([i915#1814] / [i915#3363]) -> [FAIL][33] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-kbl-7500u/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-7500u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [k.org#202107]: https://bugzilla.kernel.org/show_bug.cgi?id=202107
  [k.org#202109]: https://bugzilla.kernel.org/show_bug.cgi?id=202109
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (47 -> 39)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10565 -> Patchwork_20994

  CI-20190529: 20190529
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20994: 95a2f0fcea26ca363e61ccac4212e01d01335d0c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

95a2f0fcea26 drm/i915: constify display wm vtable
fecaefd7d43d drm/i915: constify clock gating init vtable.
49a26c76173c drm/i915: constify display function vtable
847e28dad4f3 drm/i915: drop unused function ptr and comments.
d9a59612ea5b drm/i915: constify the cdclk vtable
15b1d958a0f9 drm/i915: constify the dpll clock vtable
75a66a44f968 drm/i915: constify the audio function vtable
31b6e09af8a9 drm/i915: constify color function vtable.
344a6d43dbcf drm/i915: constify hotplug function vtable.
34025d57fe46 drm/i915: constify fdi link training vtable
db3b4508c591 drm/i915: split the dpll clock compute out from display vtable.
e47bebd1891f drm/i915: split fdi link training from display vtable.
833a11509155 drm/i915: split irq hotplug function from display vtable
293f7a3cd1ee drm/i915: split cdclk functions from display vtable.
e7e7cb2df965 drm/i915: split audio functions from display vtable
15521fe74480 drm/i915: split color functions from display vtable
c398feb04b80 drm/i915: split watermark vfuncs from display vtable.
8f69042761b2 drm/i915: split clock gating init from display vtable
50c640da1629 drm/i915/display: add intel_fdi_link_train wrapper.
d4355a1ab8b5 drm/i915: add wrappers around cdclk vtable funcs.
6736ec4f3d7c drm/i915/wm: provide wrappers around watermark vfuncs calls
0128f0dd02e7 drm/i915: make update_wm take a dev_priv.
861185f462cb drm/i915/pm: drop get_fifo_size vfunc.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/index.html

--===============0946305444182048377==
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
<tr><td><b>Series:</b></td><td>i915/display: split and constify vtable (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94459/">https://patchwork.freedesktop.org/series/94459/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10565 -&gt; Patchwork_20994</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20994 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20994, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20994:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-tgl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></p>
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
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20994 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
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
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20994/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 39)</h2>
<p>Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10565 -&gt; Patchwork_20994</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20994: 95a2f0fcea26ca363e61ccac4212e01d01335d0c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>95a2f0fcea26 drm/i915: constify display wm vtable<br />
fecaefd7d43d drm/i915: constify clock gating init vtable.<br />
49a26c76173c drm/i915: constify display function vtable<br />
847e28dad4f3 drm/i915: drop unused function ptr and comments.<br />
d9a59612ea5b drm/i915: constify the cdclk vtable<br />
15b1d958a0f9 drm/i915: constify the dpll clock vtable<br />
75a66a44f968 drm/i915: constify the audio function vtable<br />
31b6e09af8a9 drm/i915: constify color function vtable.<br />
344a6d43dbcf drm/i915: constify hotplug function vtable.<br />
34025d57fe46 drm/i915: constify fdi link training vtable<br />
db3b4508c591 drm/i915: split the dpll clock compute out from display vtable.<br />
e47bebd1891f drm/i915: split fdi link training from display vtable.<br />
833a11509155 drm/i915: split irq hotplug function from display vtable<br />
293f7a3cd1ee drm/i915: split cdclk functions from display vtable.<br />
e7e7cb2df965 drm/i915: split audio functions from display vtable<br />
15521fe74480 drm/i915: split color functions from display vtable<br />
c398feb04b80 drm/i915: split watermark vfuncs from display vtable.<br />
8f69042761b2 drm/i915: split clock gating init from display vtable<br />
50c640da1629 drm/i915/display: add intel_fdi_link_train wrapper.<br />
d4355a1ab8b5 drm/i915: add wrappers around cdclk vtable funcs.<br />
6736ec4f3d7c drm/i915/wm: provide wrappers around watermark vfuncs calls<br />
0128f0dd02e7 drm/i915: make update_wm take a dev_priv.<br />
861185f462cb drm/i915/pm: drop get_fifo_size vfunc.</p>

</body>
</html>

--===============0946305444182048377==--
