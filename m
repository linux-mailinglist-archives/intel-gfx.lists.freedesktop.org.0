Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B93C14B9A35
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 08:56:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C968F10E96A;
	Thu, 17 Feb 2022 07:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E57F710E96A;
 Thu, 17 Feb 2022 07:56:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2F07A66C9;
 Thu, 17 Feb 2022 07:56:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1322181166264308625=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 17 Feb 2022 07:56:25 -0000
Message-ID: <164508458592.18053.9699944656896739753@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220216174147.3073235-1-lucas.demarchi@intel.com>
In-Reply-To: <20220216174147.3073235-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Refactor_ADS_access_to_use_iosys=5Fmap_=28rev3=29?=
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

--===============1322181166264308625==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Refactor ADS access to use iosys_map (rev3)
URL   : https://patchwork.freedesktop.org/series/99711/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11238 -> Patchwork_22301
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22301 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22301, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/index.html

Participating hosts (47 -> 44)
------------------------------

  Additional (2): bat-adls-5 fi-pnv-d510 
  Missing    (5): fi-bxt-dsi shard-tglu fi-bsw-cyan shard-dg1 bat-jsl-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22301:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@evict:
    - fi-kbl-soraka:      [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-kbl-soraka/igt@i915_selftest@live@evict.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-kbl-soraka/igt@i915_selftest@live@evict.html

  
Known issues
------------

  Here are the changes found in Patchwork_22301 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-ivb-3770:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][4] -> [INCOMPLETE][5] ([i915#146])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] ([fdo#109271]) +57 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-skl-6600u:       NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-kbl-soraka:      [PASS][9] -> [DMESG-WARN][10] ([i915#4391])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][11] -> [DMESG-FAIL][12] ([i915#5026])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][14] ([fdo#109271]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][15] -> [DMESG-WARN][16] ([i915#4269])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6600u:       NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#533])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       NOTRUN -> [FAIL][18] ([i915#4547])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][19] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-2}:       [INCOMPLETE][20] ([i915#4898]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [DMESG-WARN][22] ([i915#2867]) -> [PASS][23] +16 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][24] ([i915#3303]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][26] ([i915#4957]) -> [DMESG-FAIL][27] ([i915#4494] / [i915#4957])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3138]: https://gitlab.freedesktop.org/drm/intel/issues/3138
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4993]: https://gitlab.freedesktop.org/drm/intel/issues/4993
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11238 -> Patchwork_22301

  CI-20190529: 20190529
  CI_DRM_11238: e141e36b2871c529379f7ec7d5d6ebae3137a51b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22301: 14d3c077b2990ecd97319d7d1cb7c13286308fc4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

14d3c077b299 drm/i915/guc: Remove plain ads_blob pointer
aa46f3f7041b drm/i915/guc: Convert __guc_ads_init to iosys_map
79242ec38bba drm/i915/guc: Convert guc_mmio_reg_state_init to iosys_map
f5682a7a730d drm/i915/guc: Convert capture list to iosys_map
c4b18c55e3d1 drm/i915/guc: Convert mapping table to iosys_map
70f013d0a2ad drm/i915/guc: Replace check for golden context size
3115fab4b911 drm/i915/guc: Convert golden context prep to iosys_map
0481cbf77890 drm/i915/guc: Convert guc_ads_private_data_reset to iosys_map
af050820f83c drm/i915/guc: Convert engine record to iosys_map
23e5eaa48251 drm/i915/guc: Convert policies update to iosys_map
d69fd819ad0b drm/i915/guc: Convert golden context init to iosys_map
955dd8aab6d5 drm/i915/guc: Add read/write helpers for ADS blob
7a7bd9870c5e drm/i915/guc: Keep iosys_map of ads_blob around
b26af08d993c drm/i915/gt: Add helper for shmem copy to iosys_map
7ab81996b485 iosys-map: Add a few more helpers
3c4f364a17be iosys-map: Add offset to iosys_map_memcpy_to()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/index.html

--===============1322181166264308625==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Refactor ADS access to use iosys_map (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99711/">https://patchwork.freedesktop.org/series/99711/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11238 -&gt; Patchwork_22301</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22301 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22301, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/index.html</p>
<h2>Participating hosts (47 -&gt; 44)</h2>
<p>Additional (2): bat-adls-5 fi-pnv-d510 <br />
  Missing    (5): fi-bxt-dsi shard-tglu fi-bsw-cyan shard-dg1 bat-jsl-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22301:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@evict:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-kbl-soraka/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-kbl-soraka/igt@i915_selftest@live@evict.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22301 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-ivb-3770/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4898">i915#4898</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22301/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11238 -&gt; Patchwork_22301</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11238: e141e36b2871c529379f7ec7d5d6ebae3137a51b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22301: 14d3c077b2990ecd97319d7d1cb7c13286308fc4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>14d3c077b299 drm/i915/guc: Remove plain ads_blob pointer<br />
aa46f3f7041b drm/i915/guc: Convert __guc_ads_init to iosys_map<br />
79242ec38bba drm/i915/guc: Convert guc_mmio_reg_state_init to iosys_map<br />
f5682a7a730d drm/i915/guc: Convert capture list to iosys_map<br />
c4b18c55e3d1 drm/i915/guc: Convert mapping table to iosys_map<br />
70f013d0a2ad drm/i915/guc: Replace check for golden context size<br />
3115fab4b911 drm/i915/guc: Convert golden context prep to iosys_map<br />
0481cbf77890 drm/i915/guc: Convert guc_ads_private_data_reset to iosys_map<br />
af050820f83c drm/i915/guc: Convert engine record to iosys_map<br />
23e5eaa48251 drm/i915/guc: Convert policies update to iosys_map<br />
d69fd819ad0b drm/i915/guc: Convert golden context init to iosys_map<br />
955dd8aab6d5 drm/i915/guc: Add read/write helpers for ADS blob<br />
7a7bd9870c5e drm/i915/guc: Keep iosys_map of ads_blob around<br />
b26af08d993c drm/i915/gt: Add helper for shmem copy to iosys_map<br />
7ab81996b485 iosys-map: Add a few more helpers<br />
3c4f364a17be iosys-map: Add offset to iosys_map_memcpy_to()</p>

</body>
</html>

--===============1322181166264308625==--
