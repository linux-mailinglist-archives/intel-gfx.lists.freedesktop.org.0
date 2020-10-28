Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0042929CCCB
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 01:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE256E43B;
	Wed, 28 Oct 2020 00:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 811126E43A;
 Wed, 28 Oct 2020 00:28:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79985A8831;
 Wed, 28 Oct 2020 00:28:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 28 Oct 2020 00:28:28 -0000
Message-ID: <160384490846.21340.3620198628259385619@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
In-Reply-To: <20201027044618.719064-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Guard_debugfs_against_i?=
 =?utf-8?q?nvalid_access_without_display?=
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
Content-Type: multipart/mixed; boundary="===============0254385403=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0254385403==
Content-Type: multipart/alternative;
 boundary="===============7589120324064691189=="

--===============7589120324064691189==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Guard debugfs against invalid access without display
URL   : https://patchwork.freedesktop.org/series/83070/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9206 -> Patchwork_18782
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_18782 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18782, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18782:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-skl-lmem:        [DMESG-WARN][1] ([i915#2605]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-skl-lmem/igt@i915_module_load@reload.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9206 and Patchwork_18782:

### New CI tests (1) ###

  * boot:
    - Statuses : 41 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18782 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic-files:
    - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#1635])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-apl-guc/igt@gem_ctx_create@basic-files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-apl-guc/igt@gem_ctx_create@basic-files.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][9] -> [INCOMPLETE][10] ([i915#2606])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_psr@primary_page_flip:
    - fi-cml-u2:          [PASS][13] -> [INCOMPLETE][14] ([i915#2606])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-u2/igt@kms_psr@primary_page_flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-cml-u2/igt@kms_psr@primary_page_flip.html

  * igt@vgem_basic@unload:
    - fi-skl-guc:         [PASS][15] -> [DMESG-WARN][16] ([i915#2203])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-guc/igt@vgem_basic@unload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-skl-guc/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][17] ([i915#2417]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-byt-j1900:       [DMESG-WARN][19] ([i915#1982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-soraka/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-kbl-soraka/igt@i915_module_load@reload.html
    - {fi-ehl-1}:         [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ehl-1/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-ehl-1/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][25] ([i915#1982]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [INCOMPLETE][27] ([i915#2606]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-tgl-y:           [DMESG-WARN][29] ([i915#1982]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [DMESG-WARN][31] ([i915#402]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@prime_vgem@basic-read.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-y/igt@prime_vgem@basic-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2606]: https://gitlab.freedesktop.org/drm/intel/issues/2606
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9206 -> Patchwork_18782

  CI-20190529: 20190529
  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18782: 3b45adb5c1be9eb28c4cbbcb34ec0676fcd62acc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3b45adb5c1be drm/i915: remove some debug-only registers from MCHBAR
1477d756a2c8 drm/i915/display: remove debug message from error path
2007e0237e80 drm/i915: Guard debugfs against invalid access without display

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/index.html

--===============7589120324064691189==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Guard debugfs against invalid access without display</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83070/">https://patchwork.freedesktop.org/series/83070/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9206 -&gt; Patchwork_18782</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_18782 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18782, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18782:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-skl-lmem/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9206 and Patchwork_18782:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 41 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18782 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-apl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-apl-guc/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-u2/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-cml-u2/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-guc/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ehl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-ehl-1/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9206 -&gt; Patchwork_18782</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18782: 3b45adb5c1be9eb28c4cbbcb34ec0676fcd62acc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3b45adb5c1be drm/i915: remove some debug-only registers from MCHBAR<br />
1477d756a2c8 drm/i915/display: remove debug message from error path<br />
2007e0237e80 drm/i915: Guard debugfs against invalid access without display</p>

</body>
</html>

--===============7589120324064691189==--

--===============0254385403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0254385403==--
