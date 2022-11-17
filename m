Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E805F62CF6D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:20:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AB5310E4F3;
	Thu, 17 Nov 2022 00:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C32210E4F3;
 Thu, 17 Nov 2022 00:20:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34FA5A00E8;
 Thu, 17 Nov 2022 00:20:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7075604266763626373=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 17 Nov 2022 00:20:44 -0000
Message-ID: <166864444418.12187.18413180924506089624@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Finish_=28de=29gamma_readout_=28rev9=29?=
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

--===============7075604266763626373==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Finish (de)gamma readout (rev9)
URL   : https://patchwork.freedesktop.org/series/79614/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12390 -> Patchwork_79614v9
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/index.html

Participating hosts (41 -> 40)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (2): fi-rkl-11600 bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_79614v9:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2:
    - {bat-dg2-11}:       [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_79614v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html
    - fi-pnv-d510:        [PASS][4] -> [FAIL][5] ([i915#7229])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adlp-4:         NOTRUN -> [SKIP][8] ([i915#4613]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-4:         NOTRUN -> [SKIP][9] ([i915#6621])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][10] ([i915#7099])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][11] ([i915#1886])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - bat-adlp-4:         NOTRUN -> [SKIP][13] ([fdo#111827])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-adlp-4:         NOTRUN -> [SKIP][15] ([i915#3546])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@prime_vgem@basic-userptr:
    - bat-adlp-4:         NOTRUN -> [SKIP][16] ([fdo#109295] / [i915#3301] / [i915#3708])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - bat-adlp-4:         NOTRUN -> [SKIP][17] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [INCOMPLETE][18] ([i915#6434]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-rpls-2/igt@i915_module_load@reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-adlp-4:         [DMESG-WARN][20] ([i915#7077]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][22] ([i915#4785]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2:
    - {bat-dg2-11}:       [FAIL][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7099]: https://gitlab.freedesktop.org/drm/intel/issues/7099
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456


Build changes
-------------

  * Linux: CI_DRM_12390 -> Patchwork_79614v9

  CI-20190529: 20190529
  CI_DRM_12390: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7062: 6539ea5fe17fce683133c45f07fac316593ee1f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_79614v9: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9ee833edfa2a drm/i915: Do state check for color management changes
16f328c4256a drm/i915: Add 10bit gamma mode for gen2/3
df0138ebdc4c drm/i915: Use gamma LUT for RGB limited range compression
5748a2f3366d drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output
6066a39a55c1 drm/i915: Rework legacy LUT handling
303142081ede drm/i915: Finish the LUT state checker
a42152675de1 drm/i915: Make .read_luts() mandatory
d77976c1e113 drm/i915: Prep for C8 palette readout
c86699303ddf drm/i915: Make ilk_read_luts() capable of degamma readout
dcb231dbed5a drm/i915: Add gamma/degamma readout for ivb/hsw
38a24401feaf drm/i915: Add gamma/degamma readout for bdw+
2cdcfa23b51f drm/i915: Read out CHV CGM degamma
3aa84b0fe152 drm/i915: Add glk+ degamma readout
e9f02b500a29 drm/i915: s/gamma/post_csc_lut/
7e75e424c213 drm/i915: Fix adl+ degamma LUT size
3cf5a59695e7 drm/i915: Reorder 12.4 lut udw vs. ldw functions
20966a1586c7 drm/i915: Clean up chv CGM (de)gamma defines
73f1b085e60a drm/i915: Clean up 12.4bit precision palette defines
d12da3bc37e9 drm/i915: Clean up 10bit precision palette defines
d14c2e027705 drm/i915: Clean up legacy palette defines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/index.html

--===============7075604266763626373==
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
<tr><td><b>Series:</b></td><td>drm/i915: Finish (de)gamma readout (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79614/">https://patchwork.freedesktop.org/series/79614/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12390 -&gt; Patchwork_79614v9</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (2): fi-rkl-11600 bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_79614v9:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2:<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_79614v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7099">i915#7099</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-rpls-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v9/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12390 -&gt; Patchwork_79614v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12390: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7062: 6539ea5fe17fce683133c45f07fac316593ee1f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_79614v9: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9ee833edfa2a drm/i915: Do state check for color management changes<br />
16f328c4256a drm/i915: Add 10bit gamma mode for gen2/3<br />
df0138ebdc4c drm/i915: Use gamma LUT for RGB limited range compression<br />
5748a2f3366d drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output<br />
6066a39a55c1 drm/i915: Rework legacy LUT handling<br />
303142081ede drm/i915: Finish the LUT state checker<br />
a42152675de1 drm/i915: Make .read_luts() mandatory<br />
d77976c1e113 drm/i915: Prep for C8 palette readout<br />
c86699303ddf drm/i915: Make ilk_read_luts() capable of degamma readout<br />
dcb231dbed5a drm/i915: Add gamma/degamma readout for ivb/hsw<br />
38a24401feaf drm/i915: Add gamma/degamma readout for bdw+<br />
2cdcfa23b51f drm/i915: Read out CHV CGM degamma<br />
3aa84b0fe152 drm/i915: Add glk+ degamma readout<br />
e9f02b500a29 drm/i915: s/gamma/post_csc_lut/<br />
7e75e424c213 drm/i915: Fix adl+ degamma LUT size<br />
3cf5a59695e7 drm/i915: Reorder 12.4 lut udw vs. ldw functions<br />
20966a1586c7 drm/i915: Clean up chv CGM (de)gamma defines<br />
73f1b085e60a drm/i915: Clean up 12.4bit precision palette defines<br />
d12da3bc37e9 drm/i915: Clean up 10bit precision palette defines<br />
d14c2e027705 drm/i915: Clean up legacy palette defines</p>

</body>
</html>

--===============7075604266763626373==--
