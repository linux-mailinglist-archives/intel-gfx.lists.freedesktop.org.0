Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780321325E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 05:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6916E8BB;
	Fri,  3 Jul 2020 03:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DC596E8B7;
 Fri,  3 Jul 2020 03:52:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E27C5A47E6;
 Fri,  3 Jul 2020 03:52:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 03 Jul 2020 03:52:44 -0000
Message-ID: <159374836489.25592.15286117888296945521@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702200714.1278-1-lucas.demarchi@intel.com>
In-Reply-To: <20200702200714.1278-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_do_not_read_swizzle_info_if_unavailable_=28rev2=29?=
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

Series: drm/i915: do not read swizzle info if unavailable (rev2)
URL   : https://patchwork.freedesktop.org/series/79007/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8700_full -> Patchwork_18073_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18073_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18073_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18073_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-hsw7/igt@gem_exec_flush@basic-wb-rw-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-hsw7/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-tglb7/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-iclb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-iclb3/igt@kms_fbcon_fbt@fbc-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-iclb2/igt@kms_fbcon_fbt@fbc-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_18073_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#93] / [i915#95]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-kbl2/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-kbl2/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_softpin@softpin:
    - shard-snb:          [PASS][9] -> [INCOMPLETE][10] ([i915#82])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-snb5/igt@gem_softpin@softpin.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-snb6/igt@gem_softpin@softpin.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#402]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-tglb5/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-tglb1/igt@i915_module_load@reload.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#198] / [i915#2110])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-skl9/igt@i915_selftest@mock@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-skl10/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-kbl7/igt@i915_suspend@forcewake.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl2/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl6/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][19] -> [DMESG-FAIL][20] ([i915#118] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#165])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-kbl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-kbl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-skl3/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1635] / [i915#95]) +16 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl2/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl6/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#1928])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#46])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#1559])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-glk6/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-glk9/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-iclb1/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109642] / [fdo#111068])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-hsw6/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-hsw2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-apl:          [DMESG-WARN][43] ([i915#1635] / [i915#95]) -> [PASS][44] +18 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl7/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_mmap@basic:
    - shard-glk:          [INCOMPLETE][45] ([i915#58] / [k.org#198133]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-glk5/igt@gem_mmap@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-glk8/igt@gem_mmap@basic.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][47] ([i915#118] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-glk3/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-skl2/igt@kms_color@pipe-b-ctm-negative.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_concurrent@pipe-a:
    - shard-tglb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-tglb1/igt@kms_concurrent@pipe-a.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-tglb1/igt@kms_concurrent@pipe-a.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge:
    - shard-glk:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +8 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][59] ([i915#1542]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-iclb7/igt@perf@blocking-parameterized.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-iclb6/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl7/igt@perf_pmu@module-unload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl8/igt@perf_pmu@module-unload.html

  * igt@sw_sync@timeline_closed_signaled:
    - shard-tglb:         [DMESG-WARN][63] ([i915#402]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-tglb5/igt@sw_sync@timeline_closed_signaled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-tglb1/igt@sw_sync@timeline_closed_signaled.html

  * igt@syncobj_wait@multi-wait-all-for-submit-unsubmitted-signaled:
    - shard-kbl:          [DMESG-WARN][65] ([i915#93] / [i915#95]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-kbl2/igt@syncobj_wait@multi-wait-all-for-submit-unsubmitted-signaled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-kbl2/igt@syncobj_wait@multi-wait-all-for-submit-unsubmitted-signaled.html

  
#### Warnings ####

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [fdo#111827]) -> [SKIP][68] ([fdo#109271] / [fdo#111827] / [i915#1635]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl2/igt@kms_chamelium@vga-edid-read.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl6/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-tglb:         [FAIL][69] ([i915#1149] / [i915#315]) -> [DMESG-FAIL][70] ([i915#1149] / [i915#402])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-tglb3/igt@kms_color@pipe-a-ctm-0-75.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-tglb6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][71] ([i915#1319] / [i915#2119]) -> [TIMEOUT][72] ([i915#1319] / [i915#1958] / [i915#2119])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-kbl6/igt@kms_content_protection@srm.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][73] ([fdo#109271]) -> [SKIP][74] ([fdo#109271] / [i915#1635]) +7 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][75] ([i915#1226]) -> [SKIP][76] ([fdo#109349])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-apl:          [SKIP][77] ([fdo#109271] / [i915#1635]) -> [SKIP][78] ([fdo#109271]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl4/igt@kms_flip@2x-nonexisting-fb-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl8/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [DMESG-WARN][79] ([i915#1982]) -> [INCOMPLETE][80] ([i915#198])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][81] ([i915#93] / [i915#95]) -> [DMESG-WARN][82] ([i915#180] / [i915#93] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-apl:          [DMESG-FAIL][83] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95]) -> [DMESG-FAIL][84] ([fdo#108145] / [i915#1635] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][85], [FAIL][86]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][87] ([i915#1635] / [i915#2110])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl7/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8700/shard-apl1/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/shard-apl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8700 -> Patchwork_18073

  CI-20190529: 20190529
  CI_DRM_8700: 96aa9dcd5189a43848388803837a5a2bab3b3dc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18073: 7f86c644cb954e8e7473b1fdd591f29575a58d52 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18073/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
