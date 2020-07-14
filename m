Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB67D22005B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 00:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD4996EA29;
	Tue, 14 Jul 2020 22:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C94426EA29;
 Tue, 14 Jul 2020 22:01:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC1FDA011C;
 Tue, 14 Jul 2020 22:01:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anitha Chrisanthus" <anitha.chrisanthus@intel.com>
Date: Tue, 14 Jul 2020 22:01:54 -0000
Message-ID: <159476411474.24019.1905382895162236896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
In-Reply-To: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_KeemBay_DRM_driver?=
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
Content-Type: multipart/mixed; boundary="===============0616855637=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0616855637==
Content-Type: multipart/alternative;
 boundary="===============5942646144146829500=="

--===============5942646144146829500==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: Add support for KeemBay DRM driver
URL   : https://patchwork.freedesktop.org/series/79495/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8747 -> Patchwork_18169
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/index.html

Known issues
------------

  Here are the changes found in Patchwork_18169 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [PASS][1] -> [DMESG-WARN][2] ([i915#1635] / [i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-bxt-dsi/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-bxt-dsi/igt@i915_module_load@reload.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [DMESG-WARN][3] ([i915#402]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-apl-guc:         [DMESG-WARN][7] ([i915#1635] / [i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][9] ([i915#1982]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8747 -> Patchwork_18169

  CI-20190529: 20190529
  CI_DRM_8747: f778a4bc7c6d0314c8a007e792313f5cbd549566 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18169: 11dfcd1512d71acb121517ec84bac47e4b257f2d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

11dfcd1512d7 drm/kmb: work around for planar formats
08e4bedb8900 drm/kmb: Get System Clock from SCMI
53d627d0c818 drm/kmb: workaround for dma undeflow issue
50aa6081d472 kmb/drm: Prune unsupported modes
6f8dbd0cdab9 drm/kmb: Added useful messages in LCD ISR
2fc20e36b658 drm/kmb: Initialize uninitialized variables
d71c0af8e68e drm/kmb: disable the LCD layer in EOF irq handler
b3198de32148 drm/kmb: Cleaned up code
e88a5f7d210f drm/kmb: Write to LCD_LAYERn_CFG only once
79f756b38adb drm/kmb: Do the layer initializations only once
2d76e99ffa29 drm/kmb: Disable ping pong mode
ced419b5a4c8 drm/kmb: SWAP R and B LCD Layer order
7398790e10e7 drm/kmb: Don’t inadvertantly disable LCD controller
a6ae930467d6 drm/kmb: Enable LCD interrupts during modeset
a01ebe41336f drm/kmb: Enable LCD interrupts
ebaadec497a5 drm/kmb: Mipi settings from input timings
010c59522e62 drm/kmb: Changed name of driver to kmb-drm
77e342dacb62 drm/kmb: Update LCD programming to match MIPI
0b6df0b5fe53 drm/kmb: Changes for LCD to Mipi
817f1fd5a6d1 drm/kmb: Added LCD_TEST config
1d523d111941 drm/kmb: Fixed driver unload
804b359bf784 drm/kmb: Mipi DPHY initialization changes
3277f5d9f0d4 drm/kmb: Set MSS_CAM_RSTN_CTRL along with enable
77e75b1e52ee drm/kmb: Enable MIPI TX HS Test Pattern Generation
7a2290e8f004 drm/kmb: Remove declaration of irq_lcd/irq_mipi
8f57d53616b4 drm/kmb: Enable MSS_CAM_CLK_CTRL for LCD and MIPI
02358c4fbee8 drm/kmb: Initialize clocks for clk_msscam, clk_mipi_ecfg, & clk_mipi_cfg.
825ec5e80005 drm/kmb: Revert dsi_host back to a static variable
fe69260d0472 drm/kmb: Cleanup probe functions
eb6a64e4957e drm/kmb: call bridge init in the very beginning
96b3d072fc6d drm/kmb: Defer Probe
00181d1e8d0e drm/kmb: Changed MMIO size
c0e857f6c183 drm/kmb: minor name change to match device tree
aef9a4a9b61e drm/kmb: rebase to newer kernel version
0e07e8980d1b drm/kmb: Display clock enable/disable
bc4d9eda3ce6 drm/kmb: Add ADV7535 bridge
cd039b277ba1 drm/kmb: Additional register programming to update_plane
3593120c77a7 drm/kmb: Set hardcoded values to LCD_VSYNC_START
937e828e55f8 drm/kmb: IRQ handlers for LCD and mipi dsi
9670dc4d6aa5 drm/kmb: Register IRQ for LCD
3d47688d6abd drm/kmb: Added ioremap/iounmap for register access
cf8782b6ea86 drm/kmb: Part8 of Mipi Tx Initialization
845f25abaa85 drm/kmb: Part7 of Mipi Tx Initialization
f577b2a61e24 drm/kmb: Part6 of Mipi Tx Initialization
35e6c76ef2d6 drm/kmb: Part5 of Mipi Tx Intitialization
601bd770776a drm/kmb: Correct address offsets for mipi registers
77dfeac502e3 drm/kmb: Part4 of Mipi Tx Initialization
b9210bc86eab drm/kmb: Part3 of Mipi Tx initialization
e18fdd770374 drm/kmb: Use correct mmio offset from data book
de81018d2b9b drm/kmb: Part 2 of Mipi Tx Initialization
a41306cb6344 drm/kmb: Part 1 of Mipi Tx Initialization
5bb691fb43f6 drm/kmb: Added mipi_dsi_host initialization
287a76a37f9b drm/kmb: Set OUT_FORMAT_CFG register
3dd9087eb8cc drm/kmb: Initial check-in for Mipi DSI
e081c3ffb24a drm/kmb: Updated kmb_plane_atomic_check
d15ffc55ad34 drm/kmb: Use biwise operators for register definitions
1cf972b1f395 drm/kmb: Set correct values in the LAYERn_CFG register
d12742e6b9db drm/kmb: Added id to kmb_plane
8c3c65637a2a drm/kmb: Add support for KeemBay Display

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/index.html

--===============5942646144146829500==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


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
<tr><td><b>Series:</b></td><td>Add support for KeemBay DRM driver</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79495/">https://patchwork.freedesktop.org/series/79495/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8747 -&gt; Patchwork_18169</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18169 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp1:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18169/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8747 -&gt; Patchwork_18169</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8747: f778a4bc7c6d0314c8a007e792313f5cbd549566 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18169: 11dfcd1512d71acb121517ec84bac47e4b257f2d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>11dfcd1512d7 drm/kmb: work around for planar formats<br />
08e4bedb8900 drm/kmb: Get System Clock from SCMI<br />
53d627d0c818 drm/kmb: workaround for dma undeflow issue<br />
50aa6081d472 kmb/drm: Prune unsupported modes<br />
6f8dbd0cdab9 drm/kmb: Added useful messages in LCD ISR<br />
2fc20e36b658 drm/kmb: Initialize uninitialized variables<br />
d71c0af8e68e drm/kmb: disable the LCD layer in EOF irq handler<br />
b3198de32148 drm/kmb: Cleaned up code<br />
e88a5f7d210f drm/kmb: Write to LCD_LAYERn_CFG only once<br />
79f756b38adb drm/kmb: Do the layer initializations only once<br />
2d76e99ffa29 drm/kmb: Disable ping pong mode<br />
ced419b5a4c8 drm/kmb: SWAP R and B LCD Layer order<br />
7398790e10e7 drm/kmb: Don’t inadvertantly disable LCD controller<br />
a6ae930467d6 drm/kmb: Enable LCD interrupts during modeset<br />
a01ebe41336f drm/kmb: Enable LCD interrupts<br />
ebaadec497a5 drm/kmb: Mipi settings from input timings<br />
010c59522e62 drm/kmb: Changed name of driver to kmb-drm<br />
77e342dacb62 drm/kmb: Update LCD programming to match MIPI<br />
0b6df0b5fe53 drm/kmb: Changes for LCD to Mipi<br />
817f1fd5a6d1 drm/kmb: Added LCD_TEST config<br />
1d523d111941 drm/kmb: Fixed driver unload<br />
804b359bf784 drm/kmb: Mipi DPHY initialization changes<br />
3277f5d9f0d4 drm/kmb: Set MSS_CAM_RSTN_CTRL along with enable<br />
77e75b1e52ee drm/kmb: Enable MIPI TX HS Test Pattern Generation<br />
7a2290e8f004 drm/kmb: Remove declaration of irq_lcd/irq_mipi<br />
8f57d53616b4 drm/kmb: Enable MSS_CAM_CLK_CTRL for LCD and MIPI<br />
02358c4fbee8 drm/kmb: Initialize clocks for clk_msscam, clk_mipi_ecfg, &amp; clk_mipi_cfg.<br />
825ec5e80005 drm/kmb: Revert dsi_host back to a static variable<br />
fe69260d0472 drm/kmb: Cleanup probe functions<br />
eb6a64e4957e drm/kmb: call bridge init in the very beginning<br />
96b3d072fc6d drm/kmb: Defer Probe<br />
00181d1e8d0e drm/kmb: Changed MMIO size<br />
c0e857f6c183 drm/kmb: minor name change to match device tree<br />
aef9a4a9b61e drm/kmb: rebase to newer kernel version<br />
0e07e8980d1b drm/kmb: Display clock enable/disable<br />
bc4d9eda3ce6 drm/kmb: Add ADV7535 bridge<br />
cd039b277ba1 drm/kmb: Additional register programming to update_plane<br />
3593120c77a7 drm/kmb: Set hardcoded values to LCD_VSYNC_START<br />
937e828e55f8 drm/kmb: IRQ handlers for LCD and mipi dsi<br />
9670dc4d6aa5 drm/kmb: Register IRQ for LCD<br />
3d47688d6abd drm/kmb: Added ioremap/iounmap for register access<br />
cf8782b6ea86 drm/kmb: Part8 of Mipi Tx Initialization<br />
845f25abaa85 drm/kmb: Part7 of Mipi Tx Initialization<br />
f577b2a61e24 drm/kmb: Part6 of Mipi Tx Initialization<br />
35e6c76ef2d6 drm/kmb: Part5 of Mipi Tx Intitialization<br />
601bd770776a drm/kmb: Correct address offsets for mipi registers<br />
77dfeac502e3 drm/kmb: Part4 of Mipi Tx Initialization<br />
b9210bc86eab drm/kmb: Part3 of Mipi Tx initialization<br />
e18fdd770374 drm/kmb: Use correct mmio offset from data book<br />
de81018d2b9b drm/kmb: Part 2 of Mipi Tx Initialization<br />
a41306cb6344 drm/kmb: Part 1 of Mipi Tx Initialization<br />
5bb691fb43f6 drm/kmb: Added mipi_dsi_host initialization<br />
287a76a37f9b drm/kmb: Set OUT_FORMAT_CFG register<br />
3dd9087eb8cc drm/kmb: Initial check-in for Mipi DSI<br />
e081c3ffb24a drm/kmb: Updated kmb_plane_atomic_check<br />
d15ffc55ad34 drm/kmb: Use biwise operators for register definitions<br />
1cf972b1f395 drm/kmb: Set correct values in the LAYERn_CFG register<br />
d12742e6b9db drm/kmb: Added id to kmb_plane<br />
8c3c65637a2a drm/kmb: Add support for KeemBay Display</p>

</body>
</html>

--===============5942646144146829500==--

--===============0616855637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0616855637==--
