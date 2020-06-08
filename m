Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 186361F1B80
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 16:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDB86E933;
	Mon,  8 Jun 2020 14:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D6F46E932;
 Mon,  8 Jun 2020 14:53:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2604EA00E7;
 Mon,  8 Jun 2020 14:53:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 08 Jun 2020 14:53:26 -0000
Message-ID: <159162800612.14462.12789990534083398144@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608100103.19472-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20200608100103.19472-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_debugfs_for_requesting_HDCP_version?=
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

Series: Add debugfs for requesting HDCP version
URL   : https://patchwork.freedesktop.org/series/78115/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8600_full -> Patchwork_17906_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17906_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-iclb8/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-iclb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#454])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][7] -> [DMESG-FAIL][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-skl6/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-kbl3/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-kbl3/igt@kms_color@pipe-c-ctm-blue-to-red.html
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#95]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-apl4/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-apl6/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-skl7/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-skl2/igt@kms_hdr@bpc-switch.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([i915#155])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][23] ([i915#1930]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [DMESG-WARN][25] ([i915#118] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-glk2/igt@gem_exec_whisper@basic-queues-priority-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-glk5/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][27] ([i915#1436] / [i915#716]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][29] ([i915#402]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-tglb8/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-tglb2/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [DMESG-WARN][31] ([i915#1982]) -> [PASS][32] +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][33] ([i915#79]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
    - shard-skl:          [INCOMPLETE][35] ([i915#198]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid:
    - shard-apl:          [DMESG-WARN][43] ([i915#95]) -> [PASS][44] +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][45] ([i915#173]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-iclb1/igt@kms_psr@no_drrs.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [FAIL][51] ([i915#43]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-glk5/igt@kms_vblank@pipe-c-accuracy-idle.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-glk9/igt@kms_vblank@pipe-c-accuracy-idle.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][55] ([i915#1542]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-iclb3/igt@perf@blocking-parameterized.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-iclb3/igt@perf@blocking-parameterized.html
    - shard-tglb:         [FAIL][57] ([i915#1542]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-tglb1/igt@perf@blocking-parameterized.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-tglb2/igt@perf@blocking-parameterized.html

  * igt@syncobj_wait@multi-wait-for-submit-unsubmitted:
    - shard-kbl:          [DMESG-WARN][59] ([i915#93] / [i915#95]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-kbl6/igt@syncobj_wait@multi-wait-for-submit-unsubmitted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-kbl2/igt@syncobj_wait@multi-wait-for-submit-unsubmitted.html

  * igt@testdisplay:
    - shard-kbl:          [DMESG-WARN][61] ([i915#165] / [i915#78]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-kbl2/igt@testdisplay.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-kbl2/igt@testdisplay.html

  
#### Warnings ####

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][63] ([i915#1319]) -> [TIMEOUT][64] ([i915#1319] / [i915#1635])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-apl2/igt@kms_content_protection@lic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-apl1/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][65] ([i915#1319] / [i915#1635]) -> [FAIL][66] ([fdo#110321])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-apl4/igt@kms_content_protection@srm.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-apl6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-apl:          [DMESG-WARN][67] ([i915#95]) -> [DMESG-FAIL][68] ([i915#54] / [i915#95])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8600/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8600 -> Patchwork_17906

  CI-20190529: 20190529
  CI_DRM_8600: 9232911f67be3d072e5bd6ff0eb4d8e8281f5c5f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5699: 201da47cb57b8fadd9bc45be16b82617b32a2c01 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17906: e9aea7c387bfa3af005fbd439f664d6e902b3cf6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17906/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
