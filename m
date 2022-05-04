Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E197851A4CC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2584210E0F5;
	Wed,  4 May 2022 15:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8461110E549;
 Wed,  4 May 2022 15:59:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 821F5A0003;
 Wed,  4 May 2022 15:59:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1322463102724247199=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Date: Wed, 04 May 2022 15:59:26 -0000
Message-ID: <165167996648.680.16570168551537992376@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220503235729.617954-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220503235729.617954-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgREcy?=
 =?utf-8?q?_DMC_Support?=
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

--===============1322463102724247199==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DG2 DMC Support
URL   : https://patchwork.freedesktop.org/series/103513/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11599_full -> Patchwork_103513v1_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_103513v1_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103513v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103513v1_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         [SKIP][1] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb4/igt@kms_psr2_su@page_flip-nv12.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_flink_race@flink_close:
    - {shard-tglu}:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-tglu-5/igt@gem_flink_race@flink_close.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][4] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-dg1-13/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_selftest@live@gem_contexts:
    - {shard-rkl}:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-5/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-5/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_103513v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#5784])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-tglb6/igt@gem_eio@kms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10] ([i915#3070])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb4/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-snb:          [PASS][17] -> [SKIP][18] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-snb4/igt@gem_exec_flush@basic-wb-ro-default.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-snb6/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#112283])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#768])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109289]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#5566] / [i915#716])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#2856])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][30] -> [FAIL][31] ([i915#454])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2521])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#5286]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110725] / [fdo#111614])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#110723])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [i915#3886]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-d-ctm-0-75:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [i915#1149])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_color@pipe-d-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@srm:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109300] / [fdo#111066])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#5691])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278]) +15 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274] / [fdo#109278])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][49] ([i915#2346])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#2346])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#5287])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][53] -> [INCOMPLETE][54] ([i915#4939])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109274]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +59 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109280]) +10 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          NOTRUN -> [DMESG-WARN][59] ([i915#180] / [i915#1982])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#5235]) +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb6/igt@kms_psr@psr2_dpms.html

  * igt@kms_writeback@writeback-check-output:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#2437])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_writeback@writeback-check-output.html

  * igt@perf@gen12-mi-rpc:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +16 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@perf@gen12-mi-rpc.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109291]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@prime_nv_test@nv_i915_sharing.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][69] ([i915#2582]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-1/igt@fbdev@nullptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_create@create-clear:
    - {shard-rkl}:        [INCOMPLETE][71] ([i915#5080]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-5/igt@gem_create@create-clear.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-5/igt@gem_create@create-clear.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][73] ([i915#4525]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-deadline:
    - {shard-rkl}:        [FAIL][75] ([i915#2846]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][77] ([i915#2842]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [FAIL][79] ([i915#2842]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][81] ([i915#2842]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - {shard-tglu}:       [FAIL][83] ([i915#2842]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][85] ([i915#2842]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - {shard-rkl}:        [INCOMPLETE][89] ([i915#5080] / [i915#5498]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority-all.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-1/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_flink_race@flink_close:
    - shard-tglb:         [FAIL][91] ([i915#5687]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-tglb2/igt@gem_flink_race@flink_close.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-tglb5/igt@gem_flink_race@flink_close.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][93] ([i915#4939] / [i915#5230]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-skl10/igt@gem_softpin@noreloc-s3.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-rkl}:        [SKIP][95] ([i915#658]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
    - shard-iclb:         [FAIL][97] ([i915#454]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][99] ([i915#5591]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-tglb2/igt@i915_selftest@live@hangcheck.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-tglb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - {shard-rkl}:        [SKIP][101] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-25.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - {shard-rkl}:        [SKIP][103] ([i915#1149] / [i915#4070] / [i915#4098]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-4/igt@kms_color@pipe-b-ctm-0-25.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - {shard-rkl}:        [SKIP][105] ([fdo#112022] / [i915#4070]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-skl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl10/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - {shard-rkl}:        [SKIP][109] ([fdo#111825] / [i915#4070]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - {shard-rkl}:        [SKIP][111] ([i915#4070]) -> [PASS][112] +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-6/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][113] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][114] +4 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_fbcon_fbt@fbc:
    - {shard-rkl}:        [SKIP][115] ([i915#1849] / [i915#4098]) -> [PASS][116] +13 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][117] ([i915#4767]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-apl:          [FAIL][119] ([i915#79]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [DMESG-WARN][121] ([i915#180]) -> [PASS][122] +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl3/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][123] ([i915#2122]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-glk9/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - {shard-rkl}:        [SKIP][125] ([i915#3701]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [FAIL][127] ([i915#1188]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - {shard-rkl}:        [SKIP][129] ([i915#4278]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-2/igt@kms_invalid_mode@bad-hsync-end.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - {shard-rkl}:        [SKIP][131] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][132] +5 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
    - {shard-rkl}:        [SKIP][133] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [INCOMPLETE][135] ([i915#5293]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb6/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][137] ([fdo#109441]) -> [PASS][138] +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@sprite_blt:
    - {shard-rkl}:        [SKIP][139] ([i915#1072]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-2/igt@kms_psr@sprite_blt.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_psr@sprite_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - {shard-rkl}:        [SKIP][141] ([i915#5461]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset:
    - {shard-rkl}:        [SKIP][143] ([i915#1845] / [i915#4098]) -> [PASS][144] +18 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-2/igt@kms_vblank@pipe-a-ts-continuation-modeset.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][145] ([i915#5639]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-glk9/igt@perf@polling-parameterized.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-glk3/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][147] ([i915#1722]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-skl10/igt@perf@polling-small-buf.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-skl7/igt@perf@polling-small-buf.html

  * igt@prime_vgem@basic-fence-flip:
    - {shard-rkl}:        [SKIP][149] ([i915#3708] / [i915#4098]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [DMESG-WARN][151] ([i915#5614]) -> [SKIP][152] ([i915#4525]) +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][153] ([i915#4525]) -> [DMESG-WARN][154] ([i915#5614])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][155] ([i915#2920]) -> [SKIP][156] ([fdo#111068] / [i915#658])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl8/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl3/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl4/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl3/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl7/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl1/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl1/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl1/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl8/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl2/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl4/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl7/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5230]: https://gitlab.freedesktop.org/drm/intel/issues/5230
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5293]: https://gitlab.freedesktop.org/drm/intel/issues/5293
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5498]: https://gitlab.freedesktop.org/drm/intel/issues/5498
  [i915#5501]: https://gitlab.freedesktop.org/drm/intel/issues/5501
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5687]: https://gitlab.freedesktop.org/drm/intel/issues/5687
  [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
  [i915#5775]: https://gitlab.freedesktop.org/drm/intel/issues/5775
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5849]: https://gitlab.freedesktop.org/drm/intel/issues/5849
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11599 -> Patchwork_103513v1

  CI-20190529: 20190529
  CI_DRM_11599: 3117a90bbbdd0cc8da3713e2a43964c09f7bf8de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103513v1: 3117a90bbbdd0cc8da3713e2a43964c09f7bf8de @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/index.html

--===============1322463102724247199==
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
<tr><td><b>Series:</b></td><td>DG2 DMC Support</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/103513/">https://patchwork.freedesktop.org/series/103513/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_103513v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_103513v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11599_full -&gt; Patchwork_103513v=
1_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_103513v1_full need to be ver=
ified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_103513v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
103513v1_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr2_su@page_flip-nv12:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb4/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642<=
/a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_103513v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html">FAIL</a=
></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_flink_race@flink_close:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-tglu-5/igt@gem_flink_race@flink_clos=
e.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-dg1-13/igt@i915_pm_rpm@system-suspen=
d-devices.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-5/igt@i915_selftest@live@gem_contexts.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10351=
3v1/shard-rkl-5/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a></l=
i>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103513v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-tglb1/igt@=
gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb4/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard=
-iclb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103=
513v1/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1=
/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v=
1/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-snb4/igt@gem_exec_flush@basic-wb-ro-default.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103=
513v1/shard-snb6/igt@gem_exec_flush@basic-wb-ro-default.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v=
1/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gem_lmem_swapping@smem-oom=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gem_render_copy@x-tiled-to=
-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gen7_exec_parse@bitmasks.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513=
v1/shard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@gen9_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-ic=
lb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103513v1/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_big_fb@4-tiled-64bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_big_fb@linear-64bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_color@pipe-d-ctm-0-75.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_color_chamelium@pipe-c=
-ctm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_color_chamelium@pipe-c-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_color_chamelium@pipe-d-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_cursor_crc@pipe-b-curs=
or-512x512-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_cursor_crc@pipe-c-curso=
r-512x170-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5691">i915#5691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_cursor_crc@pipe-d-curs=
or-dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109278">fdo#109278</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_cursor_legacy@2x-long-=
flip-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-cu=
rsor-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11599/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_103513v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_draw_crc@draw-method-r=
gb565-mmap-wc-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/sha=
rd-skl4/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-apl2/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +59 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_frontbuffer_tracking@f=
bc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +10 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_pipe_crc_basic@suspend-=
read-crc-pipe-a.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103513v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-=
edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/52=
35">i915#5235</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-iclb=
6/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-skl4/igt@perf@gen12-mi-rpc.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103513v1/shard-iclb7/igt@prime_nv_test@nv_i915_shar=
ing.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-1/igt@fbdev@nullptr.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rk=
l-6/igt@fbdev@nullptr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-5/igt@gem_create@create-clear.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5080">i915#5080=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03513v1/shard-rkl-5/igt@gem_create@create-clear.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103513v1/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
3513v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103513v1/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
3513v1/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11599/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103513v1/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11599/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103513v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
3513v1/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_103513v1/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-de=
fault-uc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority-all.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5080">i915#5080</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5498">i915#5498</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103513v1/shard-rkl-1/igt@gem_exec_whisper@basic-fds-pr=
iority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_close:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-tglb2/igt@gem_flink_race@flink_close.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5687">i915#5687</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1035=
13v1/shard-tglb5/igt@gem_flink_race@flink_close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-skl10/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5230">i915=
#5230</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103513v1/shard-skl4/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11599/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-=
rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11599/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-=
iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-tglb2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103513v1/shard-tglb5/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-25.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#18=
49</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i=
915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_103513v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-4/igt@kms_color@pipe-b-ctm-0-25.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#40=
70</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_103513v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D112=
022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-1=
28x42-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transi=
tions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103513v1/shard-skl10/igt@kms_cursor_legacy@cursor=
-vs-flip-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-trans=
itions-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_curs=
or_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-torture-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-6/igt@kms_cursor_legacy@pipe-c-torture-move.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i=
915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_103513v1/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt=
-xtiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_draw_crc@d=
raw-method-xrgb2101010-mmap-gtt-xtiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v=
1/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513=
v1/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_103513v1/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103513v1/shard-apl3/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-h=
dmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103513v1/shard-glk9/igt@kms_flip@plain-flip-ts-check-i=
nterruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_flip_=
scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">PASS</=
a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-=
pipe-a.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1188">i915#1188</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103513v1/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-sw=
itch-dpms-edp-1-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-2/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
103513v1/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-m=
ax.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_plane_alpha_blend=
@pipe-b-constant-alpha-max.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-none:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_plane_multiple@atomi=
c-pipe-a-tiling-none.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp=
-1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5293">i915#5293=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
03513v1/shard-iclb6/igt@kms_plane_scaling@downscale-with-pixel-format-facto=
r-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb7/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
3513v1/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-2/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/sha=
rd-rkl-6/igt@kms_psr@sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-2/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-2/igt@kms_vblank@pipe-a-ts-continuation-modeset.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_103513v1/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation=
-modeset.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-glk9/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10351=
3v1/shard-glk3/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-skl10/igt@perf@polling-small-buf.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1=
/shard-skl7/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#=
4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103513v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5614">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_103513v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in=
-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4525">i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_103513v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11599/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103513v1/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11599/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11599/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11599/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11599/shard-apl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11599/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v=
1/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_103513v1/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl1/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_103513v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl2/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_103513v1/shard-apl4/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103513v1/sh=
ard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_103513v1/shard-apl6/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11599 -&gt; Patchwork_103513v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11599: 3117a90bbbdd0cc8da3713e2a43964c09f7bf8de @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103513v1: 3117a90bbbdd0cc8da3713e2a43964c09f7bf8de @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1322463102724247199==--
