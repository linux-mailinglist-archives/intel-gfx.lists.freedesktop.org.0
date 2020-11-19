Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 584672B8A94
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 05:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF1C589DC9;
	Thu, 19 Nov 2020 04:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E079189D8E;
 Thu, 19 Nov 2020 04:08:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8A54A008A;
 Thu, 19 Nov 2020 04:08:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 19 Nov 2020 04:08:32 -0000
Message-ID: <160575891285.18184.6067067685584235184@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201118165320.26829-1-jani.nikula@intel.com>
In-Reply-To: <20201118165320.26829-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_relay=3A_allow_the_use_of_const_cal?=
 =?utf-8?q?lback_structs?=
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
Content-Type: multipart/mixed; boundary="===============1534751942=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1534751942==
Content-Type: multipart/alternative;
 boundary="===============1333993727676868179=="

--===============1333993727676868179==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/6] relay: allow the use of const callback structs
URL   : https://patchwork.freedesktop.org/series/84030/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9354_full -> Patchwork_18936_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9354_full and Patchwork_18936_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 175 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18936_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-hostile@vebox:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb3/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#2502])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb5/igt@gem_exec_endless@dispatch@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb5/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_reloc@basic-range:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-glk9/igt@gem_exec_reloc@basic-range.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-glk2/igt@gem_exec_reloc@basic-range.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2346])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#52] / [i915#54]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * igt@kms_flip@blocking-absolute-wf_vblank@a-dp1:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1635] / [i915#1982]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-apl3/igt@kms_flip@blocking-absolute-wf_vblank@a-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-apl1/igt@kms_flip@blocking-absolute-wf_vblank@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-tglb6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-tglb3/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl8/igt@kms_hdr@bpc-switch.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109642] / [fdo#111068])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-kbl2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-kbl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-iclb:         [PASS][25] -> [INCOMPLETE][26] ([i915#1078] / [i915#1185] / [i915#2295])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_vgem@basic-fence-blt:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl10/igt@prime_vgem@basic-fence-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl1/igt@prime_vgem@basic-fence-blt.html

  * igt@sysfs_preempt_timeout@timeout@rcs0:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#2060])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl2/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl9/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@i915_pm_rpm@i2c:
    - shard-skl:          [DMESG-WARN][33] ([i915#1982]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl10/igt@i915_pm_rpm@i2c.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl7/igt@i915_pm_rpm@i2c.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][35] ([i915#2521]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-kbl3/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * {igt@kms_async_flips@test-time-stamp}:
    - shard-tglb:         [FAIL][37] ([i915#2597]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-tglb1/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - shard-glk:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-glk3/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-glk5/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-tglb:         [FAIL][43] ([i915#2346]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][45] ([i915#2598]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [FAIL][47] ([i915#2122]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-tglb:         [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-tglb8/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-tglb7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-kbl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_lease@lease_get:
    - shard-snb:          [SKIP][55] ([fdo#109271]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-snb4/igt@kms_lease@lease_get.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-snb4/igt@kms_lease@lease_get.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-kbl:          [DMESG-WARN][59] ([i915#165] / [i915#78]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-x.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-kbl1/igt@kms_plane_lowres@pipe-c-tiling-x.html
    - shard-apl:          [DMESG-WARN][61] ([i915#1635] / [i915#1982]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-apl6/igt@kms_plane_lowres@pipe-c-tiling-x.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-apl8/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@sysfs_preempt_timeout@timeout@vecs0:
    - shard-skl:          [FAIL][65] ([i915#2060]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl2/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl9/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][67] ([i915#588]) -> [SKIP][68] ([i915#658])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [DMESG-FAIL][69] ([i915#1982]) -> [DMESG-WARN][70] ([i915#1982])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][71] ([i915#1226]) -> [SKIP][72] ([fdo#109349])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][73] ([i915#1982]) -> [DMESG-FAIL][74] ([i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [FAIL][75] ([i915#2122]) -> [DMESG-WARN][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@runner@aborted:
    - shard-iclb:         [FAIL][77] ([i915#2295] / [i915#2439]) -> [FAIL][78] ([i915#2295] / [i915#2439] / [i915#483])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-iclb4/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-iclb1/igt@runner@aborted.html
    - shard-glk:          [FAIL][79] ([i915#1611] / [i915#2295] / [i915#2439] / [i915#483] / [k.org#202321]) -> [FAIL][80] ([i915#1611] / [i915#2295] / [i915#2439] / [k.org#202321])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-glk3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-glk5/igt@runner@aborted.html
    - shard-skl:          [FAIL][81] ([i915#1611] / [i915#2295] / [i915#2439] / [i915#483]) -> ([FAIL][82], [FAIL][83]) ([i915#1436] / [i915#1611] / [i915#1814] / [i915#2029] / [i915#2295] / [i915#2439] / [i915#483])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9354/shard-skl7/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl9/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2060]: https://gitlab.freedesktop.org/drm/intel/issues/2060
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9354 -> Patchwork_18936

  CI-20190529: 20190529
  CI_DRM_9354: 642302be94b759f4a012f9bf629b874ce79524e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5857: 0e3ec8945fd30fe8e4a38ec3d7acacc0268b225c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18936: ac95f490fbc0e0606cc538125b2befb4852a89d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/index.html

--===============1333993727676868179==
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
<tr><td><b>Series:</b></td><td>series starting with [1/6] relay: allow the =
use of const callback structs</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84030/">https://patchwork.freedesktop.org/series/84030/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18936/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18936/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9354_full -&gt; Patchwork_18936_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9354_full and Patchwork_18=
936_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 175 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18936_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@vebox:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-iclb3/igt@gem_ctx_persistence@legacy-engines-hostile@veb=
ox.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18936/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-hostile=
@vebox.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-iclb5/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/s=
hard-iclb5/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-glk9/igt@gem_exec_reloc@basic-range.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-=
glk2/igt@gem_exec_reloc@basic-range.html">DMESG-WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18936/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18936/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#=
2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-yt=
iled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18936/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-pwri=
te-ytiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/52">i915#52</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-apl3/igt@kms_flip@blocking-absolute-wf_vblank@a-dp1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18936/shard-apl1/igt@kms_flip@blocking-absolute-wf_vblank@a-dp1.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-tglb6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18936/shard-tglb3/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl9/igt=
@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-ic=
lb8/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/s=
hard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-kbl2/igt@kms_universal_plane@universal-plane-gen9-featur=
es-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18936/shard-kbl1/igt@kms_universal_plane@universal-plane-=
gen9-features-pipe-a.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18936/shard-iclb3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
078">i915#1078</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1185">i915#1185</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl10/igt@prime_vgem@basic-fence-blt.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard=
-skl1/igt@prime_vgem@basic-fence-blt.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +8 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl2/igt@sysfs_preempt_timeout@timeout@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1893=
6/shard-skl9/igt@sysfs_preempt_timeout@timeout@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2060">i915#2060</a>)</l=
i>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18936/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl10/igt@i915_pm_rpm@i2c.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/sha=
rd-skl7/igt@i915_pm_rpm@i2c.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-event=
s.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18936/shard-kbl3/igt@kms_async_flips@async-flip-with-page-f=
lip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@test-time-stamp}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18936/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18936/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-glk3/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18936/shard-glk5/igt@kms_cursor_edge_walk@pipe-a-128x128-=
top-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/23=
46">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18936/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-lega=
cy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i=
915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18936/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i9=
15#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18936/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-tglb8/igt@kms_flip@plain-flip-ts-check-interruptible@a-e=
dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18936/shard-tglb7/igt@kms_flip@plain-flip-ts-check-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-in=
dfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-kbl1/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a> +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/sha=
rd-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_get:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-snb4/igt@kms_lease@lease_get.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard=
-snb4/igt@kms_lease@lease_get.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18936/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage=
-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-x:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9354/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-x.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i915=
#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/78">i=
915#78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18936/shard-kbl1/igt@kms_plane_lowres@pipe-c-tiling-x.html">PASS</a></=
p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9354/shard-apl6/igt@kms_plane_lowres@pipe-c-tiling-x.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i91=
5#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198=
2">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18936/shard-apl8/igt@kms_plane_lowres@pipe-c-tiling-x.html">PASS=
</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18936/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl2/igt@sysfs_preempt_timeout@timeout@vecs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2060">i915#=
2060</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18936/shard-skl9/igt@sysfs_preempt_timeout@timeout@vecs0.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
936/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl6/igt@kms_cursor_legac=
y@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18936/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-ed=
p1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18936/shard-skl10/igt@kms_flip@plain-flip-ts-check-i=
nterruptible@a-edp1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9354/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-ed=
p1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18936/shard-skl10/igt@kms_flip@plain-flip-ts-check-interru=
ptible@b-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9354/shard-iclb4/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-=
iclb1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9354/shard-glk3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</=
a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org=
#202321</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18936/shard-glk5/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> /=
 <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202=
321</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9354/shard-skl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
936/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18936/shard-skl3/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1611">i915#1611</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
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
<li>Linux: CI_DRM_9354 -&gt; Patchwork_18936</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9354: 642302be94b759f4a012f9bf629b874ce79524e6 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5857: 0e3ec8945fd30fe8e4a38ec3d7acacc0268b225c @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18936: ac95f490fbc0e0606cc538125b2befb4852a89d8 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1333993727676868179==--

--===============1534751942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1534751942==--
