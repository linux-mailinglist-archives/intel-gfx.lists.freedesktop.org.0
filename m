Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B177BEC31
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 23:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 735A610E1B2;
	Mon,  9 Oct 2023 21:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A94610E1AA;
 Mon,  9 Oct 2023 21:02:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4205BAADE3;
 Mon,  9 Oct 2023 21:02:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7223178821958694016=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 09 Oct 2023 21:02:28 -0000
Message-ID: <169688534823.24831.8915204744453423923@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/dsb=3A_Allocate_command_bu?=
 =?utf-8?q?ffer_from_local_memory?=
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

--===============7223178821958694016==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915/dsb: Allocate command buffer from local memory
URL   : https://patchwork.freedesktop.org/series/124818/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13730 -> Patchwork_124818v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_124818v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-bsw-n3050/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-bsw-n3050/boot.html
    - fi-hsw-4770:        [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-hsw-4770/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-FAIL][6] ([i915#5334] / [i915#7872])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][7] -> [ABORT][8] ([i915#9414])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][9] ([i915#1845]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [DMESG-WARN][10] ([i915#180] / [i915#7634]) -> [PASS][11] +1 other test pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [INCOMPLETE][12] ([i915#9275]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [DMESG-WARN][14] ([i915#180] / [i915#1982] / [i915#7634]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-apl-guc:         [DMESG-WARN][16] ([i915#180] / [i915#7634] / [i915#8585]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [TIMEOUT][18] ([i915#6794] / [i915#7392]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-rpls-1/igt@i915_selftest@live@mman.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@reset:
    - fi-apl-guc:         [DMESG-WARN][20] ([i915#7634]) -> [PASS][21] +36 other tests pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@i915_selftest@live@reset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [WARN][22] ([i915#8747]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [FAIL][24] ([fdo#103375]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-apl-guc:         [DMESG-WARN][26] ([i915#8703]) -> [PASS][27] +1 other test pass
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - fi-apl-guc:         [DMESG-WARN][28] -> [PASS][29] +51 other tests pass
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-apl-guc:         [DMESG-WARN][30] ([i915#1982]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_flip@basic-plain-flip@b-dp1:
    - fi-apl-guc:         [DMESG-WARN][32] ([i915#180] / [i915#8585] / [i915#8703]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_flip@basic-plain-flip@b-dp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_flip@basic-plain-flip@b-dp1.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:
    - fi-apl-guc:         [DMESG-WARN][34] ([i915#180] / [i915#8703]) -> [PASS][35] +24 other tests pass
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:
    - bat-adlp-6:         [ABORT][36] ([i915#7977] / [i915#8668]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][38] ([i915#8668]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7634]: https://gitlab.freedesktop.org/drm/intel/issues/7634
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8703]: https://gitlab.freedesktop.org/drm/intel/issues/8703
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13730 -> Patchwork_124818v1

  CI-20190529: 20190529
  CI_DRM_13730: 1c99af947eb335283794db0644648dc4b40f44cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7522: 334a1178a36a1327dc7fbba43ab16d1f3a7d887b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124818v1: 1c99af947eb335283794db0644648dc4b40f44cd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ee5a1c8888b5 drm/i915: Do state check for color management changes
01f4e33bbe29 drm/i915/dsb: Re-instate DSB for LUT updates
53dd31201299 drm/i915/dsb: Correct DSB command buffer cache coherency settings
c4c6c6e2038e drm/i915/dsb: Allocate command buffer from local memory

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/index.html

--===============7223178821958694016==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915/dsb: Allocate command buffer from local memory</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124818/">https://patchwork.freedesktop.org/series/124818/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13730 -&gt; Patchwork_124818v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124818v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@i915_selftest@live@reset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@i915_selftest@live@reset.html">PASS</a> +36 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8703">i915#8703</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> +51 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_flip@basic-plain-flip@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8703">i915#8703</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_flip@basic-plain-flip@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8703">i915#8703</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">PASS</a> +24 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13730/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124818v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13730 -&gt; Patchwork_124818v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13730: 1c99af947eb335283794db0644648dc4b40f44cd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7522: 334a1178a36a1327dc7fbba43ab16d1f3a7d887b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124818v1: 1c99af947eb335283794db0644648dc4b40f44cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ee5a1c8888b5 drm/i915: Do state check for color management changes<br />
01f4e33bbe29 drm/i915/dsb: Re-instate DSB for LUT updates<br />
53dd31201299 drm/i915/dsb: Correct DSB command buffer cache coherency settings<br />
c4c6c6e2038e drm/i915/dsb: Allocate command buffer from local memory</p>

</body>
</html>

--===============7223178821958694016==--
