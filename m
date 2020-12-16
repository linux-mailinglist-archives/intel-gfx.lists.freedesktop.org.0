Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 602402DC92F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 23:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B814089BF6;
	Wed, 16 Dec 2020 22:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C7AB89B45;
 Wed, 16 Dec 2020 22:45:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89993A66C9;
 Wed, 16 Dec 2020 22:45:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zheng Yongjun" <zhengyongjun3@huawei.com>
Date: Wed, 16 Dec 2020 22:45:36 -0000
Message-ID: <160815873653.16510.6982071195137897579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201216132849.15741-1-zhengyongjun3@huawei.com>
In-Reply-To: <20201216132849.15741-1-zhengyongjun3@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZ3B1?=
 =?utf-8?q?/drm/i915=3A_convert_comma_to_semicolon?=
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
Content-Type: multipart/mixed; boundary="===============1791178210=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1791178210==
Content-Type: multipart/alternative;
 boundary="===============8495949527364814904=="

--===============8495949527364814904==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: gpu/drm/i915: convert comma to semicolon
URL   : https://patchwork.freedesktop.org/series/85006/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9494_full -> Patchwork_19160_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19160_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19160_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19160_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-hsw7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-hsw2/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_19160_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all@color_evict_range:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3] ([i915#198] / [i915#2485])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl7/igt@drm_mm@all@color_evict_range.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][4] ([i915#2389]) +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_mmap_gtt@coherency:
    - shard-iclb:         NOTRUN -> [SKIP][5] ([fdo#109292])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][6] ([i915#2658])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1699]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl9/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-iclb:         NOTRUN -> [SKIP][8] ([fdo#109293] / [fdo#109506])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@i915_pm_rpm@pc8-residency.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111304])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl5/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl8/igt@kms_color@pipe-a-ctm-negative.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl7/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][12] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#54]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +53 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl8/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][17] -> [FAIL][18] ([i915#96]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109274] / [fdo#109278])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#109278]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#533]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl5/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109274]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109280]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#1188])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109289]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#2437])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_writeback@writeback-pixel-formats.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109291])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@prime_nv_pcopy@test3_3.html

  * igt@prime_vgem@fence-read-hang:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109295])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@prime_vgem@fence-read-hang.html

  
