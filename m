Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E68CA4BBA81
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 15:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35C210E9D8;
	Fri, 18 Feb 2022 14:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6BE210E3D0;
 Fri, 18 Feb 2022 14:16:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D68C6A47DF;
 Fri, 18 Feb 2022 14:16:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3583550803669287430=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 18 Feb 2022 14:16:24 -0000
Message-ID: <164519378487.25459.4791295862721887359@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Review_of_mode_copies?=
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

--===============3583550803669287430==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Review of mode copies
URL   : https://patchwork.freedesktop.org/series/100394/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11248 -> Patchwork_22330
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/index.html

Participating hosts (45 -> 44)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): fi-bsw-cyan shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22330:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hangcheck:
    - {bat-adlp-6}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/bat-adlp-6/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/bat-adlp-6/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_22330 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][4] -> [INCOMPLETE][5] ([i915#146])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] ([fdo#109271]) +57 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-skl-6600u:       NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][9] -> [INCOMPLETE][10] ([i915#3303])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][11] -> [DMESG-FAIL][12] ([i915#4528] / [i915#5026])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][14] ([fdo#109271]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6600u:       NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#533])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       NOTRUN -> [FAIL][16] ([i915#4547])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][17] ([fdo#109271] / [i915#1436] / [i915#4312])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-hsw-4770/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][18] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-blb-e6850/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][19] ([i915#4312])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][20] ([i915#4494] / [i915#4957]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][22] ([i915#3921]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][24] ([i915#4269]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][26] ([i915#295]) -> [PASS][27] +12 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][28] ([i915#4957]) -> [DMESG-FAIL][29] ([i915#4494] / [i915#4957])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11248 -> Patchwork_22330

  CI-20190529: 20190529
  CI_DRM_11248: 8861c3684bdcd4c8cb8385fbc37a2d9033dff955 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22330: 950fc955a036ae574828aa14203ed9fc07fe0900 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

950fc955a036 drm: Use drm_mode_copy()
b94948d78e9f drm: Use drm_mode_init() for on-stack modes
f84271d930db drm/panel: Use drm_mode_duplicate()
276d24d1417a drm/i915: Use drm_mode_copy()
504e28133d44 drm/i915: Use drm_mode_init() for on-stack modes
b6c95d6ebb89 drm/vc4: Use drm_mode_copy()
c9b80ec58e27 drm/tilcdc: Use drm_mode_copy()
7fca7fc81038 drm/sti: Use drm_mode_copy()
8638c264f5e7 drm/rockchip: Use drm_mode_copy()
4053f4603d4b drm/mtk: Use drm_mode_init() for on-stack modes
b89c110ef4dc drm/msm: Use drm_mode_copy()
0da547ebf332 drm/msm: Use drm_mode_init() for on-stack modes
689422fa9876 drm/msm: Nuke weird on stack mode copy
0914ad74172e drm/imx: Use drm_mode_duplicate()
b3e936908aec drm/hisilicon: Use drm_mode_init() for on-stack modes
89b7446299bc drm/gma500: Use drm_mode_copy()
006000c65793 drm/bridge: Use drm_mode_copy()
ffdcd369784b drm/radeon: Use drm_mode_copy()
a00ccc3d0a7c drm/amdgpu: Use drm_mode_copy()
53ab22b286e1 drm/amdgpu: Use drm_mode_init() for on-stack modes
8b58cd52cab8 drm/amdgpu: Remove pointless on stack mode copies
ec8eac53df11 drm: Add drm_mode_init()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/index.html

--===============3583550803669287430==
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
<tr><td><b>Series:</b></td><td>drm: Review of mode copies</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100394/">https://patchwork.freedesktop.org/series/100394/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11248 -&gt; Patchwork_22330</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): fi-bsw-cyan shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22330:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/bat-adlp-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/bat-adlp-6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22330 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11248/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22330/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11248 -&gt; Patchwork_22330</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11248: 8861c3684bdcd4c8cb8385fbc37a2d9033dff955 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22330: 950fc955a036ae574828aa14203ed9fc07fe0900 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>950fc955a036 drm: Use drm_mode_copy()<br />
b94948d78e9f drm: Use drm_mode_init() for on-stack modes<br />
f84271d930db drm/panel: Use drm_mode_duplicate()<br />
276d24d1417a drm/i915: Use drm_mode_copy()<br />
504e28133d44 drm/i915: Use drm_mode_init() for on-stack modes<br />
b6c95d6ebb89 drm/vc4: Use drm_mode_copy()<br />
c9b80ec58e27 drm/tilcdc: Use drm_mode_copy()<br />
7fca7fc81038 drm/sti: Use drm_mode_copy()<br />
8638c264f5e7 drm/rockchip: Use drm_mode_copy()<br />
4053f4603d4b drm/mtk: Use drm_mode_init() for on-stack modes<br />
b89c110ef4dc drm/msm: Use drm_mode_copy()<br />
0da547ebf332 drm/msm: Use drm_mode_init() for on-stack modes<br />
689422fa9876 drm/msm: Nuke weird on stack mode copy<br />
0914ad74172e drm/imx: Use drm_mode_duplicate()<br />
b3e936908aec drm/hisilicon: Use drm_mode_init() for on-stack modes<br />
89b7446299bc drm/gma500: Use drm_mode_copy()<br />
006000c65793 drm/bridge: Use drm_mode_copy()<br />
ffdcd369784b drm/radeon: Use drm_mode_copy()<br />
a00ccc3d0a7c drm/amdgpu: Use drm_mode_copy()<br />
53ab22b286e1 drm/amdgpu: Use drm_mode_init() for on-stack modes<br />
8b58cd52cab8 drm/amdgpu: Remove pointless on stack mode copies<br />
ec8eac53df11 drm: Add drm_mode_init()</p>

</body>
</html>

--===============3583550803669287430==--
