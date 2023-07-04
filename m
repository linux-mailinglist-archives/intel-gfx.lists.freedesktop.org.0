Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3209B747A43
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 01:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FF610E092;
	Tue,  4 Jul 2023 23:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0878410E092;
 Tue,  4 Jul 2023 23:00:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB871AADE4;
 Tue,  4 Jul 2023 23:00:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8793261832165122270=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 04 Jul 2023 23:00:27 -0000
Message-ID: <168851162792.28592.3135220977023787422@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230627105849.274263-1-jani.nikula@intel.com>
In-Reply-To: <20230627105849.274263-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dram=3A_replace_=5F=5Fraw=5Funcore=5Fread32=28=29_with_in?=
 =?utf-8?b?dGVsX3VuY29yZV9yZWFkX2Z3KCkgKHJldjIp?=
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

--===============8793261832165122270==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dram: replace __raw_uncore_read32() with intel_uncore_read_fw() (rev2)
URL   : https://patchwork.freedesktop.org/series/119913/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13345_full -> Patchwork_119913v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119913v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119913v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119913v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_sequence@queue-busy@hdmi-a-2-pipe-b:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-glk7/igt@kms_sequence@queue-busy@hdmi-a-2-pipe-b.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-glk9/igt@kms_sequence@queue-busy@hdmi-a-2-pipe-b.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13345_full and Patchwork_119913v2_full:

