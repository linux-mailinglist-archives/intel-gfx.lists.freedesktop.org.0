Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6449F344FFD
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 20:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A37A6E5A0;
	Mon, 22 Mar 2021 19:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0EF2D6E079;
 Mon, 22 Mar 2021 19:38:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07680A8832;
 Mon, 22 Mar 2021 19:38:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arnd Bergmann" <arnd@kernel.org>
Date: Mon, 22 Mar 2021 19:38:35 -0000
Message-ID: <161644191599.19229.15296194457058929494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210322160253.4032422-1-arnd@kernel.org>
In-Reply-To: <20210322160253.4032422-1-arnd@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgdHJl?=
 =?utf-8?q?ewide=3A_address_gcc-11_-Wstringop-overread_warnings?=
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
Content-Type: multipart/mixed; boundary="===============1186549921=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1186549921==
Content-Type: multipart/alternative;
 boundary="===============5528546158879254481=="

--===============5528546158879254481==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: treewide: address gcc-11 -Wstringop-overread warnings
URL   : https://patchwork.freedesktop.org/series/88295/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9880 -> Patchwork_19830
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19830:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@nb-await@vcs0:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][1] +38 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@prime_vgem@basic-read:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-rkl-11500t/igt@prime_vgem@basic-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_19830 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-y:           NOTRUN -> [SKIP][3] ([fdo#109315])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-icl-y:           NOTRUN -> [SKIP][4] ([fdo#109315]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-tgl-y:           NOTRUN -> [SKIP][5] ([fdo#109315] / [i915#2575]) +16 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           NOTRUN -> [DMESG-WARN][6] ([i915#402]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][7] -> [INCOMPLETE][8] ([i915#155])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-dsi:         NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#2190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-y:           NOTRUN -> [SKIP][10] ([i915#2190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@gem_huc_copy@huc-copy.html
    - fi-icl-y:           NOTRUN -> [SKIP][11] ([i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [PASS][12] -> [TIMEOUT][13] ([i915#3145])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-glk-dsi:         NOTRUN -> [DMESG-WARN][14] ([i915#3143]) +26 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         NOTRUN -> [DMESG-WARN][15] ([i915#1982] / [i915#3143])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][16] -> [INCOMPLETE][17] ([i915#2782] / [i915#2940])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-icl-y:           NOTRUN -> [DMESG-FAIL][18] ([i915#2291] / [i915#541])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][19] ([i915#2373])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][20] ([i915#1759])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-y:           NOTRUN -> [SKIP][21] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           NOTRUN -> [SKIP][23] ([fdo#111827]) +8 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-y:           NOTRUN -> [SKIP][24] ([fdo#109285])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-y:           NOTRUN -> [SKIP][25] ([fdo#109285])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-glk-dsi:         NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#533])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-icl-y:           NOTRUN -> [SKIP][27] ([fdo#109278])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-icl-y:           NOTRUN -> [SKIP][28] ([fdo#110189]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-glk-dsi:         NOTRUN -> [SKIP][29] ([fdo#109271]) +27 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][30] ([i915#2502] / [i915#3145]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [DMESG-WARN][32] -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [DMESG-WARN][34] ([i915#203]) -> [PASS][35] +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - {fi-tgl-dsi}:       [DMESG-WARN][36] ([i915#402]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3143]: https://gitlab.freedesktop.org/drm/intel/issues/3143
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (42 -> 43)
------------------------------

  Additional (4): fi-icl-y fi-rkl-11500t fi-glk-dsi fi-tgl-y 
  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9880 -> Patchwork_19830

  CI-20190529: 20190529
  CI_DRM_9880: ec7a4e63b83999b055ba61da41bdd0ce656485d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6040: 69b578b6ab0a36750f0d23c223a3487fc88fb6a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19830: e9066fbd700e41816399a5113039b13cd92970ce @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e9066fbd700e drm/i915/dp: fix array overflow warning
e77df84376b1 drm/i915: avoid stringop-overread warning on pri_latency
f449f33af4a3 scsi: lpfc: fix gcc -Wstringop-overread warning
ce0bcacc57ff atmel: avoid gcc -Wstringop-overflow warning
a23dcecdfe93 ARM: sharpsl_param: work around -Wstringop-overread warning
c20cb7a6e190 cgroup: fix -Wzero-length-bounds warnings
85a87603017e qnx: avoid -Wstringop-overread warning
5dbb709eb530 ath11: Wstringop-overread warning
86478fbc483a security: commoncap: fix -Wstringop-overread warning
6128f7213e8c x86: tboot: avoid Wstringop-overread-warning
8b23b18b19c9 x86: compressed: avoid gcc-11 -Wstringop-overread warning

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/index.html

--===============5528546158879254481==
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
<tr><td><b>Series:</b></td><td>treewide: address gcc-11 -Wstringop-overread warnings</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88295/">https://patchwork.freedesktop.org/series/88295/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9880 -&gt; Patchwork_19830</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19830:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-rkl-11500t/igt@prime_vgem@basic-read.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19830 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1759">i915#1759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-glk-dsi/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19830/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 43)</h2>
<p>Additional (4): fi-icl-y fi-rkl-11500t fi-glk-dsi fi-tgl-y <br />
  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9880 -&gt; Patchwork_19830</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9880: ec7a4e63b83999b055ba61da41bdd0ce656485d4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6040: 69b578b6ab0a36750f0d23c223a3487fc88fb6a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19830: e9066fbd700e41816399a5113039b13cd92970ce @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e9066fbd700e drm/i915/dp: fix array overflow warning<br />
e77df84376b1 drm/i915: avoid stringop-overread warning on pri_latency<br />
f449f33af4a3 scsi: lpfc: fix gcc -Wstringop-overread warning<br />
ce0bcacc57ff atmel: avoid gcc -Wstringop-overflow warning<br />
a23dcecdfe93 ARM: sharpsl_param: work around -Wstringop-overread warning<br />
c20cb7a6e190 cgroup: fix -Wzero-length-bounds warnings<br />
85a87603017e qnx: avoid -Wstringop-overread warning<br />
5dbb709eb530 ath11: Wstringop-overread warning<br />
86478fbc483a security: commoncap: fix -Wstringop-overread warning<br />
6128f7213e8c x86: tboot: avoid Wstringop-overread-warning<br />
8b23b18b19c9 x86: compressed: avoid gcc-11 -Wstringop-overread warning</p>

</body>
</html>

--===============5528546158879254481==--

--===============1186549921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1186549921==--
