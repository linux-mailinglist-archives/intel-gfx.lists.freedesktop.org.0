Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACB34F8668
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A4C10EBF1;
	Thu,  7 Apr 2022 17:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE80610EC06;
 Thu,  7 Apr 2022 17:43:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB3B0AADD7;
 Thu,  7 Apr 2022 17:43:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5286334922678729210=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 07 Apr 2022 17:43:05 -0000
Message-ID: <164935338589.14671.9813776592876748705@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649322799.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649322799.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_low_level_EDID_block_read_refactoring_etc=2E_=28rev2?=
 =?utf-8?q?=29?=
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

--===============5286334922678729210==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: low level EDID block read refactoring etc. (rev2)
URL   : https://patchwork.freedesktop.org/series/102329/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11472 -> Patchwork_22815
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22815 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22815, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/index.html

Participating hosts (47 -> 48)
------------------------------

  Additional (4): bat-hsw-1 bat-rpls-2 fi-bwr-2160 bat-adlp-4 
  Missing    (3): fi-bsw-cyan shard-tglu fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22815:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-bwr-2160:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-bwr-2160/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@basic:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-hsw-4770:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-hsw-4770/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-rkl-11600:       [FAIL][4] ([i915#4312]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-rkl-11600/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][6] ([i915#4312]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7500u/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-7500u/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][8] ([i915#4312]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bxt-dsi/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-bxt-dsi/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][10] ([i915#4312]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-7567u/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@basic:
    - {bat-rpls-2}:       NOTRUN -> [SKIP][12] +146 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/bat-rpls-2/igt@gem_lmem_swapping@basic.html
    - {fi-jsl-1}:         [FAIL][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@gem_lmem_swapping@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-jsl-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-jsl-2}:        NOTRUN -> [SKIP][16] +146 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/bat-jsl-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@runner@aborted:
    - {bat-hsw-1}:        NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/bat-hsw-1/igt@runner@aborted.html
    - {fi-ehl-2}:         [FAIL][18] ([i915#4312]) -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ehl-2/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22815 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][20] ([fdo#109271]) +146 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][21] ([fdo#109271]) +145 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#5341])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#5341])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][24] ([i915#5457])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/bat-adlp-4/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-hsw-4770:        [FAIL][25] -> [SKIP][26] ([fdo#109271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@gem_lmem_swapping@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-hsw-4770/igt@gem_lmem_swapping@basic.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][27] ([i915#4312]) -> [FAIL][28] ([i915#3690])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-kefka/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][29] -> [FAIL][30] ([i915#4312])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-8109u/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][31] -> [FAIL][32] ([i915#4312])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        [FAIL][33] ([i915#4312]) -> [FAIL][34] ([i915#4312] / [i915#5594])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-hsw-4770/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][35] ([i915#4312] / [i915#5257]) -> [FAIL][36] ([i915#3690] / [i915#4312])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][37] ([i915#4312]) -> [FAIL][38] ([i915#4312] / [i915#5257])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5457]: https://gitlab.freedesktop.org/drm/intel/issues/5457
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594


Build changes
-------------

  * Linux: CI_DRM_11472 -> Patchwork_22815

  CI-20190529: 20190529
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22815: 3c761e57972d29b2b6e9670f53e0b331638e0ad5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3c761e57972d drm/edid: add EDID block count and size helpers
645bc2fe8f3c drm/edid: add single point of return to drm_do_get_edid()
00388e0daf46 drm/edid: drop extra local var
3c868115c35e drm/edid: convert extension block read to EDID block read helper
1bc23d37f22c drm/edid: use EDID block read helper in drm_do_get_edid()
57813bee76e0 drm/edid: abstract an EDID block read helper
17cd4f624c52 drm/edid: add typedef for block read function
6e44d3caae22 drm/edid: pass struct edid to connector_bad_edid()
c65a7953daef drm/edid: add a helper to log dump an EDID block
f53bd36df7cf drm/edid: refactor EDID block status printing
89bd3d8dc500 drm/edid: have edid_block_check() detect blocks that are all zero
0eda93c08c59 drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/index.html

--===============5286334922678729210==
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
<tr><td><b>Series:</b></td><td>drm/edid: low level EDID block read refactoring etc. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102329/">https://patchwork.freedesktop.org/series/102329/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11472 -&gt; Patchwork_22815</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22815 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22815, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/index.html</p>
<h2>Participating hosts (47 -&gt; 48)</h2>
<p>Additional (4): bat-hsw-1 bat-rpls-2 fi-bwr-2160 bat-adlp-4 <br />
  Missing    (3): fi-bsw-cyan shard-tglu fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22815:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-bwr-2160/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-hsw-4770/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/bat-rpls-2/igt@gem_lmem_swapping@basic.html">SKIP</a> +146 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@gem_lmem_swapping@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-jsl-1/igt@gem_lmem_swapping@basic.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/bat-jsl-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-hsw-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/bat-hsw-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ehl-2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22815 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +145 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5457">i915#5457</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@gem_lmem_swapping@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-hsw-4770/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22815/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11472 -&gt; Patchwork_22815</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22815: 3c761e57972d29b2b6e9670f53e0b331638e0ad5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3c761e57972d drm/edid: add EDID block count and size helpers<br />
645bc2fe8f3c drm/edid: add single point of return to drm_do_get_edid()<br />
00388e0daf46 drm/edid: drop extra local var<br />
3c868115c35e drm/edid: convert extension block read to EDID block read helper<br />
1bc23d37f22c drm/edid: use EDID block read helper in drm_do_get_edid()<br />
57813bee76e0 drm/edid: abstract an EDID block read helper<br />
17cd4f624c52 drm/edid: add typedef for block read function<br />
6e44d3caae22 drm/edid: pass struct edid to connector_bad_edid()<br />
c65a7953daef drm/edid: add a helper to log dump an EDID block<br />
f53bd36df7cf drm/edid: refactor EDID block status printing<br />
89bd3d8dc500 drm/edid: have edid_block_check() detect blocks that are all zero<br />
0eda93c08c59 drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks</p>

</body>
</html>

--===============5286334922678729210==--
