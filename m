Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 758B420D2C4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 21:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3908289DC1;
	Mon, 29 Jun 2020 19:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62E7D89DC1;
 Mon, 29 Jun 2020 19:04:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A2B9A0071;
 Mon, 29 Jun 2020 19:04:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nicolas Boichat" <drinkcat@chromium.org>
Date: Mon, 29 Jun 2020 19:04:51 -0000
Message-ID: <159345749134.745.4372147372636508518@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200627070307.516803-1-drinkcat@chromium.org>
In-Reply-To: <20200627070307.516803-1-drinkcat@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRGV0?=
 =?utf-8?q?ect_and_remove_trace=5Fprintk?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Detect and remove trace_printk
URL   : https://patchwork.freedesktop.org/series/78870/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8673 -> Patchwork_18034
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18034 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18034, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18034:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_18034 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#1250] / [i915#1436])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-bsw-nick/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][5] -> [FAIL][6] ([i915#1888])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-y/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [PASS][15] -> [DMESG-WARN][16] ([i915#402])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][17] ([i915#1888]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [DMESG-WARN][19] ([i915#402]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-n2820:       [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-byt-n2820/igt@i915_pm_rpm@basic-pci-d3-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-byt-n2820/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [DMESG-FAIL][23] ([i915#1748]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           [DMESG-FAIL][25] ([i915#2111]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-icl-y/igt@i915_selftest@live@gt_pm.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-y:           [DMESG-WARN][27] ([i915#1982]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-tgl-y/igt@kms_psr@primary_page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-tgl-y/igt@kms_psr@primary_page_flip.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#62] / [i915#92]) -> [DMESG-WARN][30] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-x1275:       [DMESG-WARN][31] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][32] ([i915#1982] / [i915#62] / [i915#92] / [i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][33] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][34] ([i915#62] / [i915#92]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8673/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2111]: https://gitlab.freedesktop.org/drm/intel/issues/2111
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8673 -> Patchwork_18034

  CI-20190529: 20190529
  CI_DRM_8673: ae0a2b45fe022c02a2779c2ae8c83473763c1feb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18034: 8cde1a0a4de00e3d77b8c6ed332486b887c6f5bb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8cde1a0a4de0 kernel/trace: Add TRACING_ALLOW_PRINTK config option
f240a00cdcd7 media: camss: vfe: Use trace_printk for debugging only
4c7d3ef5e566 media: atomisp: Replace trace_printk by pr_info
5f1b11fad802 usb: cdns3: gadget: Replace trace_printk by dev_dbg

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18034/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
