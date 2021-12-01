Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA8846599D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 00:02:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0AE6E91F;
	Wed,  1 Dec 2021 23:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63D476E8FA;
 Wed,  1 Dec 2021 23:02:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B7BFA7DFB;
 Wed,  1 Dec 2021 23:02:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2729035156733895673=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Wed, 01 Dec 2021 23:02:50 -0000
Message-ID: <163839977033.14897.16384259008380771339@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118205432.579910-1-michael.cheng@intel.com>
In-Reply-To: <20211118205432.579910-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Re-use_i915_macros_for_checking_PTEs_=28rev9=29?=
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

--===============2729035156733895673==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Re-use i915 macros for checking PTEs (rev9)
URL   : https://patchwork.freedesktop.org/series/97090/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10951 -> Patchwork_21721
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21721 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21721, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/index.html

Participating hosts (39 -> 34)
------------------------------

  Additional (2): fi-kbl-soraka fi-icl-u2 
  Missing    (7): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 fi-pnv-d510 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21721:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-kefka:       [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
    - fi-glk-dsi:         [PASS][4] -> [DMESG-FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6700k2:      [PASS][6] -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8700k:       [PASS][8] -> [DMESG-FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-n3050:       [PASS][10] -> [DMESG-FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7567u:       [PASS][12] -> [DMESG-FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][14] -> [DMESG-FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bxt-dsi:         [PASS][16] -> [DMESG-FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7500u:       [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_21721 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][20] ([fdo#109315]) +17 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][21] ([fdo#109271]) +18 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][22] ([fdo#109271]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [PASS][23] -> [INCOMPLETE][24] ([i915#146])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#2190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-icl-u2:          NOTRUN -> [SKIP][26] ([i915#2190])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#4613]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][28] ([i915#4613]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][29] ([i915#1886] / [i915#2291])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][31] ([fdo#111827]) +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          NOTRUN -> [SKIP][32] ([fdo#109278]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][33] ([fdo#109285])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#533])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][35] ([i915#3301])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [FAIL][36] ([i915#4547]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_10951 -> Patchwork_21721

  CI-20190529: 20190529
  CI_DRM_10951: b2f27a7653d9b5787aef65fc2976d47d38a51768 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6298: f062f4ae60ecf47af4b037c8f9952a1360662579 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21721: 3809a1d72d34fddd31fe42edcd25f8f0845510c2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3809a1d72d34 drm/i915: Re-use i915 macros for checking PTEs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/index.html

--===============2729035156733895673==
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
<tr><td><b>Series:</b></td><td>drm/i915: Re-use i915 macros for checking PTEs (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97090/">https://patchwork.freedesktop.org/series/97090/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10951 -&gt; Patchwork_21721</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21721 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21721, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/index.html</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Additional (2): fi-kbl-soraka fi-icl-u2 <br />
  Missing    (7): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 fi-pnv-d510 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21721:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21721 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10951/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21721/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10951 -&gt; Patchwork_21721</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10951: b2f27a7653d9b5787aef65fc2976d47d38a51768 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6298: f062f4ae60ecf47af4b037c8f9952a1360662579 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21721: 3809a1d72d34fddd31fe42edcd25f8f0845510c2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3809a1d72d34 drm/i915: Re-use i915 macros for checking PTEs</p>

</body>
</html>

--===============2729035156733895673==--
