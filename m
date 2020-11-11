Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C13E72AF092
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 13:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC6F89FE8;
	Wed, 11 Nov 2020 12:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4871A89FDE;
 Wed, 11 Nov 2020 12:27:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41861A47DB;
 Wed, 11 Nov 2020 12:27:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 11 Nov 2020 12:27:21 -0000
Message-ID: <160509764124.4720.11096787407376174889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201109231239.17002-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201109231239.17002-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Introduce_intel=5Fdpll?=
 =?utf-8?b?X2dldF9od19zdGF0ZSgp?=
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
Content-Type: multipart/mixed; boundary="===============1368526764=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1368526764==
Content-Type: multipart/alternative;
 boundary="===============0720053039827582582=="

--===============0720053039827582582==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Introduce intel_dpll_get_hw_state()
URL   : https://patchwork.freedesktop.org/series/83664/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9305_full -> Patchwork_18877_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18877_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18877_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18877_full:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-snb7/igt@core_hotunplug@hotrebind-lateclose.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9305_full and Patchwork_18877_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18877_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb1/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb7/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_atomic@crtc-invalid-params-fence:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-tglb5/igt@kms_atomic@crtc-invalid-params-fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-tglb2/igt@kms_atomic@crtc-invalid-params-fence.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#96])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#2122])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl4/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1635] / [i915#1982]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-apl4/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-apl8/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw1/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-hsw:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw1/igt@kms_vblank@pipe-c-wait-forked-busy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw4/igt@kms_vblank@pipe-c-wait-forked-busy.html

  
#### Possible fixes ####

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-snb:          [FAIL][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-snb2/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-snb5/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_schedule@preempt-other@bcs0:
    - shard-skl:          [FAIL][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl6/igt@gem_exec_schedule@preempt-other@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl3/igt@gem_exec_schedule@preempt-other@bcs0.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-tglb:         [FAIL][37] ([i915#2521]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-tglb3/igt@kms_async_flips@alternate-sync-async-flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic@crtc-invalid-params-fence:
    - shard-snb:          [SKIP][39] ([fdo#109271]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-snb2/igt@kms_atomic@crtc-invalid-params-fence.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-snb7/igt@kms_atomic@crtc-invalid-params-fence.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][41] ([i915#54]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - shard-hsw:          [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-vga1:
    - shard-hsw:          [DMESG-WARN][47] ([i915#44]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw5/igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-vga1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw8/igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-vga1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences@a-dp1:
    - shard-apl:          [DMESG-WARN][51] ([i915#1635] / [i915#1982]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-apl4/igt@kms_flip@flip-vs-fences@a-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-apl8/igt@kms_flip@flip-vs-fences@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
    - shard-kbl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-iclb:         [INCOMPLETE][55] ([i915#1185]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-skl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl9/igt@kms_plane_lowres@pipe-a-tiling-yf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl5/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-kbl:          [INCOMPLETE][63] ([i915#1731]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-kbl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-kbl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - shard-skl:          [FAIL][65] ([i915#1732]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl2/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl4/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
#### Warnings ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-hsw:          [FAIL][67] ([i915#2644]) -> [WARN][68] ([i915#2283])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw8/igt@core_hotunplug@hotrebind-lateclose.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw4/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][69] ([fdo#109349]) -> [DMESG-WARN][70] ([i915#1226])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][71] ([i915#1611] / [i915#2439]) -> [FAIL][72] ([i915#1611] / [i915#2439] / [i915#483])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-kbl7/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-kbl3/igt@runner@aborted.html
    - shard-glk:          ([FAIL][73], [FAIL][74]) ([i915#1611] / [i915#1814] / [i915#2439] / [k.org#202321]) -> [FAIL][75] ([i915#1611] / [i915#2439] / [k.org#202321])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk5/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk8/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-glk6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2644]: https://gitlab.freedesktop.org/drm/intel/issues/2644
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9305 -> Patchwork_18877

  CI-20190529: 20190529
  CI_DRM_9305: de2429aefa185f06afb2b69d9bef24d3479d310b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5846: 2d522ecdf26c346af22e0406e0243b2932197b34 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18877: 163eaa5f262d4b3485b087cecabf5f8f8829188d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/index.html

--===============0720053039827582582==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Introduce intel_dpll_get_hw_state()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83664/">https://patchwork.freedesktop.org/series/83664/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9305_full -&gt; Patchwork_18877_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18877_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18877_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18877_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@hotrebind-lateclose:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-snb7/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9305_full and Patchwork_18877_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18877_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb7/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-tglb5/igt@kms_atomic@crtc-invalid-params-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-tglb2/igt@kms_atomic@crtc-invalid-params-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl4/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-apl4/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-apl8/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw1/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw6/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked-busy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw1/igt@kms_vblank@pipe-c-wait-forked-busy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw4/igt@kms_vblank@pipe-c-wait-forked-busy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-snb2/igt@gem_exec_flush@basic-wb-rw-before-default.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-snb5/igt@gem_exec_flush@basic-wb-rw-before-default.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-other@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl6/igt@gem_exec_schedule@preempt-other@bcs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl3/igt@gem_exec_schedule@preempt-other@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-tglb3/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-snb2/igt@kms_atomic@crtc-invalid-params-fence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-snb7/igt@kms_atomic@crtc-invalid-params-fence.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-vga1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw5/igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-vga1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/44">i915#44</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw8/igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-apl4/igt@kms_flip@flip-vs-fences@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-apl8/igt@kms_flip@flip-vs-fences@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl9/igt@kms_plane_lowres@pipe-a-tiling-yf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl5/igt@kms_plane_lowres@pipe-a-tiling-yf.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-kbl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-kbl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-skl2/igt@sysfs_timeslice_duration@timeout@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1732">i915#1732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-skl4/igt@sysfs_timeslice_duration@timeout@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-hsw8/igt@core_hotunplug@hotrebind-lateclose.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2644">i915#2644</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-hsw4/igt@core_hotunplug@hotrebind-lateclose.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-kbl7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-kbl3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9305/shard-glk8/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18877/shard-glk6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9305 -&gt; Patchwork_18877</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9305: de2429aefa185f06afb2b69d9bef24d3479d310b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5846: 2d522ecdf26c346af22e0406e0243b2932197b34 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18877: 163eaa5f262d4b3485b087cecabf5f8f8829188d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0720053039827582582==--

--===============1368526764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1368526764==--
