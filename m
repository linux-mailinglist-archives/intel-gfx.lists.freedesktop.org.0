Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8036849BAB8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 18:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B170D10E2CE;
	Tue, 25 Jan 2022 17:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 44FC610E2CE;
 Tue, 25 Jan 2022 17:57:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 230D6A00A0;
 Tue, 25 Jan 2022 17:57:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6111955821883037524=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 25 Jan 2022 17:57:15 -0000
Message-ID: <164313343510.27364.1553689730206728714@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1643130139.git.jani.nikula@intel.com>
In-Reply-To: <cover.1643130139.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_drm/i915=3A_128b/132b_updates?=
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

--===============6111955821883037524==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp, drm/i915: 128b/132b updates
URL   : https://patchwork.freedesktop.org/series/99324/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11133 -> Patchwork_22101
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/index.html

Participating hosts (47 -> 43)
------------------------------

  Additional (2): fi-icl-u2 fi-kbl-guc 
  Missing    (6): bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22101 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-ilk-650:         [FAIL][1] -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11133/fi-ilk-650/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-ilk-650/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][3] ([fdo#109315]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-ilk-650:         NOTRUN -> [SKIP][4] ([fdo#109271]) +39 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +18 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-guc:         NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][8] ([i915#4613]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@kms_busy@basic:
    - fi-kbl-guc:         NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1845])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@kms_busy@basic.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][11] ([fdo#111827]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-kbl-guc:         NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          NOTRUN -> [SKIP][13] ([fdo#109278]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][14] ([fdo#109285])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][15] -> [DMESG-WARN][16] ([i915#4269])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11133/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-guc:         NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#533])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-kbl-guc:         NOTRUN -> [SKIP][18] ([fdo#109271]) +40 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][19] ([i915#3301])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][20] ([i915#2426] / [i915#4312])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [INCOMPLETE][21] ([i915#4547] / [i915#4838]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11133/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4838]: https://gitlab.freedesktop.org/drm/intel/issues/4838
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11133 -> Patchwork_22101

  CI-20190529: 20190529
  CI_DRM_11133: dce7a9d0c2b41f1f83338bd7d356a99debfca2c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6332: 27c9c3f5181a840c777399be7681d2cadd7940cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22101: 70912cc5c3aaf269a6c278bf2245766825fb72ee @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

70912cc5c3aa drm/i915/mst: update slot information for 128b/132b
d00649fdfc8b drm/i915/dp: give more time for CDS
ae473fb41e94 drm/i915/dp: add 128b/132b support to link status checks
0b15ba0af330 drm/i915/dp: rewrite DP 2.0 128b/132b link training based on errata
359fd2d968fb drm/i915/dp: move intel_dp_prepare_link_train() call
6a17182df365 drm/dp: add some new DPCD macros from DP 2.0 E11
e5a3a86f9a2a drm/dp: add 128b/132b link status helpers from DP 2.0 E11
b47aaf278ffa drm/dp: add drm_dp_128b132b_read_aux_rd_interval()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/index.html

--===============6111955821883037524==
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
<tr><td><b>Series:</b></td><td>drm/dp, drm/i915: 128b/132b updates</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99324/">https://patchwork.freedesktop.org/series/99324/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11133 -&gt; Patchwork_22101</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/index.html</p>
<h2>Participating hosts (47 -&gt; 43)</h2>
<p>Additional (2): fi-icl-u2 fi-kbl-guc <br />
  Missing    (6): bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22101 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11133/fi-ilk-650/boot.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-ilk-650/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@kms_busy@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11133/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-kbl-guc/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11133/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4838">i915#4838</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22101/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11133 -&gt; Patchwork_22101</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11133: dce7a9d0c2b41f1f83338bd7d356a99debfca2c3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6332: 27c9c3f5181a840c777399be7681d2cadd7940cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22101: 70912cc5c3aaf269a6c278bf2245766825fb72ee @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>70912cc5c3aa drm/i915/mst: update slot information for 128b/132b<br />
d00649fdfc8b drm/i915/dp: give more time for CDS<br />
ae473fb41e94 drm/i915/dp: add 128b/132b support to link status checks<br />
0b15ba0af330 drm/i915/dp: rewrite DP 2.0 128b/132b link training based on errata<br />
359fd2d968fb drm/i915/dp: move intel_dp_prepare_link_train() call<br />
6a17182df365 drm/dp: add some new DPCD macros from DP 2.0 E11<br />
e5a3a86f9a2a drm/dp: add 128b/132b link status helpers from DP 2.0 E11<br />
b47aaf278ffa drm/dp: add drm_dp_128b132b_read_aux_rd_interval()</p>

</body>
</html>

--===============6111955821883037524==--
