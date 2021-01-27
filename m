Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2700C3064C3
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 21:06:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D0B8991C;
	Wed, 27 Jan 2021 20:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8342B898C8;
 Wed, 27 Jan 2021 20:06:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FCB6A00E6;
 Wed, 27 Jan 2021 20:06:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 27 Jan 2021 20:06:48 -0000
Message-ID: <161177800851.11911.16348563265959258973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gen9bc=3A_Handle_TGP_PCH_during_suspend/resume?=
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
Content-Type: multipart/mixed; boundary="===============0858260522=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0858260522==
Content-Type: multipart/alternative;
 boundary="===============6360327272904269098=="

--===============6360327272904269098==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gen9bc: Handle TGP PCH during suspend/resume
URL   : https://patchwork.freedesktop.org/series/86346/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9688_full -> Patchwork_19518_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19518_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@many-contexts}:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_19518_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][3] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2842]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][8] ([fdo#109283])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb1/igt@gem_exec_params@no-vebox.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl10/igt@gen7_exec_parse@basic-allowed.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [PASS][10] -> [INCOMPLETE][11] ([i915#151])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl7/igt@i915_pm_rpm@system-suspend-modeset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-glk:          NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-glk7/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl10/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#54]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][18] ([i915#54])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x42-random:
    - shard-glk:          NOTRUN -> [SKIP][19] ([fdo#109271]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#72])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#2598])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#2122]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109280]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][30] ([fdo#108145] / [i915#265])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1226])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb2/igt@kms_psr@psr2_basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb6/igt@kms_psr@psr2_basic.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][37] ([i915#2846]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][39] ([i915#2842]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][41] ([i915#2842]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][43] ([i915#2842]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [FAIL][45] ([i915#2842]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_shrink@reclaim:
    - shard-iclb:         [INCOMPLETE][47] -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb4/igt@gem_shrink@reclaim.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb1/igt@gem_shrink@reclaim.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [INCOMPLETE][49] ([i915#2405]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl2/igt@gem_softpin@noreloc-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][51] ([i915#1436] / [i915#716]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][53] ([i915#54]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][55] ([i915#96]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][57] ([i915#2346]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-skl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][61] ([i915#2055]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][63] ([i915#2122]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][69] ([i915#1804] / [i915#2684]) -> [WARN][70] ([i915#2684])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][71] ([i915#2920]) -> [SKIP][72] ([i915#658]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][73] ([i915#658]) -> [SKIP][74] ([i915#2920]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][75], [FAIL][76], [FAIL][77]) ([i915#2295] / [i915#2505]) -> ([FAIL][78], [FAIL][79], [FAIL][80]) ([i915#1814] / [i915#2295])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl6/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl1/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl6/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl4/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl4/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kbl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9688 -> Patchwork_19518

  CI-20190529: 20190529
  CI_DRM_9688: 43295c2b7bc37446a480bb5d42b03675baed171a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5974: a85398dcae50930c0e27548cf8c9575ad0bf69d1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19518: f7ab96d28d4a9215cc9c8ede76fc27dac7f79fef @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/index.html

--===============6360327272904269098==
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
<tr><td><b>Series:</b></td><td>drm/i915/gen9bc: Handle TGP PCH during suspe=
nd/resume</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86346/">https://patchwork.freedesktop.org/series/86346/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19518/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19518/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9688_full -&gt; Patchwork_19518_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19518_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@gem_ctx_persistence@many-contexts}:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
8/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19518_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
518/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518=
/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-iclb1/igt@gem_exec_params@no-vebox.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10928=
3">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-skl10/igt@gen7_exec_parse@basic-allowed=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-kbl7/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
8/shard-kbl6/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-glk7/igt@kms_chamelium@hdmi-cmp-planar-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-s=
kl8/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-skl10/igt@kms_color_chamelium@pipe-inva=
lid-ctm-matrix-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19518/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-1=
28x128-onscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x42-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-1=
28x42-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19518/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atom=
ic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19518/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@b-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19518/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-=
kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19518/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-=
alpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19518/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-iclb1/igt@kms_plane_scaling@scaler-with-clipping-clampin=
g@pipe-a-scaler-with-clipping-clamping.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb2/igt@kms_pl=
ane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamp=
ing.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-iclb6/i=
gt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109441">fdo#109441</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
8/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19518/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19518/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
18/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
518/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_shrink@reclaim:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-iclb4/igt@gem_shrink@reclaim.html">INCOMPLETE</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-i=
clb1/igt@gem_shrink@reclaim.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-kbl2/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1951=
8/shard-kbl7/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-glk7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#14=
36</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i9=
15#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19518/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19518/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/96">i915#96</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19518/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-le=
gacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19518/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varyin=
g-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytile=
d.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19518/shard-skl2/igt@kms_draw_crc@draw-method-xrgb888=
8-mmap-wc-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2055">=
i915#2055</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19518/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19518/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19518/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9518/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19518/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19518/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dm=
g-area-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9688/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19518/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-=
area-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9688/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/shard-kbl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9688/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>) -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard-kb=
l4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19518/shard-kbl4/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/shard=
-kbl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
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
<li>Linux: CI_DRM_9688 -&gt; Patchwork_19518</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9688: 43295c2b7bc37446a480bb5d42b03675baed171a @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5974: a85398dcae50930c0e27548cf8c9575ad0bf69d1 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19518: f7ab96d28d4a9215cc9c8ede76fc27dac7f79fef @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6360327272904269098==--

--===============0858260522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0858260522==--