#### Possible fixes ####

  * igt@drm_mm@all@insert_range:
    - shard-skl:          [INCOMPLETE][35] ([CI#80] / [i915#2485]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl7/igt@drm_mm@all@insert_range.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl7/igt@drm_mm@all@insert_range.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-iclb:         [INCOMPLETE][37] ([i915#1185]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * {igt@gem_exec_balancer@fairslice}:
    - shard-tglb:         [FAIL][39] ([i915#2802]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-tglb6/igt@gem_exec_balancer@fairslice.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-tglb5/igt@gem_exec_balancer@fairslice.html

  * {igt@gem_exec_schedule@u-fairslice@vcs0}:
    - shard-skl:          [DMESG-WARN][41] ([i915#1610]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl4/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-glk4/igt@gem_exec_whisper@basic-queues.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-glk8/igt@gem_exec_whisper@basic-queues.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][45] ([i915#198] / [i915#2405]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl8/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-apl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][51] ([i915#2346]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][53] ([i915#2122]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][57] ([i915#198]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][59] ([i915#1542]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl1/igt@perf@polling-parameterized.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl6/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][61] ([i915#2684]) -> [WARN][62] ([i915#2681] / [i915#2684])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][63] ([i915#2681] / [i915#2684]) -> [WARN][64] ([i915#1804] / [i915#2684])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][65] ([i915#2295] / [i915#483]) -> [FAIL][66] ([i915#2295])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-hsw1/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-hsw6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][67], [FAIL][68]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#2724]) -> ([FAIL][69], [FAIL][70]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#2724] / [i915#483])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb3/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb2/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb7/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb4/igt@runner@aborted.html
    - shard-glk:          ([FAIL][71], [FAIL][72]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321]) -> ([FAIL][73], [FAIL][74]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [k.org#202321])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-glk9/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-glk2/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-glk8/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-glk3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][75], [FAIL][76]) ([i915#2295] / [i915#2426] / [i915#2722]) -> [FAIL][77] ([i915#2295] / [i915#2722])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl8/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl4/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2485]: https://gitlab.freedesktop.org/drm/intel/issues/2485
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2802]: https://gitlab.freedesktop.org/drm/intel/issues/2802
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9494 -> Patchwork_19160

  CI-20190529: 20190529
  CI_DRM_9494: 0daa598dbcfd00141cb7e287d6e1369916097161 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5905: 3d0934900bddeb7a68f1abab4cd05077f0609e32 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19160: f7d323039f460825dd44fb183c09384ccd7f15ed @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/index.html

--===============8495949527364814904==
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
<tr><td><b>Series:</b></td><td>gpu/drm/i915: convert comma to semicolon</td=
></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85006/">https://patchwork.freedesktop.org/series/85006/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19160/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19160/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9494_full -&gt; Patchwork_19160_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19160_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19160_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19160_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_vblank@pipe-b-query-forked-busy-hang:<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-hsw7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19160/shard-hsw2/igt@kms_vblank@pipe-b-query-forked-busy-hang.html">INCOM=
PLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19160_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all@color_evict_range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-skl7/igt@drm_mm@all@color_evict_range.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/198">i915#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2485">i915#2485</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb2/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@gem_mmap_gtt@coherency.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109292"=
>fdo#109292</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@gem_pwrite@basic-exhaustion.h=
tml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-skl9/igt@gem_userptr_blits@process-exit=
-mmap@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@i915_pm_rpm@pc8-residency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
93">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-skl5/igt@kms_ccs@pipe-c-ccs-on-another-=
bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-negative:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl8/igt@kms_color@pipe-a-ctm-negative.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/sha=
rd-skl7/igt@kms_color@pipe-a-ctm-negative.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_color_chamelium@pipe-a-ct=
m-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19160/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-skl8/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19160/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-lega=
cy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/96">i915#96</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-=
flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_cursor_legacy@pipe-d-sing=
le-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-skl5/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_flip@2x-nonexisting-fb.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +6 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-=
skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_pipe_b_c_ivb@pipe-b-doubl=
e-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19160/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_psr@psr2_primary_blt.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10944=
1">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/s=
hard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@kms_writeback@writeback-pixel=
-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@prime_nv_pcopy@test3_3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291"=
>fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19160/shard-iclb5/igt@prime_vgem@fence-read-hang.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
295">fdo#109295</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_mm@all@insert_range:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl7/igt@drm_mm@all@insert_range.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2485">i91=
5#2485</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19160/shard-skl7/igt@drm_mm@all@insert_range.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1185">i915#1185</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19160/shard-iclb5/igt@gem_ctx_isolation@preservation-s3@vecs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_balancer@fairslice}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-tglb6/igt@gem_exec_balancer@fairslice.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2802">i915#2802</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1916=
0/shard-tglb5/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vcs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl4/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19160/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-glk4/igt@gem_exec_whisper@basic-queues.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#1=
18</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i91=
5#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19160/shard-glk8/igt@gem_exec_whisper@basic-queues.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i9=
15#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/240=
5">i915#2405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19160/shard-skl8/igt@gem_workarounds@suspend-resume-fd.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19160/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen=
.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19160/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomi=
c.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19160/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-=
crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i9=
15#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19160/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb7/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/s=
hard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19160/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-d=
pms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl1/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/=
shard-skl6/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19160/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19160/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#=
2684</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9494/shard-hsw1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-hsw=
6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-iclb2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2724">i915#2724</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-iclb7/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19160/shard-iclb4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915=
#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-glk2/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a> / <a href=3D"https://bugzilla.kernel.or=
g/show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19160/shard-glk8/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19160/shard-glk3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a=
> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#=
202321</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9494/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9494/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2722">i915#2722</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19160/shard-skl1/igt@runner@aborted.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i91=
5#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/272=
2">i915#2722</a>)</p>
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
<li>Linux: CI_DRM_9494 -&gt; Patchwork_19160</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9494: 0daa598dbcfd00141cb7e287d6e1369916097161 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5905: 3d0934900bddeb7a68f1abab4cd05077f0609e32 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19160: f7d323039f460825dd44fb183c09384ccd7f15ed @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8495949527364814904==--

--===============1791178210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1791178210==--
