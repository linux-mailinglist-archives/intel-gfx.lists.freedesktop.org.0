Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDB04F8FF1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 09:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B6F10E138;
	Fri,  8 Apr 2022 07:55:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7912610E119;
 Fri,  8 Apr 2022 07:55:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72752A77A5;
 Fri,  8 Apr 2022 07:55:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3096351733952223872=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Fri, 08 Apr 2022 07:55:16 -0000
Message-ID: <164940451643.22678.405598739913691103@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220408065232.180146-1-khaled.almahallawy@intel.com>
In-Reply-To: <20220408065232.180146-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=3A_Don=27t_rewrite_link_config_when_setting_phy_CTS_test_pa?=
 =?utf-8?q?ttern_with_LTTPR?=
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

--===============3096351733952223872==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp: Don't rewrite link config when setting phy CTS test pattern with LTTPR
URL   : https://patchwork.freedesktop.org/series/102385/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11474 -> Patchwork_22824
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22824 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22824, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/index.html

Participating hosts (50 -> 36)
------------------------------

  Missing    (14): fi-bdw-samus bat-adls-5 bat-dg1-6 bat-adlm-1 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-hsw-1 fi-elk-e7500 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22824:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@basic:
    - fi-snb-2600:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-snb-2600/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-kefka/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-bdw-5557u:       [FAIL][4] ([i915#5602]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-bdw-5557u/igt@gem_lmem_swapping@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bdw-5557u/igt@gem_lmem_swapping@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@basic:
    - {fi-jsl-1}:         [FAIL][6] ([i915#5602]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-jsl-1/igt@gem_lmem_swapping@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-jsl-1/igt@gem_lmem_swapping@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_22824 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        NOTRUN -> [SKIP][8] ([fdo#109271]) +146 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await:
    - fi-bsw-nick:        NOTRUN -> [SKIP][9] ([fdo#109271]) +151 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-nick/igt@gem_exec_fence@basic-await.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-snb-2600:        NOTRUN -> [SKIP][10] ([fdo#109271]) +150 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-bsw-nick:        NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#5341])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2600:        NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#5341])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#5341])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-skl-guc:         [FAIL][14] ([i915#4547]) -> [FAIL][15] ([i915#5602])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-skl-guc/igt@gem_lmem_swapping@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-skl-guc/igt@gem_lmem_swapping@basic.html
    - fi-hsw-g3258:       [FAIL][16] -> [FAIL][17] ([i915#5602])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-hsw-g3258/igt@gem_lmem_swapping@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-hsw-g3258/igt@gem_lmem_swapping@basic.html
    - fi-cfl-8109u:       [FAIL][18] -> [FAIL][19] ([i915#5602])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html
    - fi-cfl-guc:         [FAIL][20] -> [FAIL][21] ([i915#5602])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-cfl-guc/igt@gem_lmem_swapping@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-cfl-guc/igt@gem_lmem_swapping@basic.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][22] ([i915#3690] / [i915#4312]) -> [FAIL][23] ([i915#4312])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-bsw-kefka/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][24] ([i915#3690]) -> [FAIL][25] ([i915#4312])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-bsw-nick/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][26] ([i915#4312] / [i915#5257]) -> [FAIL][27] ([i915#4312])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-kbl-7500u/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][28] ([i915#4312] / [i915#5257]) -> [FAIL][29] ([i915#5602])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-kbl-guc/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        [FAIL][30] -> [FAIL][31] ([i915#4312])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-snb-2600/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][32] -> [FAIL][33] ([i915#4312])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-ivb-3770/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][34] ([i915#3690] / [i915#4312]) -> [FAIL][35] ([i915#3690])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-tgl-1115g4/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][36] ([i915#4312] / [i915#5257]) -> [FAIL][37] ([i915#4312])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-cfl-guc/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][38] ([i915#4312] / [i915#5257]) -> [FAIL][39] ([i915#4312])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-skl-guc/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-skl-guc/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][40] ([i915#4312]) -> [FAIL][41] ([i915#3690] / [i915#4312])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-bsw-n3050/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-n3050/igt@runner@aborted.html
    - fi-tgl-u2:          [FAIL][42] ([i915#3690] / [i915#4312]) -> [FAIL][43] ([i915#3690])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-tgl-u2/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-tgl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602


Build changes
-------------

  * Linux: CI_DRM_11474 -> Patchwork_22824

  CI-20190529: 20190529
  CI_DRM_11474: 7db06d19096d416d9cb1de42460c43ca726858d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22824: 8daf608dcf56b9ffcefb76e7f80f7c29b91ca33a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8daf608dcf56 drm/dp: Don't rewrite link config when setting phy CTS test pattern with LTTPR

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/index.html

--===============3096351733952223872==
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
<tr><td><b>Series:</b></td><td>drm/dp: Don&#39;t rewrite link config when setting phy CTS test pattern with LTTPR</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102385/">https://patchwork.freedesktop.org/series/102385/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11474 -&gt; Patchwork_22824</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22824 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22824, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/index.html</p>
<h2>Participating hosts (50 -&gt; 36)</h2>
<p>Missing    (14): fi-bdw-samus bat-adls-5 bat-dg1-6 bat-adlm-1 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-hsw-1 fi-elk-e7500 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22824:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-snb-2600/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-kefka/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_lmem_swapping@basic:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-bdw-5557u/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bdw-5557u/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_lmem_swapping@basic:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-jsl-1/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-jsl-1/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22824 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-ivb-3770/igt@gem_close_race@basic-process.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-nick/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +151 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-snb-2600/igt@i915_getparams_basic@basic-eu-total.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +150 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-skl-guc/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-skl-guc/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-hsw-g3258/igt@gem_lmem_swapping@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-hsw-g3258/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-cfl-guc/igt@gem_lmem_swapping@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-cfl-guc/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-snb-2600/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11474/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22824/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11474 -&gt; Patchwork_22824</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11474: 7db06d19096d416d9cb1de42460c43ca726858d9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22824: 8daf608dcf56b9ffcefb76e7f80f7c29b91ca33a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8daf608dcf56 drm/dp: Don't rewrite link config when setting phy CTS test pattern with LTTPR</p>

</body>
</html>

--===============3096351733952223872==--
