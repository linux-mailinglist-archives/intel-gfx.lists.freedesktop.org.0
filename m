Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 418114F8D48
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 07:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A46110ED85;
	Fri,  8 Apr 2022 05:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACA9A10ED85;
 Fri,  8 Apr 2022 05:42:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7BFDA882E;
 Fri,  8 Apr 2022 05:42:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5701091364129149070=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mullati Siva" <siva.mullati@intel.com>
Date: Fri, 08 Apr 2022 05:42:12 -0000
Message-ID: <164939653265.22675.16727142949927948808@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220404093125.73327-1-siva.mullati@intel.com>
In-Reply-To: <20220404093125.73327-1-siva.mullati@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Refactor_CT_access_to_use_iosys=5Fmap_=28rev4=29?=
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

--===============5701091364129149070==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Refactor CT access to use iosys_map (rev4)
URL   : https://patchwork.freedesktop.org/series/101148/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11473 -> Patchwork_22823
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22823 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22823, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/index.html

Participating hosts (46 -> 47)
------------------------------

  Additional (4): bat-rpls-1 bat-rpls-2 fi-tgl-u2 fi-pnv-d510 
  Missing    (3): fi-bsw-cyan fi-bwr-2160 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22823:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-pnv-d510:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-pnv-d510/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@basic:
    - fi-tgl-u2:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-tgl-u2:          NOTRUN -> [SKIP][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-rkl-guc:         [FAIL][4] ([i915#5602]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-rkl-guc/igt@gem_lmem_swapping@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-rkl-guc/igt@gem_lmem_swapping@basic.html
    - fi-hsw-4770:        [SKIP][6] ([fdo#109271]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-hsw-4770/igt@gem_lmem_swapping@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-hsw-4770/igt@gem_lmem_swapping@basic.html
    - fi-glk-j4005:       [FAIL][8] ([i915#5602]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       [FAIL][10] ([i915#4312]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-cfl-8109u/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-cfl-8109u/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][12] ([i915#4312]) -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-soraka/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-soraka/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][14] ([i915#4312]) -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-bxt-dsi/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-bxt-dsi/igt@runner@aborted.html
    - fi-kbl-x1275:       [FAIL][16] ([i915#4312]) -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-x1275/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-x1275/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][18] ([i915#2722]) -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-8809g/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-8809g/igt@runner@aborted.html
    - fi-hsw-g3258:       [FAIL][20] ([i915#4312]) -> [FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-hsw-g3258/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-hsw-g3258/igt@runner@aborted.html
    - fi-snb-2600:        [FAIL][22] ([i915#4312]) -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-snb-2600/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-snb-2600/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_basic@basic:
    - {bat-rpls-1}:       NOTRUN -> [SKIP][24] +145 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/bat-rpls-1/igt@gem_exec_basic@basic.html

  * igt@gem_lmem_swapping@basic:
    - {fi-tgl-dsi}:       NOTRUN -> [SKIP][25] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-dsi/igt@gem_lmem_swapping@basic.html

  * igt@kms_chamelium@vga-hpd-fast:
    - {bat-adls-5}:       NOTRUN -> [SKIP][26] +78 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/bat-adls-5/igt@kms_chamelium@vga-hpd-fast.html

  * igt@runner@aborted:
    - {bat-jsl-2}:        [FAIL][27] ([i915#4312]) -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/bat-jsl-2/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/bat-jsl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22823 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_basic@create-close:
    - fi-ivb-3770:        NOTRUN -> [SKIP][29] ([fdo#109271]) +146 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-ivb-3770/igt@gem_basic@create-close.html

  * igt@gem_close_race@basic-process:
    - fi-tgl-u2:          NOTRUN -> [SKIP][30] ([fdo#109315] / [i915#2575]) +66 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@gem_close_race@basic-process.html

  * igt@gem_lmem_swapping@basic:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#5602])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][32] ([fdo#111615] / [i915#2575])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][33] ([fdo#109271]) +145 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-ivb-3770:        NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#5341])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#5341])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][36] ([i915#2575] / [i915#5341])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-tgl-u2:          NOTRUN -> [SKIP][37] ([i915#2575]) +75 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][38] ([i915#3690] / [i915#4312])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         [SKIP][39] ([fdo#109271] / [i915#5602]) -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-apl-guc/igt@gem_lmem_swapping@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-7500u:       [FAIL][41] -> [FAIL][42] ([i915#5602])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-7500u/igt@gem_lmem_swapping@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-7500u/igt@gem_lmem_swapping@basic.html

  * igt@runner@aborted:
    - fi-kbl-7500u:       [FAIL][43] ([i915#4312] / [i915#5257]) -> [FAIL][44] ([i915#4312])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-7500u/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-7500u/igt@runner@aborted.html
    - bat-adlp-4:         [FAIL][45] ([i915#4312]) -> [FAIL][46] ([i915#5457])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/bat-adlp-4/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/bat-adlp-4/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][47] -> [FAIL][48] ([i915#4312])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-ivb-3770/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][49] ([i915#3690] / [i915#4312]) -> [FAIL][50] ([i915#4312] / [i915#5257])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-tgl-1115g4/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][51] -> [FAIL][52] ([i915#4312])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-skl-6700k2/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][53] ([i915#4312]) -> [FAIL][54] ([i915#3690] / [i915#4312])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-bsw-n3050/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-bsw-n3050/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][55] ([i915#4312]) -> [FAIL][56] ([i915#3690] / [i915#4312])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-bsw-nick/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-bsw-nick/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5457]: https://gitlab.freedesktop.org/drm/intel/issues/5457
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602


Build changes
-------------

  * Linux: CI_DRM_11473 -> Patchwork_22823

  CI-20190529: 20190529
  CI_DRM_11473: c6aee66322a45f20c89a1a26e214a70149635f02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22823: 47f1f65c4144f804b6d7cafad57181c297af9f8f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

47f1f65c4144 drm/i915/guc: Convert ct buffer to iosys_map

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/index.html

--===============5701091364129149070==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Refactor CT access to use iosys_map (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101148/">https://patchwork.freedesktop.org/series/101148/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11473 -&gt; Patchwork_22823</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22823 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22823, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/index.html</p>
<h2>Participating hosts (46 -&gt; 47)</h2>
<p>Additional (4): bat-rpls-1 bat-rpls-2 fi-tgl-u2 fi-pnv-d510 <br />
  Missing    (3): fi-bsw-cyan fi-bwr-2160 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22823:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-pnv-d510/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-rkl-guc/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-rkl-guc/igt@gem_lmem_swapping@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-hsw-4770/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-hsw-4770/igt@gem_lmem_swapping@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/bat-rpls-1/igt@gem_exec_basic@basic.html">SKIP</a> +145 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-dsi/igt@gem_lmem_swapping@basic.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/bat-adls-5/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> +78 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/bat-jsl-2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/bat-jsl-2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22823 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-ivb-3770/igt@gem_basic@create-close.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@gem_close_race@basic-process.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +66 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +145 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-7500u/igt@gem_lmem_swapping@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-7500u/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5457">i915#5457</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11473/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22823/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11473 -&gt; Patchwork_22823</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11473: c6aee66322a45f20c89a1a26e214a70149635f02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22823: 47f1f65c4144f804b6d7cafad57181c297af9f8f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>47f1f65c4144 drm/i915/guc: Convert ct buffer to iosys_map</p>

</body>
</html>

--===============5701091364129149070==--
