Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEEF21AC05
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 02:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A536EB53;
	Fri, 10 Jul 2020 00:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 691176EB53;
 Fri, 10 Jul 2020 00:33:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 632C0A0099;
 Fri, 10 Jul 2020 00:33:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 10 Jul 2020 00:33:23 -0000
Message-ID: <159434120337.20497.17994737898706208111@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709195837.4285-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200709195837.4285-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Use_GTT_when_saving/restoring_engine_GPR?=
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

Series: drm/i915/perf: Use GTT when saving/restoring engine GPR
URL   : https://patchwork.freedesktop.org/series/79311/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8723_full -> Patchwork_18127_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18127_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#93] / [i915#95]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-kbl4/igt@gem_exec_params@invalid-fence-in.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-kbl6/igt@gem_exec_params@invalid-fence-in.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb7/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-tglb8/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-c-ctm-negative:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-skl8/igt@kms_color@pipe-c-ctm-negative.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-skl10/igt@kms_color@pipe-c-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +11 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([IGT#5])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-glk1/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-glk7/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-skl5/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#1820])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-kbl3/igt@perf_pmu@semaphore-busy@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][29] ([i915#1930]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-apl:          [DMESG-WARN][31] ([i915#1635] / [i915#95]) -> [PASS][32] +10 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl4/igt@gen9_exec_parse@bb-start-far.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-apl3/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_selftest@mock@requests:
    - shard-snb:          [INCOMPLETE][33] ([i915#2110] / [i915#82]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-snb5/igt@i915_selftest@mock@requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-snb6/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [DMESG-WARN][43] ([i915#402]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][45] ([i915#1188]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_lease@simple_lease:
    - shard-glk:          [INCOMPLETE][47] ([i915#58] / [k.org#198133]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-glk5/igt@kms_lease@simple_lease.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-glk5/igt@kms_lease@simple_lease.html

  
#### Warnings ####

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-apl:          [SKIP][49] ([fdo#109271]) -> [SKIP][50] ([fdo#109271] / [i915#1635]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl4/igt@gem_render_copy@linear-to-vebox-y-tiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-apl7/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          [SKIP][51] ([fdo#109271] / [i915#1937]) -> [SKIP][52] ([fdo#109271] / [i915#1635] / [i915#1937])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][53] ([i915#155] / [i915#636]) -> [DMESG-WARN][54] ([i915#180])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-kbl4/igt@i915_suspend@forcewake.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-apl:          [SKIP][55] ([fdo#109271] / [fdo#111827]) -> [SKIP][56] ([fdo#109271] / [fdo#111827] / [i915#1635]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl8/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-apl4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          [SKIP][57] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl4/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-apl3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#93] / [i915#95]) -> [DMESG-WARN][60] ([i915#180] / [i915#93] / [i915#95])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:
    - shard-apl:          [SKIP][61] ([fdo#109271] / [i915#1635]) -> [SKIP][62] ([fdo#109271]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][63], [FAIL][64], [FAIL][65], [FAIL][66]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> [FAIL][67] ([i915#1635] / [i915#2110])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl8/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl8/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl4/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-apl8/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-apl3/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][68], [FAIL][69], [FAIL][70], [FAIL][71], [FAIL][72]) ([i915#1764] / [i915#2110] / [i915#2150]) -> ([FAIL][73], [FAIL][74]) ([i915#2110] / [i915#2150])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb7/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb2/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb6/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb2/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-tglb3/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-tglb8/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-tglb2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][75], [FAIL][76]) ([i915#2110] / [i915#69]) -> [FAIL][77] ([i915#69])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-skl6/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8723/shard-skl5/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/shard-skl3/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2150]: https://gitlab.freedesktop.org/drm/intel/issues/2150
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8723 -> Patchwork_18127

  CI-20190529: 20190529
  CI_DRM_8723: 75a99370a8038a14e093b260cacbbdc4f7655e21 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18127: 8d6f9a7b8cec4411fbb068775123b068e776b759 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18127/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
