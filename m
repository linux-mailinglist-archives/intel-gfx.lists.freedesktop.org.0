Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E70A1270045
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 16:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82136ED0A;
	Fri, 18 Sep 2020 14:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E9A36ED0A;
 Fri, 18 Sep 2020 14:56:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E872A7DFE;
 Fri, 18 Sep 2020 14:56:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 18 Sep 2020 14:56:02 -0000
Message-ID: <160044096215.6345.5754899843750439647@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200918132505.2316382-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200918132505.2316382-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgbWFu?=
 =?utf-8?q?aged_drm=5Fdevice=2C_absolute_final_leftover_bits?=
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
Content-Type: multipart/mixed; boundary="===============0344554418=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0344554418==
Content-Type: multipart/alternative;
 boundary="===============1394238006733649676=="

--===============1394238006733649676==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: managed drm_device, absolute final leftover bits
URL   : https://patchwork.freedesktop.org/series/81851/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9025 -> Patchwork_18531
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/index.html

Known issues
------------

  Here are the changes found in Patchwork_18531 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-byt-j1900/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-icl-y/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@cursor_plane_move:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-y/igt@kms_psr@cursor_plane_move.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-y/igt@kms_psr@cursor_plane_move.html

  * igt@vgem_basic@unload:
    - fi-kbl-x1275:       [PASS][11] -> [DMESG-WARN][12] ([i915#62] / [i915#92])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@vgem_basic@unload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * {igt@core_hotunplug@unbind-rebind}:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [DMESG-WARN][15] ([i915#1635] / [i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-apl-guc/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-WARN][19] ([i915#2203]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][21] ([i915#1982]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms@d-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@d-dsi1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@d-dsi1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - fi-skl-guc:         [DMESG-WARN][25] ([i915#2203]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [DMESG-WARN][27] ([i915#402]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-y/igt@prime_vgem@basic-read.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#1982] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][30] ([i915#62] / [i915#92])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-y:           [DMESG-WARN][31] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][32] ([i915#2411]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-x1275:       [DMESG-FAIL][33] ([i915#62]) -> [DMESG-FAIL][34] ([i915#62] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-kbl-x1275:       [DMESG-WARN][35] ([i915#62] / [i915#92]) -> [DMESG-WARN][36] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-kbl-x1275:       [DMESG-WARN][37] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][38] ([i915#62] / [i915#92]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9025 -> Patchwork_18531

  CI-20190529: 20190529
  CI_DRM_9025: 955d04e2ed0cf4bb4679f594a852cc2eebe8266b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18531: 05501ed9ee482a0810254847248d7418d13fb1a7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

05501ed9ee48 drm/dev: Remove drm_dev_init
3f556126fb01 drm/amdgpu: Convert to using devm_drm_dev_alloc() (v2)
6c56f2b89576 drm/i915/selftests: align more to real device lifetimes
ff8bb77f7c9d drm/i915/selftest: Create mock_destroy_device

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/index.html

--===============1394238006733649676==
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
<tr><td><b>Series:</b></td><td>managed drm_device, absolute final leftover bits</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81851/">https://patchwork.freedesktop.org/series/81851/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9025 -&gt; Patchwork_18531</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18531 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@flink-lifetime:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-y/igt@kms_psr@cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-y/igt@kms_psr@cursor_plane_move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@core_hotunplug@unbind-rebind}:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@d-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@d-dsi1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9025/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18531/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9025 -&gt; Patchwork_18531</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9025: 955d04e2ed0cf4bb4679f594a852cc2eebe8266b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18531: 05501ed9ee482a0810254847248d7418d13fb1a7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>05501ed9ee48 drm/dev: Remove drm_dev_init<br />
3f556126fb01 drm/amdgpu: Convert to using devm_drm_dev_alloc() (v2)<br />
6c56f2b89576 drm/i915/selftests: align more to real device lifetimes<br />
ff8bb77f7c9d drm/i915/selftest: Create mock_destroy_device</p>

</body>
</html>

--===============1394238006733649676==--

--===============0344554418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0344554418==--
