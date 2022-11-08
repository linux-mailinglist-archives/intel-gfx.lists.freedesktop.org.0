Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1A9621F8D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 23:52:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D8C10E035;
	Tue,  8 Nov 2022 22:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1E4910E035;
 Tue,  8 Nov 2022 22:52:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9544A8830;
 Tue,  8 Nov 2022 22:52:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0792487038471901288=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 08 Nov 2022 22:52:44 -0000
Message-ID: <166794796491.2236.15473519591073017891@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107170917.3566758-1-imre.deak@intel.com>
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Enable_DC_power_states_on_all_eDP_ports_=28rev8?=
 =?utf-8?q?=29?=
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

--===============0792487038471901288==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl+: Enable DC power states on all eDP ports (rev8)
URL   : https://patchwork.freedesktop.org/series/110433/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12355_full -> Patchwork_110433v8_full
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

  Here are the changes found in Patchwork_110433v8_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_eio@hibernate:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-glk7/igt@gem_eio@hibernate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk1/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-tglb:         NOTRUN -> [FAIL][5] ([i915#5784])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([i915#4525]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-glk6/igt@gem_exec_fair@basic-none@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][12] -> [SKIP][13] ([i915#2190])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl7/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#5566] / [i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#3989] / [i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl7/igt@i915_pm_dc@dc6-psr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglb:         NOTRUN -> [WARN][19] ([i915#2681]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#2521])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#2521])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +54 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111614])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#110725] / [fdo#111614])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl4/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl7/igt@kms_color_chamelium@ctm-max.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][31] ([i915#180]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#72])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#2346]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +51 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl7/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2122])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#79]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#2587] / [i915#2672]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([i915#2672]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2672] / [i915#3555])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#6497])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109280])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109280] / [fdo#111825])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#658]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [FAIL][48] ([i915#5939]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([i915#5519])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#43])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl9/igt@kms_vblank@pipe-c-accuracy-idle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl3/igt@kms_vblank@pipe-c-accuracy-idle.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2994])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][56] ([i915#6268]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][58] ([fdo#103375]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-deadline:
    - {shard-rkl}:        [FAIL][60] ([i915#2846]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][62] ([i915#2842]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][64] ([i915#2842]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][66] ([i915#2842]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - {shard-rkl}:        [SKIP][68] ([i915#6251]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-4/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - {shard-rkl}:        [SKIP][70] ([i915#3281]) -> [PASS][71] +14 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_readwrite@read-bad-handle:
    - {shard-rkl}:        [SKIP][72] ([i915#3282]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-6/igt@gem_readwrite@read-bad-handle.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-5/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [FAIL][74] ([i915#4171]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-tglb6/igt@gem_softpin@evict-single-offset.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-tglb3/igt@gem_softpin@evict-single-offset.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][76] ([i915#5566] / [i915#716]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl7/igt@gen9_exec_parse@allowed-all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl4/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][78] ([i915#5566] / [i915#716]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-chained:
    - {shard-rkl}:        [SKIP][80] ([i915#2527]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - {shard-rkl}:        [SKIP][82] ([i915#3012]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-4/igt@i915_pm_backlight@fade_with_suspend.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-rkl}:        [WARN][84] ([i915#2681]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][86] -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl6/igt@i915_selftest@live@execlists.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl7/igt@i915_selftest@live@execlists.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1:
    - shard-skl:          [FAIL][88] ([i915#7230]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - {shard-rkl}:        [SKIP][90] ([i915#1845] / [i915#4098]) -> [PASS][91] +13 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-4/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - {shard-rkl}:        [SKIP][92] ([i915#1849] / [i915#4098]) -> [PASS][93] +10 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [SKIP][94] ([i915#5176]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][96] ([fdo#109441]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][98] ([i915#180]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@busy-double-start@vecs0:
    - {shard-dg1}:        [FAIL][100] ([i915#4349]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-dg1-16/igt@perf_pmu@busy-double-start@vecs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-dg1-16/igt@perf_pmu@busy-double-start@vecs0.html

  
#### Warnings ####

  * igt@gem_pread@exhaustion:
    - shard-glk:          [INCOMPLETE][102] ([i915#7248]) -> [WARN][103] ([i915#2658])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-glk2/igt@gem_pread@exhaustion.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk2/igt@gem_pread@exhaustion.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][104] ([i915#2920]) -> [SKIP][105] ([i915#658])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][106] ([i915#2920]) -> [SKIP][107] ([fdo#111068] / [i915#658])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115]) ([i915#180] / [i915#3002] / [i915#4312])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl7/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl7/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl1/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl6/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl6/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl3/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][122], [FAIL][123], [FAIL][124]) ([i915#3002] / [i915#4312])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl10/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl4/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl4/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl7/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl3/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl6/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl3/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl10/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
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
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
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
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7142]: https://gitlab.freedesktop.org/drm/intel/issues/7142
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7230]: https://gitlab.freedesktop.org/drm/intel/issues/7230
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12355 -> Patchwork_110433v8

  CI-20190529: 20190529
  CI_DRM_12355: 6e09529cef7c2dfdf199c3af1adb9c828d281d9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7048: 5edd5c539f1fdf1c02157bf43fa1fd22d4ad2c75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110433v8: 6e09529cef7c2dfdf199c3af1adb9c828d281d9b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/index.html

--===============0792487038471901288==
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
<tr><td><b>Series:</b></td><td>drm/i915/tgl+: Enable DC power states on all=
 eDP ports (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110433/">https://patchwork.freedesktop.org/series/110433/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110433v8/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110433v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12355_full -&gt; Patchwork_110433v=
8_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110433v8_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110433v8/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-glk7/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-glk1/=
igt@gem_eio@hibernate.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@gem_eio@kms.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#578=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110433v8/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
433v8/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-glk6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v=
8/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-=
tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-skl7/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl10/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433=
v8/shard-skl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl1=
0/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@i915_pm_rc6_residency@rc6-=
idle@rcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2681">i915#2681</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110433v8/shard-skl10/igt@kms_async_flips@alternate-sync-as=
ync-flip@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-c-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110433v8/shard-glk1/igt@kms_async_flips@alternate-sync-=
async-flip@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-apl3/igt@kms_big_fb@4-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +54 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@kms_big_fb@x-tiled-32bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_big_fb@x-tiled-32bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-skl4/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@kms_chamelium@vga-hpd-after=
-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-skl7/igt@kms_color_chamelium@ctm-max=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-apl3/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-c-dp-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legac=
y.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110433v8/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-=
legacy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110433v8/shard-glk2/igt@kms_cursor_legacy@flip-v=
s-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-skl7/igt@kms_flip@2x-flip-vs-rmfb.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110433v8/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vbl=
ank-interruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_110433v8/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@a-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6497">i915#6497</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110433v8/shard-tglb2/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-skl4/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-iclb2/igt@kms_psr2_su@page_flip-p010=
@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5939">i915#5939</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-i=
clb8/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110433v8/shard-iclb5/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl9/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433=
v8/shard-skl3/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110433v8/shard-apl2/igt@sysfs_clients@fair-0.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110433v8/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-4/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
433v8/shard-rkl-1/igt@gem_eio@in-flight-suspend.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0433v8/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10433v8/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110433v8/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110433v8/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6251">i915#625=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110433v8/shard-rkl-4/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281"=
>i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110433v8/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.h=
tml">PASS</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-6/igt@gem_readwrite@read-bad-handle.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10433v8/shard-rkl-5/igt@gem_readwrite@read-bad-handle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-tglb6/igt@gem_softpin@evict-single-offset.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#41=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110433v8/shard-tglb3/igt@gem_softpin@evict-single-offset.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_110433v8/shard-skl4/igt@gen9_exec_parse@allowed-all.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-apl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110433v8/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1104=
33v8/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html">PASS</a> +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-4/igt@i915_pm_backlight@fade_with_suspend.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i91=
5#3012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110433v8/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i91=
5#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110433v8/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl6/igt@i915_selftest@live@execlists.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
433v8/shard-skl7/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl3/igt@kms_async_flips@async-flip-with-page-flip-even=
ts@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7230">i915#7230</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110433v8/shard-skl6/igt@kms_async_flips@async=
-flip-with-page-flip-events@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-4/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110433v8/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size=
-offset-overflow.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-linear.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
49">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_110433v8/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-til=
ing-linear.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-iclb2/igt@=
kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-=
edp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-iclb3/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1104=
33v8/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110433v8/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-dg1-16/igt@perf_pmu@busy-double-start@vecs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#=
4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110433v8/shard-dg1-16/igt@perf_pmu@busy-double-start@vecs0.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-glk2/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11043=
3v8/shard-glk2/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110433v8/shard-iclb8/igt@kms_psr2_sf@overlay-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110433v8/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12355/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-apl1/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl6/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110433v8/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110433v8/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312<=
/a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12355/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12355/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12355/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12355/shard-skl6/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6949">i915#6949</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110433v8/shard-skl3/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11043=
3v8/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_110433v8/shard-skl10/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12355 -&gt; Patchwork_110433v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12355: 6e09529cef7c2dfdf199c3af1adb9c828d281d9b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7048: 5edd5c539f1fdf1c02157bf43fa1fd22d4ad2c75 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110433v8: 6e09529cef7c2dfdf199c3af1adb9c828d281d9b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0792487038471901288==--
