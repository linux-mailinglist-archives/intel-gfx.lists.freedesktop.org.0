Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FC727AD29
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 13:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4202289E7B;
	Mon, 28 Sep 2020 11:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52CC989E7B;
 Mon, 28 Sep 2020 11:47:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A3F3A8835;
 Mon, 28 Sep 2020 11:47:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Mon, 28 Sep 2020 11:47:15 -0000
Message-ID: <160129363527.8774.191846026318558168@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200924124209.17916-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200924124209.17916-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_mipi_dsi_cmd_mode_=28rev15=29?=
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
Content-Type: multipart/mixed; boundary="===============0976087863=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0976087863==
Content-Type: multipart/alternative;
 boundary="===============5381447844639406204=="

--===============5381447844639406204==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for mipi dsi cmd mode (rev15)
URL   : https://patchwork.freedesktop.org/series/69290/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9062 -> Patchwork_18581
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/index.html

Known issues
------------

  Here are the changes found in Patchwork_18581 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][3] ([i915#2417]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@vgem_basic@unload:
    - fi-skl-guc:         [DMESG-WARN][9] ([i915#2203]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-skl-guc/igt@vgem_basic@unload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-skl-guc/igt@vgem_basic@unload.html
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-x1275/igt@vgem_basic@unload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-x1275/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#1982] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92]) -> [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 38)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9062 -> Patchwork_18581

  CI-20190529: 20190529
  CI_DRM_9062: b6c2762187c77437308ec570542e13c842869314 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5789: ebc9ca51848b368170d3f76acce0c23bff84581f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18581: 3a0b674c24940f51752d51998eaa8b93f556849f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3a0b674c2494 drm/i915/dsi: Enable software vblank counter
6622e0d19d24 drm/i915/dsi: Initiate frame request in cmd mode
39190f3dd234 drm/i915/dsi: Add TE handler for dsi cmd mode.
1d74f6e2c810 i915/dsi: Configure TE interrupt for cmd mode
63cecb117578 drm/i915/dsi: Add details about TE in get_config

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/index.html

--===============5381447844639406204==
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
<tr><td><b>Series:</b></td><td>Add support for mipi dsi cmd mode (rev15)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/69290/">https://patchwork.freedesktop.org/series/69290/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9062 -&gt; Patchwork_18581</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18581 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-skl-guc/igt@vgem_basic@unload.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-x1275/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-x1275/igt@vgem_basic@unload.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9062/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18581/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 38)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9062 -&gt; Patchwork_18581</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9062: b6c2762187c77437308ec570542e13c842869314 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5789: ebc9ca51848b368170d3f76acce0c23bff84581f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18581: 3a0b674c24940f51752d51998eaa8b93f556849f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3a0b674c2494 drm/i915/dsi: Enable software vblank counter<br />
6622e0d19d24 drm/i915/dsi: Initiate frame request in cmd mode<br />
39190f3dd234 drm/i915/dsi: Add TE handler for dsi cmd mode.<br />
1d74f6e2c810 i915/dsi: Configure TE interrupt for cmd mode<br />
63cecb117578 drm/i915/dsi: Add details about TE in get_config</p>

</body>
</html>

--===============5381447844639406204==--

--===============0976087863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0976087863==--
