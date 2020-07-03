Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8CE213480
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 08:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34CE6E8CE;
	Fri,  3 Jul 2020 06:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F2F66E8CF;
 Fri,  3 Jul 2020 06:51:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A1DEA8169;
 Fri,  3 Jul 2020 06:51:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Fri, 03 Jul 2020 06:51:38 -0000
Message-ID: <159375909836.25593.3606591530559760330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702230957.30536-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200702230957.30536-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/dp=3A_Correctly_advertise_HBR3_for_GEN11+=22_?=
 =?utf-8?b?KHJldjIp?=
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

Series: Revert "drm/i915/dp: Correctly advertise HBR3 for GEN11+" (rev2)
URL   : https://patchwork.freedesktop.org/series/79065/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8702_full -> Patchwork_18077_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18077_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18077_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18077_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl1/igt@gem_exec_flush@basic-wb-rw-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-kbl2/igt@gem_exec_flush@basic-wb-rw-default.html

  
Known issues
------------

  Here are the changes found in Patchwork_18077_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@prime:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb2/igt@drm_import_export@prime.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-tglb2/igt@drm_import_export@prime.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk4/igt@gem_exec_whisper@basic-fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-glk2/igt@gem_exec_whisper@basic-fds.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][7] -> [WARN][8] ([i915#1519])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-hsw7/igt@i915_pm_rc6_residency@rc6-fence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-hsw4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#1149])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb3/igt@kms_color@pipe-a-gamma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-tglb1/igt@kms_color@pipe-a-gamma.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +9 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#72])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1635] / [i915#95]) +15 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl2/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-apl4/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_flip@2x-flip-vs-wf_vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#1928])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk4/igt@kms_flip@2x-flip-vs-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-glk2/igt@kms_flip@2x-flip-vs-wf_vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#456])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1928])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#93] / [i915#95]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#1559])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-glk9/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-glk:          [INCOMPLETE][41] ([i915#58] / [k.org#198133]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk2/igt@gem_exec_flush@basic-wb-rw-default.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-glk7/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-apl:          [DMESG-WARN][45] ([i915#1635] / [i915#95]) -> [PASS][46] +16 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl1/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-apl2/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_mmap_offset@pf-nonblock:
    - shard-kbl:          [DMESG-WARN][47] ([i915#93] / [i915#95]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl3/igt@gem_mmap_offset@pf-nonblock.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-kbl3/igt@gem_mmap_offset@pf-nonblock.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [INCOMPLETE][49] ([i915#2123]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb8/igt@i915_selftest@live@execlists.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-tglb2/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@basic-x-tiled:
    - shard-hsw:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-hsw6/igt@kms_addfb_basic@basic-x-tiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-hsw2/igt@kms_addfb_basic@basic-x-tiled.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-iclb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-iclb1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
    - shard-apl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-apl7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-snb:          [INCOMPLETE][59] ([i915#82]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-c-scaler-with-rotation:
    - shard-skl:          [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl7/igt@kms_plane_scaling@pipe-c-scaler-with-rotation.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-skl6/igt@kms_plane_scaling@pipe-c-scaler-with-rotation.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-apl:          [SKIP][71] ([fdo#109271] / [i915#1635]) -> [SKIP][72] ([fdo#109271]) +6 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl1/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-apl2/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          [SKIP][73] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][74] ([fdo#109271] / [fdo#111827])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl1/igt@kms_chamelium@vga-edid-read.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-apl3/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-apl:          [SKIP][75] ([fdo#109271] / [fdo#111827]) -> [SKIP][76] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl8/igt@kms_chamelium@vga-hpd-with-enabled-mode.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-apl6/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-tglb:         [FAIL][77] ([i915#1149] / [i915#315]) -> [DMESG-FAIL][78] ([i915#1149] / [i915#402])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb3/igt@kms_color@pipe-a-ctm-0-75.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-tglb1/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][79] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][80] ([i915#1319] / [i915#2119]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl3/igt@kms_content_protection@atomic-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-kbl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][81] ([fdo#109271]) -> [SKIP][82] ([fdo#109271] / [i915#1635]) +7 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-apl4/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][83], [FAIL][84], [FAIL][85]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][86] ([i915#1635] / [i915#2110])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl2/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl3/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-apl4/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][87], [FAIL][88], [FAIL][89]) ([i915#1233] / [i915#2110] / [i915#529]) -> [FAIL][90] ([i915#2110])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb1/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb8/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb5/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/shard-tglb6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2123]: https://gitlab.freedesktop.org/drm/intel/issues/2123
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8702 -> Patchwork_18077

  CI-20190529: 20190529
  CI_DRM_8702: 7a5c82b68e1d0fbf600d353793c2360b3e425629 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18077: bc786564c7828b1ca0fdb9a2e14e7b08bb9ccc2b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18077/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
