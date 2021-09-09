Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5228F404390
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 04:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08186E42A;
	Thu,  9 Sep 2021 02:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CEC26E42A;
 Thu,  9 Sep 2021 02:28:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43C83AA0EA;
 Thu,  9 Sep 2021 02:28:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6955822575977882606=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 02:28:26 -0000
Message-ID: <163115450623.16810.5513055279854304600@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909015322.2988500-1-airlied@gmail.com>
In-Reply-To: <20210909015322.2988500-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/display=3A_split_and_constify_vtable_=28rev3=29?=
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

--===============6955822575977882606==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/display: split and constify vtable (rev3)
URL   : https://patchwork.freedesktop.org/series/94459/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10565 -> Patchwork_20995
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20995 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20995, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20995:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-rkl-11600/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-tgl-y/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-bwr-2160/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-rkl-guc/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20995 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][9] ([i915#2403])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][10] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][11] ([i915#3363])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][12] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][13] ([i915#1569] / [i915#3363])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][14] ([i915#3363] / [k.org#202321])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][15] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][16] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][17] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][18] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][19] ([i915#3363])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][20] ([i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][21] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][22] ([i915#1569])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][23] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][24] ([i915#3363])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][25] ([i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-skl-6700k2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][26] ([i915#2426] / [i915#3363]) -> [FAIL][27] ([i915#1610] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-apl-guc/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][28] ([i915#1814] / [i915#3363]) -> [FAIL][29] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-kbl-7500u/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-7500u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [k.org#202107]: https://bugzilla.kernel.org/show_bug.cgi?id=202107
  [k.org#202109]: https://bugzilla.kernel.org/show_bug.cgi?id=202109
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (47 -> 39)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10565 -> Patchwork_20995

  CI-20190529: 20190529
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20995: 23ee99724f55eb52550f05d5500bf113f514729e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

23ee99724f55 drm/i915: constify display wm vtable
90e8b85e828a drm/i915: constify clock gating init vtable.
70f608995c29 drm/i915: constify display function vtable
c1efc73c0417 drm/i915: drop unused function ptr and comments.
7b51b6fedb49 drm/i915: constify the cdclk vtable
7dbce2d6cbf9 drm/i915: constify the dpll clock vtable
aae8c1731860 drm/i915: constify the audio function vtable
7e992c904e0f drm/i915: constify color function vtable.
e083e0f99097 drm/i915: constify hotplug function vtable.
acb8f8b85236 drm/i915: constify fdi link training vtable
69f8232ae750 drm/i915: split the dpll clock compute out from display vtable.
bffd1d2d4374 drm/i915: split fdi link training from display vtable.
746f0aa2ec41 drm/i915: split irq hotplug function from display vtable
c572b0d86bf1 drm/i915: split cdclk functions from display vtable.
b702ff45c5cf drm/i915: split audio functions from display vtable
31adf6b0768e drm/i915: split color functions from display vtable
34a4acfe78be drm/i915: split watermark vfuncs from display vtable.
a794c1c9815e drm/i915: split clock gating init from display vtable
19bf5164731c drm/i915/display: add intel_fdi_link_train wrapper.
a3202c80554b drm/i915: add wrappers around cdclk vtable funcs.
c888ddf45e84 drm/i915/wm: provide wrappers around watermark vfuncs calls
a40a1ce2eb04 drm/i915: make update_wm take a dev_priv.
a76b5174980a drm/i915/pm: drop get_fifo_size vfunc.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/index.html

--===============6955822575977882606==
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
<tr><td><b>Series:</b></td><td>i915/display: split and constify vtable (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94459/">https://patchwork.freedesktop.org/series/94459/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10565 -&gt; Patchwork_20995</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20995 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20995, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20995:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-tgl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></p>
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
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20995 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
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
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20995/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
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
<li>Linux: CI_DRM_10565 -&gt; Patchwork_20995</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20995: 23ee99724f55eb52550f05d5500bf113f514729e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>23ee99724f55 drm/i915: constify display wm vtable<br />
90e8b85e828a drm/i915: constify clock gating init vtable.<br />
70f608995c29 drm/i915: constify display function vtable<br />
c1efc73c0417 drm/i915: drop unused function ptr and comments.<br />
7b51b6fedb49 drm/i915: constify the cdclk vtable<br />
7dbce2d6cbf9 drm/i915: constify the dpll clock vtable<br />
aae8c1731860 drm/i915: constify the audio function vtable<br />
7e992c904e0f drm/i915: constify color function vtable.<br />
e083e0f99097 drm/i915: constify hotplug function vtable.<br />
acb8f8b85236 drm/i915: constify fdi link training vtable<br />
69f8232ae750 drm/i915: split the dpll clock compute out from display vtable.<br />
bffd1d2d4374 drm/i915: split fdi link training from display vtable.<br />
746f0aa2ec41 drm/i915: split irq hotplug function from display vtable<br />
c572b0d86bf1 drm/i915: split cdclk functions from display vtable.<br />
b702ff45c5cf drm/i915: split audio functions from display vtable<br />
31adf6b0768e drm/i915: split color functions from display vtable<br />
34a4acfe78be drm/i915: split watermark vfuncs from display vtable.<br />
a794c1c9815e drm/i915: split clock gating init from display vtable<br />
19bf5164731c drm/i915/display: add intel_fdi_link_train wrapper.<br />
a3202c80554b drm/i915: add wrappers around cdclk vtable funcs.<br />
c888ddf45e84 drm/i915/wm: provide wrappers around watermark vfuncs calls<br />
a40a1ce2eb04 drm/i915: make update_wm take a dev_priv.<br />
a76b5174980a drm/i915/pm: drop get_fifo_size vfunc.</p>

</body>
</html>

--===============6955822575977882606==--
