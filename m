Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9140363BBC7
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 09:36:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E032E10E316;
	Tue, 29 Nov 2022 08:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1901F10E316;
 Tue, 29 Nov 2022 08:36:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 162C3A882E;
 Tue, 29 Nov 2022 08:36:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9024978416640423884=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Tue, 29 Nov 2022 08:36:04 -0000
Message-ID: <166971096408.23273.17106564364954729420@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Add_missing_cleanup_steps_for_PXP_global-teardown?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============9024978416640423884==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Add missing cleanup steps for PXP global-teardown
URL   : https://patchwork.freedesktop.org/series/111409/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12440_full -> Patchwork_111409v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111409v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111409v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111409v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_111409v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb2/igt@gem_exec_balancer@parallel.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb8/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][5] ([fdo#112283])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gem_exec_params@secure-non-root.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@gem_huc_copy@huc-copy.html
    - shard-tglb:         [PASS][7] -> [SKIP][8] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][12] ([i915#4270])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#768])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#3297]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][15] ([i915#4991])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl10/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([i915#2856])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][17] ([i915#3989] / [i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl10/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [PASS][18] -> [WARN][19] ([i915#1804])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#3524])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl3/igt@i915_pm_sseu@full-enable.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock@timelines:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][22] ([i915#7605])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@i915_selftest@mock@timelines.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#7230])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl9/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#5286])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109278] / [i915#3886])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278]) +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +60 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_content_protection@atomic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][35] ([i915#7173])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl6/igt@kms_content_protection@atomic@pipe-a-dp-1.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3359])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109274]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#4103])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2122]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2587] / [i915#2672]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#2672]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#3555]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109280]) +8 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#6497]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +41 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][49] ([i915#4573]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#658]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#658]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109642] / [fdo#111068] / [i915#658]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#5030]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b.html

  * igt@kms_vblank@pipe-c-ts-continuation-modeset-hang:
    - shard-skl:          [PASS][56] -> [DMESG-WARN][57] ([i915#1982]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-modeset-hang.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-modeset-hang.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109289])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2994])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-10:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2994])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@drm_read@empty-block:
    - {shard-rkl}:        [SKIP][61] ([i915#1845] / [i915#4098]) -> [PASS][62] +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@drm_read@empty-block.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-6/igt@drm_read@empty-block.html

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][63] ([i915#2582]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@fbdev@unaligned-read.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][67] ([fdo#103375]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][69] ([i915#5784]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-dg1-19/igt@gem_eio@reset-stress.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][71] ([i915#4525]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][73] ([i915#2842]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][75] ([i915#2842]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - {shard-rkl}:        [SKIP][77] ([i915#3281]) -> [PASS][78] +11 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - {shard-rkl}:        [FAIL][79] ([i915#7626]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-5/igt@gem_exec_whisper@basic-contexts-priority.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-1/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - {shard-rkl}:        [SKIP][81] ([i915#3282]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][83] ([i915#5566] / [i915#716]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl2/igt@gen9_exec_parse@allowed-single.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-far:
    - {shard-rkl}:        [SKIP][85] ([i915#2527]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][87] ([i915#4281]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][89] ([i915#5334]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][91] ([i915#5591]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb8/igt@i915_selftest@live@hangcheck.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [FAIL][93] ([i915#2521]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][95] ([i915#79]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-tglb:         [DMESG-WARN][97] ([i915#2411] / [i915#2867]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb8/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb3/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - {shard-rkl}:        [SKIP][99] ([i915#1849] / [i915#4098]) -> [PASS][100] +6 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][103] ([i915#5519]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-tglb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][105] ([i915#1542]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl9/igt@perf@polling.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl3/igt@perf@polling.html

  * igt@prime_vgem@basic-write:
    - {shard-rkl}:        [SKIP][107] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@prime_vgem@basic-write.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-5/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - {shard-rkl}:        [SKIP][109] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@prime_vgem@coherency-gtt.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
#### Warnings ####

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][111] ([i915#658]) -> [SKIP][112] ([i915#2920]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][113] ([i915#2920]) -> [SKIP][114] ([fdo#111068] / [i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][115] ([fdo#111068] / [i915#658]) -> [SKIP][116] ([i915#2920])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][121], [FAIL][122]) ([i915#3002] / [i915#4312])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl6/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl2/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl3/igt@runner@aborted.html
    - shard-skl:          [FAIL][123] ([i915#6949]) -> ([FAIL][124], [FAIL][125], [FAIL][126]) ([i915#3002] / [i915#4312] / [i915#6949])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl3/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl10/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3524]: https://gitlab.freedesktop.org/drm/intel/issues/3524
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7230]: https://gitlab.freedesktop.org/drm/intel/issues/7230
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7605]: https://gitlab.freedesktop.org/drm/intel/issues/7605
  [i915#7626]: https://gitlab.freedesktop.org/drm/intel/issues/7626
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12440 -> Patchwork_111409v1

  CI-20190529: 20190529
  CI_DRM_12440: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7073: d021d66e389f4a759dc749b5f74f278ecd2e6cbf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111409v1: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/index.html

--===============9024978416640423884==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Add missing cleanup steps for =
PXP global-teardown</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111409/">https://patchwork.freedesktop.org/series/111409/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111409v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111409v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12440_full -&gt; Patchwork_111409v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111409v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_111409v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111409v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_fbcon_fbt@psr-suspend:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/sha=
rd-skl9/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> +1 similar issue=
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111409v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/s=
hard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@gem_huc_copy@huc-copy.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2190">i915#2190</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12440/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-t=
glb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-apl6/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@gem_lmem_swapping@verify-r=
andom-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gem_pxp@create-protected-b=
uffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gem_render_copy@x-tiled-to=
-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl10/igt@gem_userptr_blits@input-ch=
ecking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl10/igt@i915_pm_dc@dc6-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">=
i915#3989</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1409v1/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl3/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shar=
d-skl4/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3524">i915#3524</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@timelines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@i915_selftest@mock@timelin=
es.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7605">i915#7605</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl9/igt@kms_async_flips@async-flip-with-page-flip-even=
ts@pipe-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl3/igt@kms_async_flips@async-flip-=
with-page-flip-events@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/7230">i915#7230</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +7 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +60 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@kms_chamelium@dp-audio-edi=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_chamelium@dp-hpd-for-e=
ach-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_chamelium@hdmi-hpd-for-=
each-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_chamelium@hdmi-mode-tim=
ings.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-apl6/igt@kms_content_protection@atom=
ic@pipe-a-dp-1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_cursor_legacy@2x-nonbl=
ocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111409v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111409v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-inte=
rruptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +8 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bcpsr-modesetfrombusy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6497">i915#6497</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_frontbuffer_tracking@fb=
cpsr-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-apl7/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409=
v1/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@kms_scaling_modes@scaling-=
mode-none@edp-1-pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5030">i915#5030</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-modeset-hang:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-modeset-hang=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111409v1/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-modeset-=
hang.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@perf@gen12-oa-tlb-invalida=
te.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb5/igt@sysfs_clients@recycle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@sysfs_clients@sema-10.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-2/igt@drm_read@empty-block.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
409v1/shard-rkl-6/igt@drm_read@empty-block.html">PASS</a> +7 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-2/igt@fbdev@unaligned-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/=
shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111409v1/shard-apl7/igt@gem_ctx_isolation@preservation-s3@bcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-4/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
409v1/shard-rkl-5/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-dg1-19/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/=
shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111409v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11409v1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111409v1/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111409v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-5/igt@gem_exec_whisper@basic-contexts-priority.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7626=
">i915#7626</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111409v1/shard-rkl-1/igt@gem_exec_whisper@basic-contexts-priority=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i=
915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111409v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-apl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111409v1/shard-apl6/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1409v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/=
shard-iclb1/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111409v1/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-tglb8/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111409v1/shard-tglb1/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111409v1/shard-skl9/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-b-edp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111409v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-tglb8/igt@kms_flip@flip-vs-suspend@c-edp1.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2411">i=
915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
867">i915#2867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111409v1/shard-tglb3/igt@kms_flip@flip-vs-suspend@c-edp1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-rkl-6/igt@kms_frontbuf=
fer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> +6 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111409v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111409v1/shard-tglb8/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-skl9/igt@perf@polling.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-skl3=
/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#329=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i9=
15#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111409v1/shard-rkl-5/igt@prime_vgem@basic-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-rkl-2/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a=
> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#1=
11656</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708=
">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111409v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
58">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111409v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111409v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111409v1/shard-iclb2/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12440/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12440/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-apl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111409v1/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12440/shard-skl1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</a>) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1/shard-sk=
l3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111409v1/shard-skl6/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111409v1=
/shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12440 -&gt; Patchwork_111409v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12440: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7073: d021d66e389f4a759dc749b5f74f278ecd2e6cbf @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111409v1: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============9024978416640423884==--
