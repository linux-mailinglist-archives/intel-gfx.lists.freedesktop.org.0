Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C514028C496
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 00:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729FD6E826;
	Mon, 12 Oct 2020 22:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11F296E827;
 Mon, 12 Oct 2020 22:17:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09FBEA47DB;
 Mon, 12 Oct 2020 22:17:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 12 Oct 2020 22:17:49 -0000
Message-ID: <160254106900.31909.3260245020082363899@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
In-Reply-To: <20201012212959.871513-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_DG1?=
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
Content-Type: multipart/mixed; boundary="===============2072729431=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2072729431==
Content-Type: multipart/alternative;
 boundary="===============7428409228883673589=="

--===============7428409228883673589==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce DG1
URL   : https://patchwork.freedesktop.org/series/82594/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9131 -> Patchwork_18682
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/index.html

Known issues
------------

  Here are the changes found in Patchwork_18682 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-byt-j1900/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-tgl-y/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-tgl-y/igt@vgem_basic@setversion.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [DMESG-WARN][9] ([i915#1982] / [k.org#205379]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-tgl-u2/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][15] ([i915#1982]) -> [PASS][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@vgem_basic@unload:
    - fi-skl-guc:         [DMESG-WARN][17] ([i915#2203]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-skl-guc/igt@vgem_basic@unload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-skl-guc/igt@vgem_basic@unload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9131 -> Patchwork_18682

  CI-20190529: 20190529
  CI_DRM_9131: 14f6fc98077f4add3c28104ffbc841ad129fefd6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5811: 836f8812f0e6c44674c1c75501640eabbdd8918a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18682: 3200a254244e6327f45417ce96c112968864228f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3200a254244e drm/i915/dgfx: define llc and snooping behaviour
ef788aaa1608 drm/i915/dg1: Update DMC_DEBUG register
ad249d6324c6 drm/i915/dg1: DG1 does not support DC6
5da8aa482e31 drm/i915/dg1: Add initial DG1 workarounds
51a8641ffb98 drm/i915/dg1: Load DMC
2277e81c77bb drm/i915/dg1: Enable ports
4a9095a0b7bb drm/i915/dg1: map/unmap pll clocks
5c559e0d9227 drm/i915/dg1: invert HPD pins
b60e1f572176 drm/i915/dg1: add hpd interrupt handling
bd28cc6aa15c drm/i915/dg1: Enable DPLL for DG1
4718a2b29fcc drm/i915/dg1: Add and setup DPLLs for DG1
427e81efb3e5 drm/i915/dg1: Add DPLL macros for DG1
d0032ba13005 drm/i915/dg1: Add DG1 power wells
68df339f83b7 drm/i915/cnl: skip PW_DDI_F on certain skus
8623a162621b drm/i915/display: allow to skip certain power wells

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/index.html

--===============7428409228883673589==
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
<tr><td><b>Series:</b></td><td>Introduce DG1</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82594/">https://patchwork.freedesktop.org/series/82594/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9131 -&gt; Patchwork_18682</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18682 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-tgl-y/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-tgl-y/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_flink_basic@flink-lifetime:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9131/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18682/fi-skl-guc/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (48 -&gt; 41)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9131 -&gt; Patchwork_18682</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9131: 14f6fc98077f4add3c28104ffbc841ad129fefd6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5811: 836f8812f0e6c44674c1c75501640eabbdd8918a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18682: 3200a254244e6327f45417ce96c112968864228f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3200a254244e drm/i915/dgfx: define llc and snooping behaviour<br />
ef788aaa1608 drm/i915/dg1: Update DMC_DEBUG register<br />
ad249d6324c6 drm/i915/dg1: DG1 does not support DC6<br />
5da8aa482e31 drm/i915/dg1: Add initial DG1 workarounds<br />
51a8641ffb98 drm/i915/dg1: Load DMC<br />
2277e81c77bb drm/i915/dg1: Enable ports<br />
4a9095a0b7bb drm/i915/dg1: map/unmap pll clocks<br />
5c559e0d9227 drm/i915/dg1: invert HPD pins<br />
b60e1f572176 drm/i915/dg1: add hpd interrupt handling<br />
bd28cc6aa15c drm/i915/dg1: Enable DPLL for DG1<br />
4718a2b29fcc drm/i915/dg1: Add and setup DPLLs for DG1<br />
427e81efb3e5 drm/i915/dg1: Add DPLL macros for DG1<br />
d0032ba13005 drm/i915/dg1: Add DG1 power wells<br />
68df339f83b7 drm/i915/cnl: skip PW_DDI_F on certain skus<br />
8623a162621b drm/i915/display: allow to skip certain power wells</p>

</body>
</html>

--===============7428409228883673589==--

--===============2072729431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2072729431==--
