Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC3260661F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 18:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A261C10E543;
	Thu, 20 Oct 2022 16:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14A4710E524;
 Thu, 20 Oct 2022 16:46:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10B5BAADDA;
 Thu, 20 Oct 2022 16:46:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2449296847844075075=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 20 Oct 2022 16:46:54 -0000
Message-ID: <166628441406.8588.12159306437721282908@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221020124437.2429511-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221020124437.2429511-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgR2V0?=
 =?utf-8?q?_dsc_optimal_output_bpp_=28rev2=29?=
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

--===============2449296847844075075==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Get dsc optimal output bpp (rev2)
URL   : https://patchwork.freedesktop.org/series/105200/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12267 -> Patchwork_105200v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105200v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105200v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/index.html

Participating hosts (46 -> 45)
------------------------------

  Additional (2): bat-atsm-1 fi-tgl-dsi 
  Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-hsw-4200u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105200v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-adl-ddr5:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-adl-ddr5/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-adl-ddr5/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-adlp-4/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_105200v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][5] -> [FAIL][6] ([i915#7229])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_linear_blits@basic:
    - fi-pnv-d510:        [PASS][7] -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-pnv-d510/igt@gem_linear_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-pnv-d510/igt@gem_linear_blits@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] ([i915#4613]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][10] -> [INCOMPLETE][11] ([i915#6972])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][12] -> [INCOMPLETE][13] ([i915#4983])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          NOTRUN -> [SKIP][14] ([fdo#111827])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][15] ([fdo#109295] / [i915#3301])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][16] ([i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-adlp-4/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][17] ([fdo#109271] / [i915#4312])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][18] ([i915#2867]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-icl-u2:          [DMESG-WARN][20] ([i915#4890]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-kbl-7567u:       [DMESG-FAIL][22] ([i915#7270]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
    - {bat-jsl-1}:        [DMESG-FAIL][24] ([i915#7270]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][26] ([i915#4983]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/bat-rpls-2/igt@i915_selftest@live@reset.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#6856]: https://gitlab.freedesktop.org/drm/intel/issues/6856
  [i915#6972]: https://gitlab.freedesktop.org/drm/intel/issues/6972
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7030]: https://gitlab.freedesktop.org/drm/intel/issues/7030
  [i915#7125]: https://gitlab.freedesktop.org/drm/intel/issues/7125
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7269]: https://gitlab.freedesktop.org/drm/intel/issues/7269
  [i915#7270]: https://gitlab.freedesktop.org/drm/intel/issues/7270


Build changes
-------------

  * Linux: CI_DRM_12267 -> Patchwork_105200v2

  CI-20190529: 20190529
  CI_DRM_12267: 1e08742713bca00944d4d38d1080a14dbfa649dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7020: 05b7eaf9ade2216d17c069c89439015757ee25f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105200v2: 1e08742713bca00944d4d38d1080a14dbfa649dc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bd1e310626d1 drm/i915/dp: Get optimal link config to have best compressed bpp
560871dc414d drm/i915/dp: Rename helpers to get DSC max pipe bpp and max output bpp
00f85215cea6 drm/i915/dp: Check if force dsc bpc <= max requested bpc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/index.html

--===============2449296847844075075==
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
<tr><td><b>Series:</b></td><td>Get dsc optimal output bpp (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105200/">https://patchwork.freedesktop.org/series/105200/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12267 -&gt; Patchwork_105200v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105200v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_105200v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Additional (2): bat-atsm-1 fi-tgl-dsi <br />
  Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-hsw-4200u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105200v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-adl-ddr5/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-adl-ddr5/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105200v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-pnv-d510/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-pnv-d510/igt@gem_linear_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6972">i915#6972</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4890">i915#4890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-icl-u2/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7270">i915#7270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">PASS</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7270">i915#7270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12267/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v2/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12267 -&gt; Patchwork_105200v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12267: 1e08742713bca00944d4d38d1080a14dbfa649dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7020: 05b7eaf9ade2216d17c069c89439015757ee25f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105200v2: 1e08742713bca00944d4d38d1080a14dbfa649dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bd1e310626d1 drm/i915/dp: Get optimal link config to have best compressed bpp<br />
560871dc414d drm/i915/dp: Rename helpers to get DSC max pipe bpp and max output bpp<br />
00f85215cea6 drm/i915/dp: Check if force dsc bpc &lt;= max requested bpc</p>

</body>
</html>

--===============2449296847844075075==--
