Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC23242E96F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 08:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E597E6ECE3;
	Fri, 15 Oct 2021 06:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C90A96ECE3;
 Fri, 15 Oct 2021 06:55:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2A63A8830;
 Fri, 15 Oct 2021 06:55:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8390959594969409597=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 06:55:15 -0000
Message-ID: <163428091578.29321.3916735836394017846@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211015052036.20290-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20211015052036.20290-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_memory_bandwidth_formulae_=28rev7=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8390959594969409597==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Update memory bandwidth formulae (rev7)
URL   : https://patchwork.freedesktop.org/series/95138/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10742 -> Patchwork_21345
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21345 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21345, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21345:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-y:           [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-icl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-icl-y/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-icl-y:           NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-icl-y/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {fi-ehl-2}:         [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-ehl-2/igt@debugfs_test@read_all_entries.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-ehl-2/igt@debugfs_test@read_all_entries.html
    - {fi-jsl-1}:         [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-jsl-1/igt@debugfs_test@read_all_entries.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-jsl-1/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21345 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([fdo#109315])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][11] ([fdo#109271]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][12] ([fdo#109315] / [i915#2575]) +16 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][13] ([i915#2190])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][14] ([i915#1155])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][15] -> [INCOMPLETE][16] ([i915#2940])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][17] ([fdo#111827]) +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][18] ([i915#4103]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][19] ([fdo#109285])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][20] -> [DMESG-WARN][21] ([i915#4269])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][22] ([i915#1072]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][23] ([i915#3301])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][24] ([fdo#109271] / [i915#1436] / [i915#3428])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][25] ([i915#1602] / [i915#2029])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][26] ([i915#2940]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - fi-cfl-8109u:       [FAIL][28] ([i915#4165]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][30] ([i915#295]) -> [PASS][31] +14 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Participating hosts (39 -> 37)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (3): fi-bsw-cyan bat-dg1-6 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10742 -> Patchwork_21345

  CI-20190529: 20190529
  CI_DRM_10742: 22f87ae60973876dff6d4264404251fb5b93f697 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6250: 3c2ac88757f0d0ac9450487d314fcaceebc8bc26 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21345: a7d8528b1e8dfb69076da821860b1be90a6012ce @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a7d8528b1e8d drm/i915: Update memory bandwidth formulae

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/index.html

--===============8390959594969409597==
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
<tr><td><b>Series:</b></td><td>drm/i915: Update memory bandwidth formulae (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95138/">https://patchwork.freedesktop.org/series/95138/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10742 -&gt; Patchwork_21345</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21345 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21345, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21345:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-icl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-icl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-icl-y/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-ehl-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-ehl-2/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-jsl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-jsl-1/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21345 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10742/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21345/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +14 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (3): fi-bsw-cyan bat-dg1-6 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10742 -&gt; Patchwork_21345</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10742: 22f87ae60973876dff6d4264404251fb5b93f697 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6250: 3c2ac88757f0d0ac9450487d314fcaceebc8bc26 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21345: a7d8528b1e8dfb69076da821860b1be90a6012ce @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a7d8528b1e8d drm/i915: Update memory bandwidth formulae</p>

</body>
</html>

--===============8390959594969409597==--
