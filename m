Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AE7622BFC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 13:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEAB10E0BC;
	Wed,  9 Nov 2022 12:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A499D10E0BC;
 Wed,  9 Nov 2022 12:57:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AA0AA0003;
 Wed,  9 Nov 2022 12:57:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2701936319195703193=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Wed, 09 Nov 2022 12:57:53 -0000
Message-ID: <166799867359.3410.2581404649604720969@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221109040324.17675-1-nischal.varide@intel.com>
In-Reply-To: <20221109040324.17675-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_mode_clock_check_related_to_max_dotclk_frequen?=
 =?utf-8?q?cy?=
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

--===============2701936319195703193==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: mode clock check related to max dotclk frequency
URL   : https://patchwork.freedesktop.org/series/110686/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12358_full -> Patchwork_110686v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_110686v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#4525])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][3] ([i915#2846])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][4] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2842]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl6/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-apl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-apl2/igt@gem_workarounds@suspend-resume.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl2/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#3989] / [i915#454])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#3989] / [i915#454])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl7/igt@i915_pm_dc@dc6-psr.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglb:         NOTRUN -> [WARN][18] ([i915#2681]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#4817] / [i915#7233])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl1/igt@i915_suspend@sysfs-reader.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl10/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +55 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#111614])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#110725] / [fdo#111614])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#7076])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
    - shard-glk:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][29] ([i915#7121] / [i915#7173])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl6/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html

  * igt@kms_content_protection@legacy@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][30] ([i915#1319] / [i915#7121] / [i915#7173])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@kms_content_protection@legacy@pipe-a-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#2346])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#2346])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([i915#2672] / [i915#3555])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#2672]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#2587] / [i915#2672]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#3555])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#6497])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109280])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109280] / [fdo#111825])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#7255])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271]) +24 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109642] / [fdo#111068] / [i915#658])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@syncobj_timeline@wait-for-submit-snapshot:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#7326])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl10/igt@syncobj_timeline@wait-for-submit-snapshot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl6/igt@syncobj_timeline@wait-for-submit-snapshot.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][51] ([i915#2582]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@fbdev@unaligned-read.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][53] ([i915#5784]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-dg1-18/igt@gem_eio@reset-stress.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][55] ([i915#6259]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-1/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@full:
    - {shard-dg1}:        [FAIL][57] ([i915#6032]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-dg1-16/igt@gem_exec_balancer@full.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-dg1-16/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][59] ([i915#4525]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][61] ([i915#2846]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk7/igt@gem_exec_fair@basic-deadline.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         [FAIL][63] ([i915#2842]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-tglb3/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-rkl}:        [FAIL][65] ([i915#2842]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][67] ([i915#2842]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - {shard-rkl}:        [SKIP][69] ([i915#3281]) -> [PASS][70] +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_pwrite_snooped:
    - {shard-rkl}:        [SKIP][71] ([i915#3282]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@gem_pwrite_snooped.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@gem_pwrite_snooped.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][73] ([i915#5566] / [i915#716]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-access:
    - {shard-rkl}:        [SKIP][75] ([i915#2527]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@gen9_exec_parse@unaligned-access.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_pm_rps@min-max-config-idle:
    - {shard-rkl}:        [FAIL][77] ([i915#7142]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-1/igt@i915_pm_rps@min-max-config-idle.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [FAIL][81] ([i915#2521]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][83] ([fdo#110189] / [i915#3955]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][85] ([i915#2122]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - {shard-rkl}:        [SKIP][87] ([i915#1849] / [i915#4098]) -> [PASS][88] +14 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][89] ([i915#5235]) -> [PASS][90] +8 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@dpms:
    - {shard-rkl}:        [SKIP][91] ([i915#1072]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@kms_psr@dpms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_psr@dpms.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][95] ([i915#5519]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-skl:          [SKIP][97] ([fdo#109271]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - {shard-rkl}:        [SKIP][99] ([i915#5461]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        [SKIP][101] ([i915#1845] / [i915#4098]) -> [PASS][102] +19 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@kms_vblank@pipe-b-query-idle.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][103] ([i915#5639]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl9/igt@perf@polling.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl4/igt@perf@polling.html

  * igt@perf_pmu@busy-double-start@vecs0:
    - {shard-dg1}:        [FAIL][105] ([i915#4349]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-dg1-18/igt@perf_pmu@busy-double-start@vecs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-dg1-19/igt@perf_pmu@busy-double-start@vecs0.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl7/igt@perf_pmu@module-unload.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl1/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@coherency-gtt:
    - {shard-rkl}:        [SKIP][109] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-1/igt@prime_vgem@coherency-gtt.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  * igt@testdisplay:
    - {shard-rkl}:        [SKIP][111] ([i915#4098]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@testdisplay.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@testdisplay.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][113] ([i915#4525]) -> [FAIL][114] ([i915#6117])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          [INCOMPLETE][115] ([i915#7248]) -> [WARN][116] ([i915#2658])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-apl3/igt@gem_pread@exhaustion.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl2/igt@gem_pread@exhaustion.html
    - shard-tglb:         [INCOMPLETE][117] ([i915#7248]) -> [WARN][118] ([i915#2658])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-tglb8/igt@gem_pread@exhaustion.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb1/igt@gem_pread@exhaustion.html
    - shard-glk:          [INCOMPLETE][119] ([i915#7248]) -> [WARN][120] ([i915#2658]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk1/igt@gem_pread@exhaustion.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk7/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglb:         [WARN][121] ([i915#2658]) -> [INCOMPLETE][122] ([i915#7248])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-tglb8/igt@gem_pwrite@basic-exhaustion.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][123] ([i915#658]) -> [SKIP][124] ([i915#2920]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][125] ([fdo#111068] / [i915#658]) -> [SKIP][126] ([i915#2920]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][127] ([i915#2920]) -> [SKIP][128] ([i915#658]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
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
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7076]: https://gitlab.freedesktop.org/drm/intel/issues/7076
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7121]: https://gitlab.freedesktop.org/drm/intel/issues/7121
  [i915#7142]: https://gitlab.freedesktop.org/drm/intel/issues/7142
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7233]: https://gitlab.freedesktop.org/drm/intel/issues/7233
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7255]: https://gitlab.freedesktop.org/drm/intel/issues/7255
  [i915#7326]: https://gitlab.freedesktop.org/drm/intel/issues/7326
  [i915#7468]: https://gitlab.freedesktop.org/drm/intel/issues/7468


Build changes
-------------

  * Linux: CI_DRM_12358 -> Patchwork_110686v1

  CI-20190529: 20190529
  CI_DRM_12358: 0ab311f0d9569b14e8f8edf3d4dd77da7dea0075 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7048: 5edd5c539f1fdf1c02157bf43fa1fd22d4ad2c75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110686v1: 0ab311f0d9569b14e8f8edf3d4dd77da7dea0075 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/index.html

--===============2701936319195703193==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: mode clock check related to max dotclk frequency</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110686/">https://patchwork.freedesktop.org/series/110686/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12358_full -&gt; Patchwork_110686v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110686v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-apl2/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl2/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl1/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl1/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl10/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7233">i915#7233</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110725">fdo#110725</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7076">i915#7076</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl6/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7121">i915#7121</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@kms_content_protection@legacy@pipe-a-dp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7121">i915#7121</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6497">i915#6497</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7255">i915#7255</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb7/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb6/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-snapshot:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl10/igt@syncobj_timeline@wait-for-submit-snapshot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl6/igt@syncobj_timeline@wait-for-submit-snapshot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7326">i915#7326</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@fbdev@unaligned-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-dg1-13/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-1/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-dg1-16/igt@gem_exec_balancer@full.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6032">i915#6032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-dg1-16/igt@gem_exec_balancer@full.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-tglb3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@gem_pwrite_snooped.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@gem_pwrite_snooped.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-1/igt@i915_pm_rps@min-max-config-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7142">i915#7142</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@i915_pm_rps@min-max-config-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-apl1/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl8/igt@i915_suspend@sysfs-reader.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@kms_psr@dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_psr@dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5519">i915#5519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl9/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461">i915#5461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl9/igt@perf@polling.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl4/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-dg1-18/igt@perf_pmu@busy-double-start@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-dg1-19/igt@perf_pmu@busy-double-start@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-skl7/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-skl1/igt@perf_pmu@module-unload.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-1/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-rkl-2/igt@testdisplay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-rkl-6/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6117">i915#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-apl3/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-apl2/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-tglb8/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb1/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-glk1/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-glk7/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-tglb8/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110686v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12358 -&gt; Patchwork_110686v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12358: 0ab311f0d9569b14e8f8edf3d4dd77da7dea0075 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7048: 5edd5c539f1fdf1c02157bf43fa1fd22d4ad2c75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110686v1: 0ab311f0d9569b14e8f8edf3d4dd77da7dea0075 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2701936319195703193==--
