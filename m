Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AD254A310
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 02:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8CA10FD43;
	Tue, 14 Jun 2022 00:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65D7B10FD40;
 Tue, 14 Jun 2022 00:07:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B513A0003;
 Tue, 14 Jun 2022 00:07:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4995379314678284448=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 14 Jun 2022 00:07:45 -0000
Message-ID: <165516526536.12486.12819798748724943333@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220613102241.9236-1-Jason@zx2c4.com>
In-Reply-To: <20220613102241.9236-1-Jason@zx2c4.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Re-add_check_for_low_voltage_sku_for_max_dp_so?=
 =?utf-8?q?urce_rate?=
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

--===============4995379314678284448==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Re-add check for low voltage sku for max dp source rate
URL   : https://patchwork.freedesktop.org/series/105048/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11755 -> Patchwork_105048v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): fi-cml-u2 bat-jsl-2 

Known issues
------------

  Here are the changes found in Patchwork_105048v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-4:         [PASS][1] -> [DMESG-WARN][2] ([i915#3576]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-adlp-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][3] -> [INCOMPLETE][4] ([i915#4418])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][5] ([i915#3921])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][6] -> [DMESG-FAIL][7] ([i915#4528])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-kbl-soraka:      [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
    - fi-tgl-u2:          [PASS][10] -> [DMESG-WARN][11] ([i915#402]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-guc:         NOTRUN -> [SKIP][12] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-kbl-guc/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [DMESG-WARN][13] ([i915#5122]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-FAIL][15] ([i915#62]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@coherency:
    - {bat-dg2-9}:        [DMESG-WARN][17] ([i915#5763]) -> [PASS][18] +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-dg2-9/igt@i915_selftest@live@coherency.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-dg2-9/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-bdw-5557u:       [INCOMPLETE][19] ([i915#5502]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-jsl-1}:         [DMESG-FAIL][21] ([i915#5334]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [DMESG-WARN][23] ([i915#5904]) -> [PASS][24] +29 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [DMESG-WARN][25] ([i915#5904] / [i915#62]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_busy@basic@flip:
    - bat-adlp-4:         [DMESG-WARN][27] ([i915#3576]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-adlp-4/igt@kms_busy@basic@flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-adlp-4/igt@kms_busy@basic@flip.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][29] ([i915#3576]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][31] ([i915#62]) -> [PASS][32] +15 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5502]: https://gitlab.freedesktop.org/drm/intel/issues/5502
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#6163]: https://gitlab.freedesktop.org/drm/intel/issues/6163
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Build changes
-------------

  * Linux: CI_DRM_11755 -> Patchwork_105048v1

  CI-20190529: 20190529
  CI_DRM_11755: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6522: 5be5a1a1f168a59614101b77385f05f12ec7d30a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105048v1: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1ed04cf69096 drm/i915/display: Re-add check for low voltage sku for max dp source rate

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/index.html

--===============4995379314678284448==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Re-add check for low voltage sku for max dp source rate</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105048/">https://patchwork.freedesktop.org/series/105048/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11755 -&gt; Patchwork_105048v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): fi-cml-u2 bat-jsl-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105048v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-kbl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-dg2-9/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5763">i915#5763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-dg2-9/igt@i915_selftest@live@coherency.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5502">i915#5502</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-adlp-4/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-adlp-4/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105048v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> +15 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11755 -&gt; Patchwork_105048v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11755: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6522: 5be5a1a1f168a59614101b77385f05f12ec7d30a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105048v1: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1ed04cf69096 drm/i915/display: Re-add check for low voltage sku for max dp source rate</p>

</body>
</html>

--===============4995379314678284448==--
