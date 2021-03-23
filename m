Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC357346DC6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 00:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4B56E1BE;
	Tue, 23 Mar 2021 23:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0A7B6E117;
 Tue, 23 Mar 2021 23:16:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9966A363B;
 Tue, 23 Mar 2021 23:16:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 23 Mar 2021 23:16:12 -0000
Message-ID: <161654137266.20054.10766965794781217211@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210319173603.521779-1-lucas.demarchi@intel.com>
In-Reply-To: <20210319173603.521779-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2lt?=
 =?utf-8?q?plify_intel=5Fsetup=5Foutputs=28=29_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1762503940=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1762503940==
Content-Type: multipart/alternative;
 boundary="===============2385172607388448638=="

--===============2385172607388448638==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Simplify intel_setup_outputs() (rev3)
URL   : https://patchwork.freedesktop.org/series/87068/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9886 -> Patchwork_19844
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/index.html

Known issues
------------

  Here are the changes found in Patchwork_19844 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-apl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_flink_basic@bad-open:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-tgl-y/igt@gem_flink_basic@bad-open.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-tgl-y/igt@gem_flink_basic@bad-open.html

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][4] ([fdo#109271]) +27 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [PASS][5] -> [TIMEOUT][6] ([i915#3145])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][7] ([i915#1610])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [PASS][8] -> [DMESG-FAIL][9] ([i915#3047])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-glk-dsi/igt@i915_selftest@live@client.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-glk-dsi/igt@i915_selftest@live@client.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][11] ([i915#2426])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-apl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][12] ([i915#402]) -> [PASS][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][14] ([i915#2502] / [i915#3145]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-8809g:       [SKIP][16] ([fdo#109271]) -> [PASS][17] +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][18] ([i915#3143]) -> [DMESG-WARN][19] ([i915#1982] / [i915#3143])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       [SKIP][20] ([fdo#109271]) -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-8809g:       [SKIP][22] ([fdo#109271]) -> [SKIP][23] ([fdo#109271] / [i915#533])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#3143]: https://gitlab.freedesktop.org/drm/intel/issues/3143
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3278]: https://gitlab.freedesktop.org/drm/intel/issues/3278
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (46 -> 43)
------------------------------

  Additional (2): fi-byt-j1900 fi-apl-guc 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9886 -> Patchwork_19844

  CI-20190529: 20190529
  CI_DRM_9886: 8e42a64e4ecbae3d447f9570d92bdaada9f45649 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6042: 529e182e30117d083ac0693011f1af04357d0115 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19844: cb9bc7367eec65bbbd368c75e3de90f1f969d8a2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cb9bc7367eec drm/i915/display: remove strap checks from gen 9
5ad9c9eb22d9 drm/i915/display: remove FIXME comment for intended feature
45ba56848b16 drm/i915/display: move vbt check to intel_ddi_init()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/index.html

--===============2385172607388448638==
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
<tr><td><b>Series:</b></td><td>Simplify intel_setup_outputs() (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87068/">https://patchwork.freedesktop.org/series/87068/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9886 -&gt; Patchwork_19844</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19844 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-open:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-tgl-y/igt@gem_flink_basic@bad-open.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-tgl-y/igt@gem_flink_basic@bad-open.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Additional (2): fi-byt-j1900 fi-apl-guc <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9886 -&gt; Patchwork_19844</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9886: 8e42a64e4ecbae3d447f9570d92bdaada9f45649 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6042: 529e182e30117d083ac0693011f1af04357d0115 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19844: cb9bc7367eec65bbbd368c75e3de90f1f969d8a2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cb9bc7367eec drm/i915/display: remove strap checks from gen 9<br />
5ad9c9eb22d9 drm/i915/display: remove FIXME comment for intended feature<br />
45ba56848b16 drm/i915/display: move vbt check to intel_ddi_init()</p>

</body>
</html>

--===============2385172607388448638==--

--===============1762503940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1762503940==--
