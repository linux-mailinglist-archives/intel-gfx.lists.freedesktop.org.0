Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42768222EC8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 01:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8F06ED1A;
	Thu, 16 Jul 2020 23:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 845876ED1A;
 Thu, 16 Jul 2020 23:11:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E679A363B;
 Thu, 16 Jul 2020 23:11:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 16 Jul 2020 23:11:31 -0000
Message-ID: <159494109148.25376.205980905139029762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_PCI_ID_cleanup?=
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
Content-Type: multipart/mixed; boundary="===============1256068555=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1256068555==
Content-Type: multipart/alternative;
 boundary="===============6546627947039811242=="

--===============6546627947039811242==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: PCI ID cleanup
URL   : https://patchwork.freedesktop.org/series/79561/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8757_full -> Patchwork_18192_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18192_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18192_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18192_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl2/igt@i915_suspend@sysfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl10/igt@i915_suspend@sysfs-reader.html

  
Known issues
------------

  Here are the changes found in Patchwork_18192_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#2079])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl3/igt@gem_exec_balancer@bonded-early.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl2/igt@gem_exec_balancer@bonded-early.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-apl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#79]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#2122])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#123])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109642] / [fdo#111068])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@crtc-id:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl3/igt@kms_vblank@crtc-id.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl9/igt@kms_vblank@crtc-id.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#1542])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb5/igt@perf@polling-parameterized.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb7/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1722])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl5/igt@perf@polling-small-buf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl1/igt@perf@polling-small-buf.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#1820])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  * igt@vgem_slow@nohang:
    - shard-tglb:         [PASS][33] -> [DMESG-WARN][34] ([i915#402])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb6/igt@vgem_slow@nohang.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb1/igt@vgem_slow@nohang.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][35] ([i915#1528]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@gem_ctx_persistence@processes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:
    - shard-tglb:         [INCOMPLETE][37] ([i915#2119] / [i915#2149]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb7/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][41] ([i915#402]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb6/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb7/igt@i915_module_load@reload.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][45] ([i915#54]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][47] ([i915#79]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][49] ([i915#198]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-kbl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb8/igt@kms_psr@psr2_basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-c-wait-busy-hang:
    - shard-apl:          [DMESG-WARN][61] ([i915#1635] / [i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl1/igt@kms_vblank@pipe-c-wait-busy-hang.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-apl4/igt@kms_vblank@pipe-c-wait-busy-hang.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [DMESG-FAIL][63] ([fdo#108145] / [i915#1635] / [i915#1982]) -> [FAIL][64] ([fdo#108145] / [i915#1635] / [i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][65], [FAIL][66], [FAIL][67], [FAIL][68]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][69] ([i915#1635] / [i915#2110])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl1/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl8/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl3/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl7/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-apl2/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2149]: https://gitlab.freedesktop.org/drm/intel/issues/2149
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8757 -> Patchwork_18192

  CI-20190529: 20190529
  CI_DRM_8757: 6802049b80a49f5f45c2bc2dd3e6d189204dc2bb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5738: bc8b56fe177af34fbde7b96f1f66614a0014c6ef @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18192: e65cc9c4b7954706e66eaef7e8d093304a181512 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/index.html

--===============6546627947039811242==
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
<tr><td><b>Series:</b></td><td>drm/i915: PCI ID cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79561/">https://patchwork.freedesktop.org/series/79561/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8757_full -&gt; Patchwork_18192_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18192_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18192_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18192_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@sysfs-reader:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl2/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl10/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18192_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl3/igt@gem_exec_balancer@bonded-early.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl2/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2079">i915#2079</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-apl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-iclb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@crtc-id:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl3/igt@kms_vblank@crtc-id.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl9/igt@kms_vblank@crtc-id.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb5/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb7/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl5/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl1/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1820">i915#1820</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_slow@nohang:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb6/igt@vgem_slow@nohang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb1/igt@vgem_slow@nohang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@gem_ctx_persistence@processes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl4/igt@gem_ctx_persistence@processes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb7/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2149">i915#2149</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl2/igt@gem_workarounds@suspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb6/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb7/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling-yf:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-iclb8/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl1/igt@kms_vblank@pipe-c-wait-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-apl4/igt@kms_vblank@pipe-c-wait-busy-hang.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8757/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18192/shard-apl2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8757 -&gt; Patchwork_18192</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8757: 6802049b80a49f5f45c2bc2dd3e6d189204dc2bb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5738: bc8b56fe177af34fbde7b96f1f66614a0014c6ef @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18192: e65cc9c4b7954706e66eaef7e8d093304a181512 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6546627947039811242==--

--===============1256068555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1256068555==--
