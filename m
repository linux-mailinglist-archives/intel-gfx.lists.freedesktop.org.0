Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6423222EF8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 01:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2C46ED20;
	Thu, 16 Jul 2020 23:27:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D18606ED20;
 Thu, 16 Jul 2020 23:27:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB17AA47EA;
 Thu, 16 Jul 2020 23:27:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 16 Jul 2020 23:27:16 -0000
Message-ID: <159494203682.25377.2992834606236216160@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200716190426.17047-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716190426.17047-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Move_WaDisableDopClockG?=
 =?utf-8?q?ating=3Askl_to_skl=5Finit=5Fclock=5Fgating=28=29?=
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
Content-Type: multipart/mixed; boundary="===============0538954398=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0538954398==
Content-Type: multipart/alternative;
 boundary="===============0770404765918521963=="

--===============0770404765918521963==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Move WaDisableDopClockGating:skl to skl_init_clock_gating()
URL   : https://patchwork.freedesktop.org/series/79563/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8757_full -> Patchwork_18194_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_18194_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18194_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18194_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][1] ([i915#1319] / [i915#1958] / [i915#2119]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl6/igt@kms_content_protection@atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl7/igt@kms_content_protection@atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_18194_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +14 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl2/igt@gem_busy@close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl2/igt@gem_busy@close-race.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#165])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl6/igt@i915_pm_rpm@cursor-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl2/igt@i915_pm_rpm@cursor-dpms.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@ab-hdmi-a1-hdmi-a2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +14 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109642] / [fdo#111068])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-c-wait-busy:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl2/igt@kms_vblank@pipe-c-wait-busy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl3/igt@kms_vblank@pipe-c-wait-busy.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1722])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl5/igt@perf@polling-small-buf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl5/igt@perf@polling-small-buf.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#1820])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][33] ([i915#1528]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@gem_ctx_persistence@processes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl8/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][35] ([i915#1930]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:
    - shard-tglb:         [INCOMPLETE][39] ([i915#2119] / [i915#2149]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb7/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][43] ([i915#402]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb6/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-tglb3/igt@i915_module_load@reload.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][49] ([i915#79]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][51] ([i915#198]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl3/igt@kms_hdr@bpc-switch.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][57] ([fdo#109642] / [fdo#111068]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-c-wait-busy-hang:
    - shard-apl:          [DMESG-WARN][61] ([i915#1635] / [i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl1/igt@kms_vblank@pipe-c-wait-busy-hang.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-apl1/igt@kms_vblank@pipe-c-wait-busy-hang.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][63] ([fdo#109349]) -> [DMESG-WARN][64] ([i915#1226])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [DMESG-FAIL][65] ([fdo#108145] / [i915#1635] / [i915#1982]) -> [FAIL][66] ([fdo#108145] / [i915#1635] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][67], [FAIL][68], [FAIL][69], [FAIL][70]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][71] ([i915#1635] / [i915#2110])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl1/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl7/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl8/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl3/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-apl2/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2149]: https://gitlab.freedesktop.org/drm/intel/issues/2149
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8757 -> Patchwork_18194

  CI-20190529: 20190529
  CI_DRM_8757: 6802049b80a49f5f45c2bc2dd3e6d189204dc2bb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5738: bc8b56fe177af34fbde7b96f1f66614a0014c6ef @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18194: 82d36900bdea769bf657b7ad3cdf790f47bbfa68 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/index.html

--===============0770404765918521963==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Move WaDisableDopClockGating:skl to skl_init_clock_gating()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79563/">https://patchwork.freedesktop.org/series/79563/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8757_full -&gt; Patchwork_18194_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_18194_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18194_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18194_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@kms_content_protection@atomic:<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl6/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl7/igt@kms_content_protection@atomic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18194_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl2/igt@gem_busy@close-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl2/igt@gem_busy@close-race.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl6/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl2/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl2/igt@kms_vblank@pipe-c-wait-busy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl3/igt@kms_vblank@pipe-c-wait-busy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl5/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl5/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1820">i915#1820</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@gem_ctx_persistence@processes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl8/igt@gem_ctx_persistence@processes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb7/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2149">i915#2149</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl6/igt@gem_workarounds@suspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb6/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-tglb3/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl3/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb6/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl1/igt@kms_vblank@pipe-c-wait-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-apl1/igt@kms_vblank@pipe-c-wait-busy-hang.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18194/shard-apl2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8757 -&gt; Patchwork_18194</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8757: 6802049b80a49f5f45c2bc2dd3e6d189204dc2bb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5738: bc8b56fe177af34fbde7b96f1f66614a0014c6ef @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18194: 82d36900bdea769bf657b7ad3cdf790f47bbfa68 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0770404765918521963==--

--===============0538954398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0538954398==--
