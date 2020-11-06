Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A299B2AA187
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Nov 2020 00:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEA96EB5A;
	Fri,  6 Nov 2020 23:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C5406EB58;
 Fri,  6 Nov 2020 23:48:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C50EA8832;
 Fri,  6 Nov 2020 23:48:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 06 Nov 2020 23:48:34 -0000
Message-ID: <160470651401.19146.7197177792691719295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
In-Reply-To: <20201106225531.920641-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_drm/i915/display=3A_add_namespace_t?=
 =?utf-8?q?o_intel=5Fprepare=5Freset?=
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
Content-Type: multipart/mixed; boundary="===============0929350062=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0929350062==
Content-Type: multipart/alternative;
 boundary="===============6641912986998034451=="

--===============6641912986998034451==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/8] drm/i915/display: add namespace to intel_prepare_reset
URL   : https://patchwork.freedesktop.org/series/83596/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9285 -> Patchwork_18870
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9285 and Patchwork_18870:

### New CI tests (1) ###

  * boot:
    - Statuses : 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18870 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-tgl-y/igt@gem_sync@basic-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-icl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-byt-j1900/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-bsw-nick:        [INCOMPLETE][11] ([i915#1250] / [i915#1436]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-bsw-nick/igt@debugfs_test@read_all_entries.html

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][13] ([i915#402]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-tgl-y/igt@gem_linear_blits@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-tgl-y/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-guc:         [DMESG-FAIL][15] ([i915#541]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][17] ([i915#1982]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-icl-u2:          [DMESG-WARN][19] ([i915#1982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-gdg-551 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9285 -> Patchwork_18870

  CI-20190529: 20190529
  CI_DRM_9285: 7e07700366213c40df3c78b23d025e4df985b2b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18870: b7d2f75809329c6aa4211dda42feb976d32b49d5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b7d2f7580932 drm/i915: Do not setup hpd without display
8f2b5126f82c drm/i915: move display-related to the end of intel_irq_init()
8f9258ed8a5b drm/i915: re-order if/else ladder for hpd_irq_setup
f3bc7e47002d drm/i915/display: Do not set any power wells when there is no display
065174107b4c drm/i915/display: return earlier from intel_modeset_init() without display
0594845f3ddc drm/i915/display: Do not reset display when there is none
afa4f1bc58c0 drm/i915/display: add namespace to intel_finish_reset
5377b1e6da20 drm/i915/display: add namespace to intel_prepare_reset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/index.html

--===============6641912986998034451==
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
<tr><td><b>Series:</b></td><td>series starting with [1/8] drm/i915/display: add namespace to intel_prepare_reset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83596/">https://patchwork.freedesktop.org/series/83596/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9285 -&gt; Patchwork_18870</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9285 and Patchwork_18870:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18870 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-tgl-y/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-tgl-y/igt@gem_sync@basic-each.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-icl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-icl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9285/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18870/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-gdg-551 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9285 -&gt; Patchwork_18870</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9285: 7e07700366213c40df3c78b23d025e4df985b2b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18870: b7d2f75809329c6aa4211dda42feb976d32b49d5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b7d2f7580932 drm/i915: Do not setup hpd without display<br />
8f2b5126f82c drm/i915: move display-related to the end of intel_irq_init()<br />
8f9258ed8a5b drm/i915: re-order if/else ladder for hpd_irq_setup<br />
f3bc7e47002d drm/i915/display: Do not set any power wells when there is no display<br />
065174107b4c drm/i915/display: return earlier from intel_modeset_init() without display<br />
0594845f3ddc drm/i915/display: Do not reset display when there is none<br />
afa4f1bc58c0 drm/i915/display: add namespace to intel_finish_reset<br />
5377b1e6da20 drm/i915/display: add namespace to intel_prepare_reset</p>

</body>
</html>

--===============6641912986998034451==--

--===============0929350062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0929350062==--
