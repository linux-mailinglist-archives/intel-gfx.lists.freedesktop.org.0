Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20486218E03
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 19:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8253F6E8F5;
	Wed,  8 Jul 2020 17:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1F1B6E8F5;
 Wed,  8 Jul 2020 17:14:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9ED1A011C;
 Wed,  8 Jul 2020 17:14:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 08 Jul 2020 17:14:12 -0000
Message-ID: <159422845295.3839.7122228858054739991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Move_all_FBC_w/as_to_?=
 =?utf-8?b?LmluaXRfY2xvY2tfZ2F0aW5nKCk=?=
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

Series: series starting with [1/4] drm/i915: Move all FBC w/as to .init_clock_gating()
URL   : https://patchwork.freedesktop.org/series/79246/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8715_full -> Patchwork_18106_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18106_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb6/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-iclb2/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#198] / [i915#2110])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl9/igt@i915_selftest@mock@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-skl5/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-kbl:          [PASS][7] -> [DMESG-FAIL][8] ([i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-kbl4/igt@kms_big_fb@linear-16bpp-rotate-0.html
    - shard-apl:          [PASS][9] -> [DMESG-FAIL][10] ([i915#1635] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1635] / [i915#95]) +13 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-apl1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-apl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2122])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl2/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-skl5/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-wakeup:
    - shard-skl:          [DMESG-WARN][27] ([i915#1982]) -> [PASS][28] +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@drm_read@short-buffer-wakeup.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-skl9/igt@drm_read@short-buffer-wakeup.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-iclb:         [FAIL][29] ([i915#926]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb1/igt@gem_exec_balancer@bonded-early.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-iclb2/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-apl:          [DMESG-WARN][31] ([i915#1635] / [i915#95]) -> [PASS][32] +20 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@gem_exec_flush@basic-wb-pro-default.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-apl8/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [DMESG-WARN][33] ([i915#118] / [i915#95]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-glk9/igt@gem_exec_whisper@basic-normal.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-glk1/igt@gem_exec_whisper@basic-normal.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][35] ([i915#636] / [i915#69]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl3/igt@i915_suspend@forcewake.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-skl3/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][37] ([i915#198]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-primary-size-128:
    - shard-hsw:          [INCOMPLETE][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-hsw7/igt@kms_plane_cursor@pipe-b-primary-size-128.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-hsw7/igt@kms_plane_cursor@pipe-b-primary-size-128.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][47] ([fdo#109642] / [fdo#111068]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_pwrite_crc:
    - shard-skl:          [FAIL][51] ([i915#150]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-skl5/igt@kms_pwrite_crc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-skl6/igt@kms_pwrite_crc.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-tglb:         [DMESG-WARN][53] ([i915#402]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-tglb2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-tglb1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#93] / [i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][57] ([i915#2036]) -> [WARN][58] ([i915#2021])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-snb5/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-apl:          [SKIP][59] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][60] ([fdo#109271] / [fdo#111827])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@kms_chamelium@hdmi-crc-fast.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-apl2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#93] / [i915#95]) -> [DMESG-WARN][62] ([i915#180] / [i915#93] / [i915#95])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-apl:          [SKIP][63] ([fdo#109271] / [i915#1635]) -> [SKIP][64] ([fdo#109271]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-128:
    - shard-apl:          [SKIP][65] ([fdo#109271]) -> [SKIP][66] ([fdo#109271] / [i915#1635]) +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@kms_plane_cursor@pipe-d-viewport-size-128.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-apl1/igt@kms_plane_cursor@pipe-d-viewport-size-128.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][67], [FAIL][68], [FAIL][69]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][70] ([i915#1635] / [i915#2110])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl1/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl3/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8715/shard-apl2/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#150]: https://gitlab.freedesktop.org/drm/intel/issues/150
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8715 -> Patchwork_18106

  CI-20190529: 20190529
  CI_DRM_8715: 76c2d43437601608d75f61a9eb6cf3a7aae5e02b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18106: d2e5937fded2b41cfff1ecc2ea060a37732ed76f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18106/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
