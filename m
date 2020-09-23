Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0375275724
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 13:28:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0930E6E97C;
	Wed, 23 Sep 2020 11:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8427A6E976;
 Wed, 23 Sep 2020 11:28:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C8B6A9F66;
 Wed, 23 Sep 2020 11:28:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 23 Sep 2020 11:28:26 -0000
Message-ID: <160086050647.4494.7661704725729552743@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200923105737.2943649-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200923105737.2943649-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/atomic=3A_document_and_enforce_?=
 =?utf-8?q?rules_around_=22spurious=22_EBUSY?=
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
Content-Type: multipart/mixed; boundary="===============0027068701=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0027068701==
Content-Type: multipart/alternative;
 boundary="===============8152923022727865937=="

--===============8152923022727865937==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/atomic: document and enforce rules around "spurious" EBUSY
URL   : https://patchwork.freedesktop.org/series/82023/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9042 -> Patchwork_18553
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/index.html

Known issues
------------

  Here are the changes found in Patchwork_18553 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#1982] / [k.org#205379])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-y/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-apl-guc:         [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@vgem_basic@unload:
    - fi-skl-guc:         [PASS][9] -> [DMESG-WARN][10] ([i915#2203])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-skl-guc/igt@vgem_basic@unload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-skl-guc/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-y/igt@gem_huc_copy@huc-copy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-y/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][13] ([i915#1982] / [k.org#205379]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-dsi/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [INCOMPLETE][17] ([i915#2268]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [DMESG-WARN][19] ([i915#1982]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-y:           [DMESG-WARN][21] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][22] ([i915#2411])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-guc:         [DMESG-FAIL][23] ([i915#2203]) -> [DMESG-WARN][24] ([i915#2203])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][28] ([i915#62] / [i915#92]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (47 -> 40)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9042 -> Patchwork_18553

  CI-20190529: 20190529
  CI_DRM_9042: 1535f1ea9693fe52edf544d584272c1fa283ff8c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18553: 03a8bf062d5071a0bbabb0d3715b2d94181fce82 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

03a8bf062d50 drm/atomic: debug output for EBUSY
a59f0f6c784d drm/atomic: document and enforce rules around "spurious" EBUSY

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/index.html

--===============8152923022727865937==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/atomic: document and enforce rules around &quot;spurious&quot; EBUSY</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82023/">https://patchwork.freedesktop.org/series/82023/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9042 -&gt; Patchwork_18553</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18553 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@double-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-y/igt@gem_flink_basic@double-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-y/igt@gem_flink_basic@double-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-skl-guc/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-y/igt@gem_huc_copy@huc-copy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-y/igt@gem_huc_copy@huc-copy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9042/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18553/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +5 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 40)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9042 -&gt; Patchwork_18553</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9042: 1535f1ea9693fe52edf544d584272c1fa283ff8c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18553: 03a8bf062d5071a0bbabb0d3715b2d94181fce82 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>03a8bf062d50 drm/atomic: debug output for EBUSY<br />
a59f0f6c784d drm/atomic: document and enforce rules around "spurious" EBUSY</p>

</body>
</html>

--===============8152923022727865937==--

--===============0027068701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0027068701==--