### New IGT tests (1) ###

  * igt@kms_plane_scaling@planes-upscale-20x20@pipe-c-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_119913v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][3] -> [FAIL][4] ([i915#7742])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-dg2:          [PASS][5] -> [ABORT][6] ([i915#7461] / [i915#8211] / [i915#8234])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-12/igt@gem_barrier_race@remote-request@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-1/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#3555] / [i915#5325])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_ccs@suspend-resume.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          [PASS][8] -> [ABORT][9] ([i915#7975] / [i915#8213])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-11/igt@gem_eio@hibernate.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-1/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][10] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-apl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][11] ([i915#2842]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([fdo#112283])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][15] ([i915#7975] / [i915#8213] / [i915#8682])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#4613] / [i915#7582])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][17] -> [TIMEOUT][18] ([i915#5493])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [PASS][19] -> [ABORT][20] ([i915#5161])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3282])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@gem_pread@snoop.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#4270])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][23] -> [ABORT][24] ([i915#5566])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-glk8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_backlight@bad-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#7561])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][26] -> [FAIL][27] ([i915#3989] / [i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-tglu-9/igt@i915_pm_dc@dc6-dpms.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][28] -> [SKIP][29] ([i915#1397]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#404])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([fdo#111615] / [i915#5286])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#5190])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#2705])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_mtl_rc_ccs_cc:
    - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#5354] / [i915#6095]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3689] / [i915#3886] / [i915#5354])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3689] / [i915#5354])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#3689] / [i915#5354] / [i915#6095]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#3555] / [i915#6944] / [i915#7116] / [i915#7118])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#7118])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-1/igt@kms_content_protection@lic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +11 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-apl1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([fdo#109274] / [i915#5354])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3804])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][43] -> [FAIL][44] ([fdo#103375] / [i915#6121]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-1/igt@kms_fbcon_fbt@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-dg2:          [PASS][45] -> [FAIL][46] ([i915#6880])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#8708]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([fdo#110189]) +6 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#5354])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][50] ([fdo#109280]) +9 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3555]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#3555] / [i915#6953])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][53] ([i915#8292])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#5176]) +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#5176]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4.html

  * igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#5176]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#5235]) +11 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-dp-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][58] ([fdo#109271]) +19 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-snb4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b-vga-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#5235]) +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([fdo#111068] / [i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#3555]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][62] -> [ABORT][63] ([i915#180])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@stress-open-close@0-rcs0:
    - shard-glk:          [PASS][64] -> [ABORT][65] ([i915#5213] / [i915#7941])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-glk9/igt@perf@stress-open-close@0-rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-glk2/igt@perf@stress-open-close@0-rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#8516])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@perf_pmu@rc6-all-gts.html

  * igt@v3d/v3d_submit_cl@bad-pad:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([fdo#109315] / [i915#2575]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@v3d/v3d_submit_cl@bad-pad.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#2575])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  
#### Possible fixes ####

  * igt@gem_create@hog-create@smem0:
    - shard-dg2:          [FAIL][69] ([i915#5892] / [i915#8758]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-3/igt@gem_create@hog-create@smem0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-3/igt@gem_create@hog-create@smem0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][71] ([i915#6268]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [ABORT][73] ([i915#7975] / [i915#8213] / [i915#8398]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-tglu-10/igt@gem_eio@hibernate.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg2:          [FAIL][75] ([i915#5784]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-12/igt@gem_eio@kms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-8/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][77] ([i915#5784]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg1-14/igt@gem_eio@reset-stress.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          [FAIL][79] ([i915#2842]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - {shard-dg1}:        [ABORT][81] ([i915#7975] / [i915#8213]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg1-15/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-snb:          [INCOMPLETE][83] ([i915#8295]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-dg2:          [FAIL][85] ([fdo#103375] / [i915#6121]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-11/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [ABORT][87] ([i915#5566]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-apl6/igt@gen9_exec_parse@allowed-single.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-apl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [SKIP][89] ([i915#1397]) -> [PASS][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][91] ([i915#1397]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  
#### Warnings ####

  * igt@kms_content_protection@mei_interface:
    - shard-dg2:          [SKIP][93] ([i915#7118]) -> [SKIP][94] ([i915#7118] / [i915#7162])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-5/igt@kms_content_protection@mei_interface.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_content_protection@mei_interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][95] ([i915#3555] / [i915#7118] / [i915#7162]) -> [SKIP][96] ([i915#3555] / [i915#7118])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-11/igt@kms_content_protection@type1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-8/igt@kms_content_protection@type1.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][97] ([fdo#110189] / [i915#3955]) -> [SKIP][98] ([i915#3955])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][99] ([i915#3955]) -> [SKIP][100] ([fdo#110189] / [i915#3955])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [INCOMPLETE][101] ([i915#5493]) -> [CRASH][102] ([i915#7331])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-8/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5892]: https://gitlab.freedesktop.org/drm/intel/issues/5892
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8295]: https://gitlab.freedesktop.org/drm/intel/issues/8295
  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8682]: https://gitlab.freedesktop.org/drm/intel/issues/8682
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8758]: https://gitlab.freedesktop.org/drm/intel/issues/8758


Build changes
-------------

  * Linux: CI_DRM_13345 -> Patchwork_119913v2

  CI-20190529: 20190529
  CI_DRM_13345: 52c775d5fac7e50737584ba6cf643c1166d95855 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7369: 22009ac9c26ceec8450dd312f5c93fc01d986348 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119913v2: 52c775d5fac7e50737584ba6cf643c1166d95855 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/index.html

--===============8793261832165122270==
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
<tr><td><b>Series:</b></td><td>drm/i915/dram: replace __raw_uncore_read32() with intel_uncore_read_fw() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119913/">https://patchwork.freedesktop.org/series/119913/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13345_full -&gt; Patchwork_119913v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119913v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119913v2_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119913v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_sequence@queue-busy@hdmi-a-2-pipe-b:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-glk7/igt@kms_sequence@queue-busy@hdmi-a-2-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-glk9/igt@kms_sequence@queue-busy@hdmi-a-2-pipe-b.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13345_full and Patchwork_119913v2_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_plane_scaling@planes-upscale-20x20@pipe-c-dp-2:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119913v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-12/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-1/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8234">i915#8234</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-11/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-1/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-apl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@gem_exec_params@secure-non-master.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8682">i915#8682</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-y.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-glk6/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-glk8/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-tglu-9/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/404">i915#404</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_big_joiner@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-1/igt@kms_content_protection@lic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-apl1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-snb4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close@0-rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-glk9/igt@perf@stress-open-close@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-glk2/igt@perf@stress-open-close@0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7941">i915#7941</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-pad:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@v3d/v3d_submit_cl@bad-pad.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-3/igt@gem_create@hog-create@smem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5892">i915#5892</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8758">i915#8758</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-3/igt@gem_create@hog-create@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8398">i915#8398</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-tglu-9/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-12/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-8/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg1-14/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg1-13/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg1-15/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8295">i915#8295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctx0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-11/igt@gem_workarounds@suspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-apl6/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-apl1/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-5/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-12/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-8/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13345/shard-dg2-8/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119913v2/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7331">i915#7331</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13345 -&gt; Patchwork_119913v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13345: 52c775d5fac7e50737584ba6cf643c1166d95855 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7369: 22009ac9c26ceec8450dd312f5c93fc01d986348 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119913v2: 52c775d5fac7e50737584ba6cf643c1166d95855 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8793261832165122270==--
