Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8834C459830
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 00:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D004589A76;
	Mon, 22 Nov 2021 23:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2A1289A76;
 Mon, 22 Nov 2021 23:04:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC9C2AA914;
 Mon, 22 Nov 2021 23:04:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5431482611195080363=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Mon, 22 Nov 2021 23:04:59 -0000
Message-ID: <163762229994.5697.4191196592250974367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211122215114.1812-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211122215114.1812-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_preparation_for_multi_gt_patches_=28rev3=29?=
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

--===============5431482611195080363==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More preparation for multi gt patches (rev3)
URL   : https://patchwork.freedesktop.org/series/97020/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10916 -> Patchwork_21661
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21661 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21661, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/index.html

Participating hosts (42 -> 34)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (9): bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-bdw-gvtdvm fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21661:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-rkl-11600/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-hsw-4770/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21661 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-snb-2600:        NOTRUN -> [FAIL][5] ([i915#2426])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][6] ([i915#2426])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-ilk-650/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][7] ([i915#3690])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][8] ([i915#2426] / [i915#3363])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][9] ([i915#2426] / [i915#3363])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][10] ([i915#2426] / [i915#3363] / [i915#3690])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][11] ([i915#2426] / [i915#3363] / [k.org#202321])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][12] ([i915#2426] / [i915#3363])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][13] ([i915#2426])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][14] ([i915#2426])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][15] ([i915#4529])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][16] ([i915#2426] / [i915#3363])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][17] ([i915#2426] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][18] ([i915#2426] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][19] ([i915#2426] / [i915#3363])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-cml-u2/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][20] ([i915#2426])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-rkl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][21] ([i915#2426])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][22] ([i915#2426] / [i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bxt-dsi/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][23] ([i915#3690])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][24] ([i915#2426])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-elk-e7500/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][25] ([i915#2426] / [i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][26] ([i915#2426] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][27] ([i915#2426] / [i915#3363])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][28] ([i915#2426] / [i915#3363])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][29] ([i915#3690])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bsw-n3050/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][30] ([i915#2403] / [i915#2426])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][31] ([i915#3363] / [i915#4312]) -> [FAIL][32] ([i915#2426] / [i915#3363])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10916/fi-skl-6600u/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-skl-6600u/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][33] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312]) -> [FAIL][34] ([i915#3690])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10916/fi-bsw-nick/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bsw-nick/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][35] ([i915#2426] / [i915#3363] / [i915#4312]) -> [FAIL][36] ([i915#2426] / [i915#3363])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10916/fi-apl-guc/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4529]: https://gitlab.freedesktop.org/drm/intel/issues/4529
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_10916 -> Patchwork_21661

  CI-20190529: 20190529
  CI_DRM_10916: 876217519d26774d843128cc66640ae501a5c38d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6286: cdcbf81f734fdb1d102e84490e49e9fec23760cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21661: 1e0dc81ceda7c692b41939fc1b3838afe53346f1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1e0dc81ceda7 drm/i915: Use to_root_gt() to refer to the root tile
715ab4b6b676 drm/i915: Store backpointer to GT in uncore

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/index.html

--===============5431482611195080363==
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
<tr><td><b>Series:</b></td><td>More preparation for multi gt patches (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97020/">https://patchwork.freedesktop.org/series/97020/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10916 -&gt; Patchwork_21661</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21661 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21661, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/index.html</p>
<h2>Participating hosts (42 -&gt; 34)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (9): bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-bdw-gvtdvm fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21661:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-hsw-4770/igt@runner@aborted.html">FAIL</a></p>
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
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21661 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4529">i915#4529</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
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
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10916/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10916/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10916/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21661/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10916 -&gt; Patchwork_21661</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10916: 876217519d26774d843128cc66640ae501a5c38d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6286: cdcbf81f734fdb1d102e84490e49e9fec23760cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21661: 1e0dc81ceda7c692b41939fc1b3838afe53346f1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1e0dc81ceda7 drm/i915: Use to_root_gt() to refer to the root tile<br />
715ab4b6b676 drm/i915: Store backpointer to GT in uncore</p>

</body>
</html>

--===============5431482611195080363==--
