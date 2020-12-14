Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C742DA1A2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 21:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEBB6E14D;
	Mon, 14 Dec 2020 20:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F4AD6E14D;
 Mon, 14 Dec 2020 20:35:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06D85A008A;
 Mon, 14 Dec 2020 20:35:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 14 Dec 2020 20:35:12 -0000
Message-ID: <160797811202.28163.14763131441376278542@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204182309.14213-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201204182309.14213-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reduce_duplicated_switch_cases_in_hpd_code_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0578420467=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0578420467==
Content-Type: multipart/alternative;
 boundary="===============3277522743772123536=="

--===============3277522743772123536==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reduce duplicated switch cases in hpd code (rev2)
URL   : https://patchwork.freedesktop.org/series/84593/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9481_full -> Patchwork_19137_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19137_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-kbl1/igt@gem_softpin@noreloc-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#2521])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl4/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:
    - shard-hsw:          NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-hsw4/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-glk:          NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#54])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][14] ([i915#54]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +80 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl1/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][16] -> [FAIL][17] ([i915#2370])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [PASS][18] -> [FAIL][19] ([i915#2346])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#109274])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#2122])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#2672])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-hsw:          NOTRUN -> [SKIP][26] ([fdo#109271]) +22 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-hsw4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][27] ([fdo#109271]) +10 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#1188])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#533])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#533])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145] / [i915#265])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][34] ([fdo#108145] / [i915#265]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf@polling:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#1542]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl5/igt@perf@polling.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl5/igt@perf@polling.html

  
#### Possible fixes ####

  * {igt@gem_create@busy-create}:
    - shard-hsw:          [INCOMPLETE][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-hsw6/igt@gem_create@busy-create.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-hsw4/igt@gem_create@busy-create.html

  * igt@gem_exec_fence@syncobj-unused-fence:
    - shard-skl:          [WARN][41] ([i915#2690]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl3/igt@gem_exec_fence@syncobj-unused-fence.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl1/igt@gem_exec_fence@syncobj-unused-fence.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [DMESG-FAIL][43] ([i915#2291]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][45] ([i915#54]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#2295] / [i915#300]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][51] ([i915#2122]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][55] ([i915#2681] / [i915#2684]) -> [WARN][56] ([i915#1804] / [i915#2684]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][57] ([i915#2295] / [i915#2722] / [k.org#202321]) -> [FAIL][58] ([i915#2295] / [i915#2722] / [i915#483] / [k.org#202321])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk1/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk7/igt@runner@aborted.html
    - shard-skl:          [FAIL][59] ([i915#2295] / [i915#2722] / [i915#483]) -> [FAIL][60] ([i915#2295] / [i915#2722])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl9/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2690]: https://gitlab.freedesktop.org/drm/intel/issues/2690
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9481 -> Patchwork_19137

  CI-20190529: 20190529
  CI_DRM_9481: 968d6b8835487575d68732a7c0a1588795900de4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5893: ec4073d30b428aaf199c0f4de6c0a5ebdc1c1c65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19137: aa9607615fd61b66ea97bd85b356dd15ed7cd185 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/index.html

--===============3277522743772123536==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reduce duplicated switch cases in hpd code (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84593/">https://patchwork.freedesktop.org/series/84593/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9481_full -&gt; Patchwork_19137_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19137_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-kbl1/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-kbl7/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl4/igt@kms_chamelium@hdmi-aspect-ratio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-hsw4/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl1/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#2370</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-hsw4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl5/igt@perf@polling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl5/igt@perf@polling.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_create@busy-create}:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-hsw6/igt@gem_create@busy-create.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-hsw4/igt@gem_create@busy-create.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-unused-fence:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl3/igt@gem_exec_fence@syncobj-unused-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2690">i915#2690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl1/igt@gem_exec_fence@syncobj-unused-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-iclb3/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-glk1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-glk7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/shard-skl9/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19137/shard-skl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9481 -&gt; Patchwork_19137</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9481: 968d6b8835487575d68732a7c0a1588795900de4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5893: ec4073d30b428aaf199c0f4de6c0a5ebdc1c1c65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19137: aa9607615fd61b66ea97bd85b356dd15ed7cd185 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3277522743772123536==--

--===============0578420467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0578420467==--
