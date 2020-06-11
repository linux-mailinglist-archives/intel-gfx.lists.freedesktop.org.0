Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0851F67CB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 14:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6793C6E13F;
	Thu, 11 Jun 2020 12:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E8786E13F;
 Thu, 11 Jun 2020 12:19:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97DE4A00E7;
 Thu, 11 Jun 2020 12:19:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Thu, 11 Jun 2020 12:19:08 -0000
Message-ID: <159187794861.22715.17764705429208843004@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200610191232.11620-1-uma.shankar@intel.com>
In-Reply-To: <20200610191232.11620-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev3=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev3)
URL   : https://patchwork.freedesktop.org/series/68081/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8611_full -> Patchwork_17922_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17922_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17922_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17922_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][1], [FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5]) ([i915#1569] / [i915#1611] / [i915#1687] / [i915#192] / [i915#193] / [i915#194])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          NOTRUN -> ([FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10]) ([fdo#109271] / [i915#1610] / [i915#1611])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl1/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl1/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl4/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl1/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17922_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1528])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][13] -> [INCOMPLETE][14] ([i915#155] / [i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl3/igt@gem_workarounds@suspend-resume.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1436] / [i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#402]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb3/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-tglb1/igt@i915_module_load@reload.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][19] -> [WARN][20] ([i915#1519])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_atomic@atomic-invalid-params:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#95]) +11 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl8/igt@kms_atomic@atomic-invalid-params.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl7/igt@kms_atomic@atomic-invalid-params.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#93] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl3/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][29] -> [FAIL][30] ([i915#96])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +10 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl1/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl3/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@pipe-c-single-bo:
    - shard-hsw:          [PASS][33] -> [INCOMPLETE][34] ([i915#61])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-hsw6/igt@kms_cursor_legacy@pipe-c-single-bo.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-hsw4/igt@kms_cursor_legacy@pipe-c-single-bo.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][37] -> [SKIP][38] ([i915#668]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb2/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#69])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-hsw:          [PASS][45] -> [FAIL][46] ([i915#1542])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-hsw2/igt@perf@blocking-parameterized.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-hsw6/igt@perf@blocking-parameterized.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#1731])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_param@root-set:
    - shard-apl:          [DMESG-WARN][51] ([i915#95]) -> [PASS][52] +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl7/igt@gem_ctx_param@root-set.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl8/igt@gem_ctx_param@root-set.html

  * igt@gem_exec_balancer@sliced:
    - shard-tglb:         [TIMEOUT][53] ([i915#1936]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb5/igt@gem_exec_balancer@sliced.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-tglb7/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [INCOMPLETE][55] ([i915#82]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-snb2/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-snb6/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [FAIL][57] ([fdo#103375]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl3/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][59] ([i915#118] / [i915#95]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-tglb:         [DMESG-WARN][63] ([i915#128]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb2/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-tglb5/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +14 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_flip@busy-flip@b-edp1:
    - shard-skl:          [FAIL][67] ([i915#275]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl5/igt@kms_flip@busy-flip@b-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl8/igt@kms_flip@busy-flip@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-iclb:         [FAIL][69] ([i915#79]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-iclb4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-dp1:
    - shard-kbl:          [DMESG-WARN][71] ([i915#1982]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_flip@plain-flip-ts-check@a-dp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl7/igt@kms_flip@plain-flip-ts-check@a-dp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][73] ([i915#155]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-glk:          [DMESG-WARN][75] ([i915#1982]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][79] ([i915#173]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb1/igt@kms_psr@no_drrs.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-iclb2/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][83] ([i915#31]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl1/igt@kms_setmode@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-skl3/igt@kms_setmode@basic.html

  * igt@perf@polling-parameterized:
    - shard-hsw:          [FAIL][85] ([i915#1542]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-hsw6/igt@perf@polling-parameterized.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-hsw4/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][87] ([i915#1982]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb5/igt@perf_pmu@module-unload.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-iclb7/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@other-init-3:
    - shard-tglb:         [DMESG-WARN][89] ([i915#402]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb6/igt@perf_pmu@other-init-3.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-tglb1/igt@perf_pmu@other-init-3.html

  * igt@syncobj_wait@single-wait-all-for-submit-signaled:
    - shard-tglb:         [TIMEOUT][91] -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb5/igt@syncobj_wait@single-wait-all-for-submit-signaled.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-tglb7/igt@syncobj_wait@single-wait-all-for-submit-signaled.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-glk:          [TIMEOUT][93] ([i915#1958]) -> [INCOMPLETE][94] ([i915#1958] / [i915#58] / [k.org#198133])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk5/igt@gem_exec_reloc@basic-concurrent16.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-glk8/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][95] ([i915#454]) -> [SKIP][96] ([i915#468])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][97] ([i915#1515]) -> [WARN][98] ([i915#1515])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][99] ([i915#1319] / [i915#1635]) -> [TIMEOUT][100] ([i915#1319])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl7/igt@kms_content_protection@atomic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][101] ([i915#1319]) -> [FAIL][102] ([fdo#110321] / [fdo#110336])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][103] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][104] ([i915#1319] / [i915#1635])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl6/igt@kms_content_protection@legacy.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][105] ([i915#1319] / [i915#1958]) -> [TIMEOUT][106] ([i915#1319])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_content_protection@lic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl7/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][107] ([i915#1319] / [i915#1958]) -> [DMESG-FAIL][108] ([fdo#110321] / [i915#95])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_content_protection@srm.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl2/igt@kms_content_protection@srm.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][109] ([i915#180]) -> [INCOMPLETE][110] ([i915#155] / [i915#180])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][111] ([i915#95]) -> [INCOMPLETE][112] ([i915#180])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1687]: https://gitlab.freedesktop.org/drm/intel/issues/1687
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#1936]: https://gitlab.freedesktop.org/drm/intel/issues/1936
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#275]: https://gitlab.freedesktop.org/drm/intel/issues/275
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8611 -> Patchwork_17922

  CI-20190529: 20190529
  CI_DRM_8611: b87354483fa40fef86da19ade9bfe9349f0cf6d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5702: d16ad07e7f2a028e14d61f570931c87fa5ce404c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17922: 0903ebe28a8fb9c912916613977b2e77d83eac8c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
