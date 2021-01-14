Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8042F6E8E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 23:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EFB36E046;
	Thu, 14 Jan 2021 22:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A6F66E040;
 Thu, 14 Jan 2021 22:49:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57C0BA0019;
 Thu, 14 Jan 2021 22:49:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 Jan 2021 22:49:04 -0000
Message-ID: <161066454435.19649.18277268403609625536@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210114111817.3849-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210114111817.3849-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_DEBUG=5FGEM_to_the_recommended_CI_config?=
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
Content-Type: multipart/mixed; boundary="===============0770840738=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0770840738==
Content-Type: multipart/alternative;
 boundary="===============1530301841105167347=="

--===============1530301841105167347==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add DEBUG_GEM to the recommended CI config
URL   : https://patchwork.freedesktop.org/series/85868/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9608_full -> Patchwork_19356_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19356_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19356_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19356_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_softpin@softpin:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-glk4/igt@gem_softpin@softpin.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-glk1/igt@gem_softpin@softpin.html

  
Known issues
------------

  Here are the changes found in Patchwork_19356_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@render-ccs:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#2405])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-iclb4/igt@api_intel_bb@render-ccs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-iclb6/igt@api_intel_bb@render-ccs.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][5] ([i915#2658])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#1436] / [i915#716])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#2521])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl9/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#54]) +6 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271]) +33 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][17] ([i915#2122]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271]) +10 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-apl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +20 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_sysfs_edid_timing:
    - shard-kbl:          NOTRUN -> [FAIL][23] ([IGT#2])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#198])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#2437])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl9/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#2437])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_writeback@writeback-invalid-parameters.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][28] ([i915#658]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-iclb4/igt@feature_discovery@psr2.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [INCOMPLETE][30] ([i915#146] / [i915#198]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl10/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl10/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * {igt@gem_exec_fair@basic-flow@rcs0}:
    - shard-tglb:         [FAIL][32] ([i915#2842]) -> [PASS][33] +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * {igt@gem_exec_fair@basic-pace-share@rcs0}:
    - shard-glk:          [FAIL][34] ([i915#2842]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vecs0}:
    - shard-kbl:          [FAIL][36] ([i915#2842]) -> [PASS][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html

  * {igt@gem_exec_fair@basic-sync@rcs0}:
    - shard-kbl:          [SKIP][38] ([fdo#109271]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-kbl1/igt@gem_exec_fair@basic-sync@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-kbl:          [DMESG-WARN][40] ([i915#1610] / [i915#2803]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-kbl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-apl:          [DMESG-WARN][42] ([i915#1610]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-apl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-skl:          [DMESG-WARN][44] ([i915#1610] / [i915#2803]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][46] ([i915#1982]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl7/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl1/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][48] ([i915#54]) -> [PASS][49] +10 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][52] ([i915#1188]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl9/igt@kms_hdr@bpc-switch.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][54] ([fdo#108145] / [i915#265]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][56] ([fdo#109441]) -> [PASS][57] +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][58] ([i915#1804] / [i915#2684]) -> [WARN][59] ([i915#2684])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][60], [FAIL][61], [FAIL][62]) ([i915#1814] / [i915#2295] / [i915#2426]) -> [FAIL][63] ([i915#2295])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-kbl7/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-kbl2/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-kbl1/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-kbl2/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][64], [FAIL][65]) ([i915#2295] / [i915#2724]) -> ([FAIL][66], [FAIL][67], [FAIL][68]) ([i915#2295] / [i915#2426] / [i915#2724])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-iclb1/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-iclb2/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-iclb8/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-iclb8/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-iclb4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][69], [FAIL][70], [FAIL][71]) ([i915#1610] / [i915#2295] / [i915#2426]) -> ([FAIL][72], [FAIL][73], [FAIL][74]) ([fdo#109271] / [i915#2295] / [i915#716])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-apl4/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-apl1/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-apl3/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-apl7/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-apl3/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-apl6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][75], [FAIL][76], [FAIL][77]) ([i915#2029] / [i915#2295] / [i915#2426]) -> ([FAIL][78], [FAIL][79], [FAIL][80]) ([i915#2029] / [i915#2295])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl7/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl3/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl3/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl3/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl5/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9608 -> Patchwork_19356

  CI-20190529: 20190529
  CI_DRM_9608: 006125b38858f9be67f924e1834a1bb25ad20dec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5958: cb5bc26db33ed77cfabfc6a9e4777b9167596a67 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19356: 01d6d815be1ed2ebda7e786b0dff4538e915c083 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/index.html

--===============1530301841105167347==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add DEBUG_GEM to the recommended C=
I config</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85868/">https://patchwork.freedesktop.org/series/85868/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19356/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19356/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9608_full -&gt; Patchwork_19356_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19356_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19356_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19356_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_softpin@softpin:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-glk4/igt@gem_softpin@softpin.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-glk1/ig=
t@gem_softpin@softpin.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19356_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-iclb4/igt@api_intel_bb@render-ccs.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-ic=
lb6/igt@api_intel_bb@render-ccs.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-skl1/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/26=
58">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-apl3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard=
-apl6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19356/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i91=
5#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-skl9/igt@kms_chamelium@hdmi-hpd-fast.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19356/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_cursor_edge_walk@pipe-d-64=
x64-left-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19356/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-skl1/igt@kms_flip@plain-flip-fb-recreat=
e@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-apl4/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-skl9/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +20 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/s=
hard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19356/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198=
">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19356/shard-skl9/igt@kms_writeback@writeback-invalid=
-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19356/shard-kbl3/igt@kms_writeback@writeback-invalid=
-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-iclb4/igt@feature_discovery@psr2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard=
-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl10/igt@gem_ctx_isolation@preservation-s3@bcs0.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
46">i915#146</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19356/shard-skl10/igt@gem_ctx_isolation@preservation-s3@bcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-flow@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
356/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-share@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19356/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vecs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
356/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-sync@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-kbl1/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9356/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9608/shard-kbl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i=
915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19356/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">=
PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9608/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i=
915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19356/shard-apl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9608/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i=
915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19356/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">=
PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl7/igt@kms_color@pipe-c-ctm-blue-to-red.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i9=
15#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19356/shard-skl1/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19356/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html"=
>PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19356/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl9/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/shard-sk=
l8/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19356/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19356/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19356/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9608/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/sha=
rd-kbl2/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-iclb2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2724">i915#2724</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19356/shard-iclb8/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/sh=
ard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19356/shard-iclb4/igt@runner@aborted.html">=
FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295"=
>i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9608/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/sh=
ard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19356/shard-apl3/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356=
/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9608/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9608/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9608/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356/sh=
ard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19356/shard-skl5/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19356=
/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
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
<li>Linux: CI_DRM_9608 -&gt; Patchwork_19356</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9608: 006125b38858f9be67f924e1834a1bb25ad20dec @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5958: cb5bc26db33ed77cfabfc6a9e4777b9167596a67 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19356: 01d6d815be1ed2ebda7e786b0dff4538e915c083 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1530301841105167347==--

--===============0770840738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0770840738==--
