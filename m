Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EF022FCEF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 01:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A904389E9B;
	Mon, 27 Jul 2020 23:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B666A89E86;
 Mon, 27 Jul 2020 23:24:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B02CDA47E2;
 Mon, 27 Jul 2020 23:24:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 27 Jul 2020 23:24:10 -0000
Message-ID: <159589225068.26748.12844110663396442794@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200727213017.852589-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200727213017.852589-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/amdgpu/dc=3A_Stop_dma=5Fresv=5Flock_inversion_in_commit=5Ftail?=
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
Content-Type: multipart/mixed; boundary="===============0973717464=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0973717464==
Content-Type: multipart/alternative;
 boundary="===============5628022674439480934=="

--===============5628022674439480934==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
URL   : https://patchwork.freedesktop.org/series/79937/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8799_full -> Patchwork_18246_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18246_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#2165])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl10/igt@gem_mmap_gtt@fault-concurrent.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl4/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-apl1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +10 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl5/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#79])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#198])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-kbl1/igt@kms_flip_tiling@flip-yf-tiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-kbl7/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-iclb8/igt@kms_psr@psr2_primary_blt.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#1820])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [DMESG-WARN][25] ([i915#1982]) -> [PASS][26] +10 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl3/igt@gem_eio@in-flight-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][27] ([i915#118] / [i915#95]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-glk8/igt@gem_exec_whisper@basic-contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-glk4/igt@gem_exec_whisper@basic-contexts.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][29] ([i915#1436] / [i915#716]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-glk2/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_atomic_transition@1x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [DMESG-WARN][31] ([i915#402]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-tglb1/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking-fencing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-tglb7/igt@kms_atomic_transition@1x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][33] ([i915#118] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:
    - shard-glk:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][39] ([i915#72]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-skl:          [FAIL][41] ([i915#699]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][43] ([i915#1188]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl4/igt@perf_pmu@module-unload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-apl8/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][49] ([i915#658]) -> [SKIP][50] ([i915#588])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [INCOMPLETE][52] ([i915#155])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][54] ([fdo#108145] / [i915#1982]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][55], [FAIL][56], [FAIL][57], [FAIL][58], [FAIL][59], [FAIL][60], [FAIL][61], [FAIL][62], [FAIL][63], [FAIL][64], [FAIL][65], [FAIL][66], [FAIL][67]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> [FAIL][68] ([i915#1635] / [i915#2110])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl6/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl7/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl3/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl1/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl4/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl6/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl2/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl4/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl3/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl6/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl8/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl7/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl2/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-apl8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][69], [FAIL][70], [FAIL][71], [FAIL][72], [FAIL][73], [FAIL][74], [FAIL][75], [FAIL][76], [FAIL][77], [FAIL][78], [FAIL][79]) ([i915#1436] / [i915#2110]) -> ([FAIL][80], [FAIL][81]) ([i915#1436] / [i915#1611] / [i915#2110])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl3/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl9/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl5/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl10/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl2/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl8/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl4/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl3/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl9/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl6/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl6/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl4/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl8/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2165]: https://gitlab.freedesktop.org/drm/intel/issues/2165
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8799 -> Patchwork_18246

  CI-20190529: 20190529
  CI_DRM_8799: f8675332cfe857f95352e32cb329416941d90725 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18246: be92e429f9aa6760c8f355a4d4e4fbe1b82ee29a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/index.html

--===============5628022674439480934==
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
<tr><td><b>Series:</b></td><td>drm/amdgpu/dc: Stop dma_resv_lock inversion =
in commit_tail</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/79937/">https://patchwork.freedesktop.org/series/79937/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18246/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18246/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8799_full -&gt; Patchwork_18246_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18246_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vcs0.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18246/shard-skl10/igt@gem_ctx_persistence@engines-mixed-process@vcs=
0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1528">i915#1528</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl10/igt@gem_mmap_gtt@fault-concurrent.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/sh=
ard-skl4/igt@gem_mmap_gtt@fault-concurrent.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2165">i915#2165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-apl1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
246/shard-apl1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#16=
35</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-negative:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/sha=
rd-skl5/igt@kms_color@pipe-b-ctm-negative.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +10 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18246/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18246/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/s=
hard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-yf-tiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-kbl1/igt@kms_flip_tiling@flip-yf-tiled.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/sha=
rd-kbl7/igt@kms_flip_tiling@flip-yf-tiled.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-in=
dfb-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18246/shard-tglb7/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-indfb-msflip-blt.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl=
9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-i=
clb8/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shar=
d-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1820">i915#1820</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl3/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8246/shard-skl5/igt@gem_eio@in-flight-suspend.html">PASS</a> +10 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-glk8/igt@gem_exec_whisper@basic-contexts.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i=
915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18246/shard-glk4/igt@gem_exec_whisper@basic-contexts.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-glk5/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18246/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@1x-modeset-transitions-nonblocking-fencing:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-tglb1/igt@kms_atomic_transition@1x-modeset-transitions-n=
onblocking-fencing.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-tglb7/igt@kms_atomic_trans=
ition@1x-modeset-transitions-nonblocking-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i91=
5#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">=
i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18246/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18246/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18246/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-64x64-top-=
edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/72">i915#72</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18246/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-at=
omic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling-y:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling-y.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/699">i915=
#699</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18246/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-y.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/=
shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18246/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-apl4/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1=
982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18246/shard-apl8/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
246/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18246/shard-kbl4/igt@kms_plane@plane-panning-=
bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18246/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8799/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_87=
99/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/sh=
ard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_8799/shard-apl4/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-a=
pl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8799/shard-apl6/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl8/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_8799/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-apl2/igt@ru=
nner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1610">i915#1610</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2110">i915#2110</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/637">i915#637</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-apl8/igt@runner@abo=
rted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2110">i915#2110</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8799/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl9/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8799/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl10/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8=
799/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl8/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/s=
hard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_8799/shard-skl3/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-=
skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_8799/shard-skl6/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8799/shard-skl6/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_18246/shard-skl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18246/shard-skl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)<=
/p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8799 -&gt; Patchwork_18246</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8799: f8675332cfe857f95352e32cb329416941d90725 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18246: be92e429f9aa6760c8f355a4d4e4fbe1b82ee29a @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5628022674439480934==--

--===============0973717464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0973717464==--
