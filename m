Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 239652F26FF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 05:23:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A2489F03;
	Tue, 12 Jan 2021 04:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBF4989F03;
 Tue, 12 Jan 2021 04:23:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD1FCA9932;
 Tue, 12 Jan 2021 04:23:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 12 Jan 2021 04:23:25 -0000
Message-ID: <161042540580.1920.14409453650035841312@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210111164111.13302-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210111164111.13302-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Only_enable_DFP_4=3A4=3A4-=3E4=3A2=3A0_conversion_when?=
 =?utf-8?q?_outputting_YCbCr_4=3A4=3A4_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0109152589=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0109152589==
Content-Type: multipart/alternative;
 boundary="===============2386839870983448851=="

--===============2386839870983448851==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Only enable DFP 4:4:4->4:2:0 conversion when outputting YCbCr 4:4:4 (rev2)
URL   : https://patchwork.freedesktop.org/series/85715/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9585_full -> Patchwork_19319_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19319_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19319_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19319_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@u-fairslice@vecs0}:
    - shard-skl:          [DMESG-WARN][3] ([i915#1610] / [i915#2803]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl9/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl2/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * {igt@gem_softpin@32b-excludes-last-page}:
    - shard-glk:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-glk7/igt@gem_softpin@32b-excludes-last-page.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-glk8/igt@gem_softpin@32b-excludes-last-page.html

  
Known issues
------------

  Here are the changes found in Patchwork_19319_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all@replace:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#2485] / [i915#2813])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl7/igt@drm_mm@all@replace.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl3/igt@drm_mm@all@replace.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2389])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][10] ([i915#2658])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl8/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#2521])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#2705])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl8/igt@kms_big_joiner@basic.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl5/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +87 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl8/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl3/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-gamma:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-apl6/igt@kms_color_chamelium@pipe-c-gamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][19] ([i915#1319])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#54]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +14 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-apl6/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#533])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-apl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][28] ([i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][29] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-iclb4/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][32] ([IGT#2])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl3/igt@kms_sysfs_edid_timing.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][33] ([i915#1722])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl3/igt@perf@polling-small-buf.html

  
#### Possible fixes ####

  * {igt@gem_exec_fair@basic-none-solo@rcs0}:
    - shard-kbl:          [FAIL][34] ([i915#2842]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [DMESG-WARN][36] ([i915#118] / [i915#95]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-glk1/igt@gem_exec_whisper@basic-queues-priority-all.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-glk3/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][38] ([i915#54]) -> [PASS][39] +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [FAIL][40] ([i915#52] / [i915#54]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][42] ([i915#2122]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][44] ([i915#1188]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - shard-skl:          [FAIL][46] ([i915#53]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][48] ([fdo#108145] / [i915#265]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - shard-skl:          [DMESG-WARN][50] ([i915#1982]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl2/igt@kms_plane_cursor@pipe-b-primary-size-64.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl4/igt@kms_plane_cursor@pipe-b-primary-size-64.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][52] ([fdo#109441]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][54] ([i915#1542]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl3/igt@perf@polling.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl7/igt@perf@polling.html

  * igt@prime_vgem@sync@rcs0:
    - shard-apl:          [INCOMPLETE][56] ([i915#409]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-apl3/igt@prime_vgem@sync@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-apl6/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-skl:          [FAIL][58] -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-skl5/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][60] ([i915#2684]) -> [WARN][61] ([i915#1804] / [i915#2684]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][62] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][63] ([i915#1319])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-apl1/igt@kms_content_protection@legacy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][64], [FAIL][65], [FAIL][66]) ([i915#2295] / [i915#2426] / [i915#409]) -> ([FAIL][67], [FAIL][68]) ([i915#2295])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-apl3/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-apl1/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-apl1/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-apl4/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-apl1/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][69], [FAIL][70]) ([i915#1602] / [i915#2295] / [i915#2667]) -> ([FAIL][71], [FAIL][72]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-tglb5/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-tglb8/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-tglb1/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-tglb2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2485]: https://gitlab.freedesktop.org/drm/intel/issues/2485
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2813]: https://gitlab.freedesktop.org/drm/intel/issues/2813
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9585 -> Patchwork_19319

  CI-20190529: 20190529
  CI_DRM_9585: ce8ee6513f0f9d00ea44e1c4b7aff8b4883cda13 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5954: 2763c0977004bed596ee876c755b0768187ea9ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19319: c54c72aa7d1b4f7908782a467c29e3d022092159 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/index.html

--===============2386839870983448851==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Only enable DFP 4:4:4-&gt;4:2:0 co=
nversion when outputting YCbCr 4:4:4 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85715/">https://patchwork.freedesktop.org/series/85715/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19319/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19319/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9585_full -&gt; Patchwork_19319_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19319_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19319_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19319_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-i=
ndfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19319/shard-tglb6/igt@kms_frontbuffer_tracking@psr=
-1p-primscrn-cur-indfb-draw-render.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vecs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl9/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610"=
>i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19319/shard-skl2/igt@gem_exec_schedule@u-fairslice@vecs0.htm=
l">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@gem_softpin@32b-excludes-last-page}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-glk7/igt@gem_softpin@32b-excludes-last-page.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1931=
9/shard-glk8/igt@gem_softpin@32b-excludes-last-page.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19319_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all@replace:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl7/igt@drm_mm@all@replace.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl3/igt=
@drm_mm@all@replace.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2485">i915#2485</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2813">i915#2813</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-iclb1/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-skl8/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/26=
58">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19319/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i91=
5#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-skl8/igt@kms_big_joiner@basic.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-s=
kl5/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-skl8/igt@kms_color@pipe-d-ctm-0-5.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-skl3/igt@kms_color_chamelium@pipe-b-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-gamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-apl6/igt@kms_color_chamelium@pipe-c-gam=
ma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-apl6/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19319/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-apl6/igt@kms_flip@2x-flip-vs-panning.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19319/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-in=
dfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-render.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-apl6/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-i=
clb4/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-skl3/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19319/shard-skl3/igt@perf@polling-small-buf.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i=
915#1722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_fair@basic-none-solo@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19319/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-glk1/igt@gem_exec_whisper@basic-queues-priority-all.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/118">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19319/shard-glk3/igt@gem_exec_whisper@basic-queues-priority=
-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19319/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytile=
d.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/52">i915#52</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/54">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19319/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt=
-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19319/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-in=
terruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/sh=
ard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-seque=
nce.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/53">i915#53</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19319/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame=
-sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19319/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage=
-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-64:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl2/igt@kms_plane_cursor@pipe-b-primary-size-64.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19319/shard-skl4/igt@kms_plane_cursor@pipe-b-primary-size-64.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19319/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl3/igt@perf@polling.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shard-skl7/igt=
@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-apl3/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/sh=
ard-apl6/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-skl5/igt@sysfs_timeslice_duration@timeout@vecs0.html">FA=
IL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19319/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a>=
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19319/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-apl1/igt@kms_content_protection@legacy.html">FAIL</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110321">fdo#110321=
</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110336">fd=
o#110336</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19319/shard-apl4/igt@kms_content_protection@legacy.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#131=
9</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9585/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>) -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19319/shar=
d-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19319/shard-apl1/igt@runner@aborted.html">FAIL=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i91=
5#2295</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9585/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2667">i915#2667</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19319/shard-tglb1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
319/shard-tglb2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803</a>)<=
/p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9585 -&gt; Patchwork_19319</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9585: ce8ee6513f0f9d00ea44e1c4b7aff8b4883cda13 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5954: 2763c0977004bed596ee876c755b0768187ea9ab @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19319: c54c72aa7d1b4f7908782a467c29e3d022092159 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2386839870983448851==--

--===============0109152589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0109152589==--
