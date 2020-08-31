Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 939AC2577BB
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Aug 2020 12:51:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B60D89CF7;
	Mon, 31 Aug 2020 10:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E00E1897EB;
 Mon, 31 Aug 2020 10:51:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7A70A73C9;
 Mon, 31 Aug 2020 10:51:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 31 Aug 2020 10:51:19 -0000
Message-ID: <159887107978.7424.5608302061948426170@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200831083657.15600-1-jani.nikula@intel.com>
In-Reply-To: <20200831083657.15600-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/opregion=3A_add_suppo?=
 =?utf-8?q?rt_for_mailbox_=235_EDID?=
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
Content-Type: multipart/mixed; boundary="===============0960268554=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0960268554==
Content-Type: multipart/alternative;
 boundary="===============3703681481503044345=="

--===============3703681481503044345==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/opregion: add support for mailbox #5 EDID
URL   : https://patchwork.freedesktop.org/series/81179/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8944_full -> Patchwork_18423_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18423_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18423_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18423_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@semaphore-busy@bcs0:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb7/igt@perf_pmu@semaphore-busy@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb4/igt@perf_pmu@semaphore-busy@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_18423_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [PASS][3] -> [TIMEOUT][4] ([i915#1635] / [i915#1958])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-skl:          [PASS][5] -> [TIMEOUT][6] ([i915#1958])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl2/igt@gem_exec_reloc@basic-concurrent0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl1/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-kbl:          [PASS][7] -> [TIMEOUT][8] ([i915#1958])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl7/igt@gem_exec_whisper@basic-fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl7/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10] ([i915#1958]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-tglb3/igt@gem_exec_whisper@basic-forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-tglb1/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-glk8/igt@gem_exec_whisper@basic-queues-priority.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_sync@basic-store-all:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2356])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl7/igt@gem_sync@basic-store-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl7/igt@gem_sync@basic-store-all.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-glk:          [PASS][15] -> [TIMEOUT][16] ([i915#1521] / [i915#1958])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-glk1/igt@gem_tiled_swapping@non-threaded.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-glk9/igt@gem_tiled_swapping@non-threaded.html

  * igt@kms_color@pipe-c-ctm-green-to-red:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl4/igt@kms_color@pipe-c-ctm-green-to-red.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl7/igt@kms_color@pipe-c-ctm-green-to-red.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#2370])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1635] / [i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-hsw2/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#2122])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb5/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb6/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +11 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-apl:          [TIMEOUT][37] ([i915#1635] / [i915#1958]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-apl1/igt@gem_exec_whisper@basic-forked-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-apl7/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [TIMEOUT][39] ([i915#1958]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-glk3/igt@gem_exec_whisper@basic-queues-priority-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-glk1/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][41] ([i915#454]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock@contexts:
    - shard-skl:          [INCOMPLETE][43] ([i915#198] / [i915#2278]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl2/igt@i915_selftest@mock@contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl4/igt@i915_selftest@mock@contexts.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-glk3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl4/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl2/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +7 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][55] ([i915#155]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-iclb:         [FAIL][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-plane-scaling:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl6/igt@kms_plane_scaling@pipe-a-plane-scaling.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl10/igt@kms_plane_scaling@pipe-a-plane-scaling.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][65] ([i915#1319] / [i915#1958]) -> [TIMEOUT][66] ([i915#1319])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl2/igt@kms_content_protection@atomic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl7/igt@kms_content_protection@atomic.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][67] ([i915#1436]) -> [FAIL][68] ([i915#1611] / [i915#1814] / [i915#2029])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl2/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1521]: https://gitlab.freedesktop.org/drm/intel/issues/1521
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2356]: https://gitlab.freedesktop.org/drm/intel/issues/2356
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8944 -> Patchwork_18423

  CI-20190529: 20190529
  CI_DRM_8944: d76134d076ffda385d90d22a671075ebc748a7aa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5774: 2a5db9f60241383272aeec176e1b97b3f487209f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18423: ae6e883d24cea3558e4cf3c687945eb8b8d0c3cb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/index.html

--===============3703681481503044345==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/opregion: add support for mailbox #5 EDID</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81179/">https://patchwork.freedesktop.org/series/81179/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8944_full -&gt; Patchwork_18423_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18423_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18423_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18423_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf_pmu@semaphore-busy@bcs0:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb7/igt@perf_pmu@semaphore-busy@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb4/igt@perf_pmu@semaphore-busy@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18423_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl2/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl1/igt@gem_exec_reloc@basic-concurrent0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl7/igt@gem_exec_whisper@basic-fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl7/igt@gem_exec_whisper@basic-fds.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-tglb3/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-tglb1/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-glk8/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl7/igt@gem_sync@basic-store-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl7/igt@gem_sync@basic-store-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2356">i915#2356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-glk1/igt@gem_tiled_swapping@non-threaded.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-glk9/igt@gem_tiled_swapping@non-threaded.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1521">i915#1521</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl4/igt@kms_color@pipe-c-ctm-green-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl7/igt@kms_color@pipe-c-ctm-green-to-red.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#2370</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-hsw2/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb5/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb6/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +11 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-apl1/igt@gem_exec_whisper@basic-forked-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-apl7/igt@gem_exec_whisper@basic-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-glk3/igt@gem_exec_whisper@basic-queues-priority-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-glk1/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl1/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl2/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl2/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl4/igt@i915_selftest@mock@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-glk3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl4/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl2/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-a-plane-scaling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl6/igt@kms_plane_scaling@pipe-a-plane-scaling.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl10/igt@kms_plane_scaling@pipe-a-plane-scaling.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-iclb1/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-kbl2/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-kbl7/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8944/shard-skl2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18423/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8944 -&gt; Patchwork_18423</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8944: d76134d076ffda385d90d22a671075ebc748a7aa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5774: 2a5db9f60241383272aeec176e1b97b3f487209f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18423: ae6e883d24cea3558e4cf3c687945eb8b8d0c3cb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3703681481503044345==--

--===============0960268554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0960268554==--
