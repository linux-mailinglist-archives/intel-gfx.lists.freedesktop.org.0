Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1EE40B7B5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 21:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D3A06E5A4;
	Tue, 14 Sep 2021 19:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 944C76E5A4;
 Tue, 14 Sep 2021 19:14:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D30FA7525;
 Tue, 14 Sep 2021 19:14:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9112309525600248800=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 19:14:32 -0000
Message-ID: <163164687257.3455.944908750758204382@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1631643729.git.jani.nikula@intel.com>
In-Reply-To: <cover.1631643729.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/display=3A_split_and_constify_vtable_=28rev4=29?=
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

--===============9112309525600248800==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/display: split and constify vtable (rev4)
URL   : https://patchwork.freedesktop.org/series/94459/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10584 -> Patchwork_21045
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21045 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21045, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21045:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-skl-guc/igt@kms_busy@basic@modeset.html
    - fi-cml-u2:          [PASS][5] -> [DMESG-WARN][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-cml-u2/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cml-u2/igt@kms_busy@basic@modeset.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-rkl-11600/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-rkl-guc/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       [FAIL][10] ([i915#2932] / [i915#3690]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-tgl-dsi/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         [FAIL][12] ([i915#3970]) -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-jsl-1/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-jsl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21045 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][16] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][17] ([i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@kms_busy@basic@modeset.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][18] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cfl-8700k/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][19] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][20] ([i915#1814] / [i915#2426] / [i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][21] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][22] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][23] ([i915#1569])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-icl-y/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cfl-8109u:       [FAIL][24] ([i915#2426] / [i915#3363]) -> [FAIL][25] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-cfl-8109u/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][26] ([i915#2426] / [i915#3363] / [i915#3690]) -> [FAIL][27] ([i915#1569] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-icl-u2/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-icl-u2/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][28] ([i915#2082] / [i915#2426] / [i915#3363]) -> [FAIL][29] ([i915#1814] / [i915#2082] / [i915#2426] / [i915#3363])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-cml-u2/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][30] ([i915#2426] / [i915#3363]) -> [FAIL][31] ([i915#3363] / [k.org#202107] / [k.org#202109])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-cfl-guc/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][32] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][33] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#3363])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-kbl-7567u/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][34] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][35] ([i915#1814] / [i915#2426] / [i915#3363])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-skl-guc/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][36] ([i915#2426] / [i915#3363]) -> [FAIL][37] ([i915#1814] / [i915#2426] / [i915#3363])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-skl-6700k2/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-skl-6700k2/igt@runner@aborted.html

  
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
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202107]: https://bugzilla.kernel.org/show_bug.cgi?id=202107
  [k.org#202109]: https://bugzilla.kernel.org/show_bug.cgi?id=202109


Participating hosts (39 -> 30)
------------------------------

  Additional (3): fi-kbl-soraka fi-tgl-1115g4 fi-kbl-guc 
  Missing    (12): fi-hsw-gt1 fi-bdw-5557u bat-dg1-6 bat-dg1-5 fi-bdw-gvtdvm fi-bsw-cyan fi-snb-2520m fi-hsw-4770 fi-ivb-3770 fi-bdw-samus bat-jsl-1 fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10584 -> Patchwork_21045

  CI-20190529: 20190529
  CI_DRM_10584: 7fa18a9066276df7e4c9ffe45c98f4604bd92bdd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21045: d4004e4bb7389d4bdee2f690d8c6be48c13fa08e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d4004e4bb738 drm/i915: constify display wm vtable
a8bd650dbe3f drm/i915: constify clock gating init vtable.
143848d5704d drm/i915: constify display function vtable
244d2f8bdb78 drm/i915: drop unused function ptr and comments.
5b5fc1288374 drm/i915: constify the cdclk vtable
cd63adc71d18 drm/i915: constify the dpll clock vtable
baa25b6c0efa drm/i915: constify the audio function vtable
f8f1a39c8a95 drm/i915: constify color function vtable.
d1ba54b243d4 drm/i915: constify hotplug function vtable.
10058e725cab drm/i915: constify fdi link training vtable
44184a20e800 drm/i915: split the dpll clock compute out from display vtable.
baae6f392081 drm/i915: split fdi link training from display vtable.
4bce65343710 drm/i915: split irq hotplug function from display vtable
99eb443d286e drm/i915: split cdclk functions from display vtable.
ebb933ee9c8b drm/i915: split audio functions from display vtable
0dabe5abfea3 drm/i915: split color functions from display vtable
6635d9b3245f drm/i915: split watermark vfuncs from display vtable.
b2dd5cb088f2 drm/i915: split clock gating init from display vtable
7873e633826d drm/i915/display: add intel_fdi_link_train wrapper.
7e93339a1e25 drm/i915: add wrappers around cdclk vtable funcs.
7f1eb33ee2d3 drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)
532203cca59e drm/i915: make update_wm take a dev_priv.
09e6590ba72b drm/i915/pm: drop get_fifo_size vfunc.
5757b633382c drm/i915/uncore: split the fw get function into separate vfunc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/index.html

--===============9112309525600248800==
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
<tr><td><b>Series:</b></td><td>i915/display: split and constify vtable (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94459/">https://patchwork.freedesktop.org/series/94459/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10584 -&gt; Patchwork_21045</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21045 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21045, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21045:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-skl-6700k2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-skl-6700k2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-skl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-skl-guc/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-cml-u2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cml-u2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></p>
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
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2932">i915#2932</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-jsl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3970">i915#3970</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21045 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a>)</p>
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
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202107">k.org#202107</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202109">k.org#202109</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10584/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21045/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 30)</h2>
<p>Additional (3): fi-kbl-soraka fi-tgl-1115g4 fi-kbl-guc <br />
  Missing    (12): fi-hsw-gt1 fi-bdw-5557u bat-dg1-6 bat-dg1-5 fi-bdw-gvtdvm fi-bsw-cyan fi-snb-2520m fi-hsw-4770 fi-ivb-3770 fi-bdw-samus bat-jsl-1 fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10584 -&gt; Patchwork_21045</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10584: 7fa18a9066276df7e4c9ffe45c98f4604bd92bdd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21045: d4004e4bb7389d4bdee2f690d8c6be48c13fa08e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d4004e4bb738 drm/i915: constify display wm vtable<br />
a8bd650dbe3f drm/i915: constify clock gating init vtable.<br />
143848d5704d drm/i915: constify display function vtable<br />
244d2f8bdb78 drm/i915: drop unused function ptr and comments.<br />
5b5fc1288374 drm/i915: constify the cdclk vtable<br />
cd63adc71d18 drm/i915: constify the dpll clock vtable<br />
baa25b6c0efa drm/i915: constify the audio function vtable<br />
f8f1a39c8a95 drm/i915: constify color function vtable.<br />
d1ba54b243d4 drm/i915: constify hotplug function vtable.<br />
10058e725cab drm/i915: constify fdi link training vtable<br />
44184a20e800 drm/i915: split the dpll clock compute out from display vtable.<br />
baae6f392081 drm/i915: split fdi link training from display vtable.<br />
4bce65343710 drm/i915: split irq hotplug function from display vtable<br />
99eb443d286e drm/i915: split cdclk functions from display vtable.<br />
ebb933ee9c8b drm/i915: split audio functions from display vtable<br />
0dabe5abfea3 drm/i915: split color functions from display vtable<br />
6635d9b3245f drm/i915: split watermark vfuncs from display vtable.<br />
b2dd5cb088f2 drm/i915: split clock gating init from display vtable<br />
7873e633826d drm/i915/display: add intel_fdi_link_train wrapper.<br />
7e93339a1e25 drm/i915: add wrappers around cdclk vtable funcs.<br />
7f1eb33ee2d3 drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)<br />
532203cca59e drm/i915: make update_wm take a dev_priv.<br />
09e6590ba72b drm/i915/pm: drop get_fifo_size vfunc.<br />
5757b633382c drm/i915/uncore: split the fw get function into separate vfunc</p>

</body>
</html>

--===============9112309525600248800==--
