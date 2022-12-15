Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C0464DAEE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 13:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA4810E545;
	Thu, 15 Dec 2022 12:13:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BA8610E545;
 Thu, 15 Dec 2022 12:13:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43117A8830;
 Thu, 15 Dec 2022 12:13:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0269216563232085726=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 15 Dec 2022 12:13:38 -0000
Message-ID: <167110641822.25117.6401985709660530860@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
In-Reply-To: <20221214090758.3040356-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_HDCP2=2Ex_via_GSC_CS_=28rev3=29?=
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

--===============0269216563232085726==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable HDCP2.x via GSC CS (rev3)
URL   : https://patchwork.freedesktop.org/series/111876/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12502_full -> Patchwork_111876v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111876v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111876v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (14 -> 14)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111876v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes:
    - shard-skl:          [PASS][1] -> [WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl6/igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes.html

  
Known issues
------------

  Here are the changes found in Patchwork_111876v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all:
    - shard-tglb:         NOTRUN -> [SKIP][3] ([i915#6433])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@drm_mm@all.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#6268])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-snb:          [PASS][6] -> [SKIP][7] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-snb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-snb5/igt@gem_ctx_isolation@preservation-s3@rcs0.html
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#4793])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4525])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#4525])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-tglb:         [PASS][13] -> [TIMEOUT][14] ([i915#3778])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb5/igt@gem_exec_endless@dispatch@vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb7/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_pxp@display-protected-crc:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#4270])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@gem_pxp@display-protected-crc.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#109289])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#5566] / [i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl8/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#2527] / [i915#2856])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#6590])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#1937])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          NOTRUN -> [WARN][26] ([i915#1804])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +29 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#2521])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#5286]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#111615])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3689] / [i915#6095])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@vga-hpd:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_chamelium@vga-hpd.html

  * igt@kms_content_protection@uevent@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][37] ([i915#1339])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@kms_content_protection@uevent@pipe-a-dp-1.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3555]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_legacy@cursora-vs-flipa@legacy:
    - shard-tglb:         [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipa@legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipa@legacy.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#426])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         NOTRUN -> [FAIL][42] ([i915#2411] / [i915#4767])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#79])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#79])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#2587] / [i915#2672]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#2587] / [i915#2672])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +37 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
    - shard-iclb:         NOTRUN -> [SKIP][51] ([i915#2672]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#3555])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109285])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#6497]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109280] / [fdo#111825]) +6 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#5235]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-tglb:         NOTRUN -> [FAIL][59] ([i915#132] / [i915#3467]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#111615] / [i915#5289])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#1542])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl7/igt@perf@blocking.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl7/igt@perf@blocking.html

  * igt@sysfs_clients@fair-3:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#2994])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@sema-10:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2994])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][67] ([i915#2582]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-1/igt@fbdev@unaligned-read.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][69] ([i915#6252]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][71] ([i915#5784]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-19/igt@gem_eio@reset-stress.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-dg1-15/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][73] ([i915#4525]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [FAIL][75] ([i915#2842]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-glk8/igt@gem_exec_fair@basic-none@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - {shard-rkl}:        [SKIP][77] ([i915#3281]) -> [PASS][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - {shard-rkl}:        [SKIP][79] ([i915#3282]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_softpin@evict-single-offset:
    - {shard-rkl}:        [FAIL][81] ([i915#4171]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-4/igt@gem_softpin@evict-single-offset.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-2/igt@gem_softpin@evict-single-offset.html

  * igt@gen9_exec_parse@valid-registers:
    - {shard-rkl}:        [SKIP][83] ([i915#2527]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-tglu}:       [FAIL][85] ([i915#3989] / [i915#454]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglu-8/igt@i915_pm_dc@dc6-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - {shard-dg1}:        [FAIL][87] ([i915#3591]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-rkl}:        [WARN][89] ([i915#2681]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][91] ([fdo#109308]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-1/igt@i915_pm_rpm@i2c.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-dg1}:        [SKIP][93] ([i915#1397]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][95] ([i915#5334]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - {shard-dg1}:        [INCOMPLETE][97] ([i915#4983]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-19/igt@i915_selftest@live@hangcheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-dg1-14/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][99] ([i915#7233]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@i915_suspend@debugfs-reader.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@forcewake:
    - {shard-rkl}:        [FAIL][101] ([fdo#103375]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-4/igt@i915_suspend@forcewake.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-2/igt@i915_suspend@forcewake.html
    - shard-skl:          [INCOMPLETE][103] ([i915#4817] / [i915#7233]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl1/igt@i915_suspend@forcewake.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl4/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][105] ([i915#2346]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][107] ([i915#2122]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][109] ([i915#79]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - {shard-rkl}:        [SKIP][111] ([i915#1849] / [i915#4098]) -> [PASS][112] +17 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - {shard-rkl}:        [SKIP][113] ([i915#1849] / [i915#3558]) -> [PASS][114] +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@kms_plane@pixel-format@pipe-a-planes.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][115] -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-edp-1:
    - shard-skl:          [DMESG-WARN][117] ([i915#1982]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl6/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-edp-1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl7/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-edp-1.html

  * igt@kms_properties@plane-properties-atomic:
    - {shard-rkl}:        [SKIP][119] ([i915#1849]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr@cursor_mmap_gtt:
    - {shard-rkl}:        [SKIP][121] ([i915#1072]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-1/igt@kms_psr@cursor_mmap_gtt.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][123] ([fdo#109441]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][125] ([i915#180]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
    - {shard-dg1}:        [FAIL][127] ([fdo#103375]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-14/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-dg1-12/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-busy-hang:
    - {shard-rkl}:        [SKIP][129] ([i915#1845] / [i915#4098]) -> [PASS][130] +23 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@kms_vblank@pipe-b-wait-busy-hang.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-rkl-6/igt@kms_vblank@pipe-b-wait-busy-hang.html

  
#### Warnings ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          [INCOMPLETE][131] ([i915#6949]) -> [TIMEOUT][132] ([i915#6949])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl1/igt@dmabuf@all@dma_fence_chain.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl4/igt@dmabuf@all@dma_fence_chain.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][133] ([i915#4525]) -> [FAIL][134] ([i915#6117])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][135] ([i915#588]) -> [SKIP][136] ([i915#658])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][137] ([i915#2920]) -> [SKIP][138] ([fdo#111068] / [i915#658])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][139] ([i915#2920]) -> [SKIP][140] ([i915#658])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][141] ([fdo#111068] / [i915#658]) -> [SKIP][142] ([i915#2920])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][143], [FAIL][144], [FAIL][145]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][146], [FAIL][147]) ([i915#3002] / [i915#4312])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][148], [FAIL][149], [FAIL][150]) ([i915#3002] / [i915#4312]) -> ([FAIL][151], [FAIL][152], [FAIL][153]) ([fdo#109271] / [i915#3002] / [i915#4312])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl3/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl8/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl8/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl6/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl8/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7233]: https://gitlab.freedesktop.org/drm/intel/issues/7233
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7672]: https://gitlab.freedesktop.org/drm/intel/issues/7672
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12502 -> Patchwork_111876v3

  CI-20190529: 20190529
  CI_DRM_12502: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7092: 59e3bf83f6bae0918276f880f969a10d279c657a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111876v3: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/index.html

--===============0269216563232085726==
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
<tr><td><b>Series:</b></td><td>Enable HDCP2.x via GSC CS (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111876/">https://patchwork.freedesktop.org/series/111876/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111876v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111876v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12502_full -&gt; Patchwork_111876v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111876v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_111876v3_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (14 -&gt; 14)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111876v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl4/igt@gem_exec_fence@syncobj-timeline-multiple-ext-n=
odes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111876v3/shard-skl6/igt@gem_exec_fence@syncobj-timeline-multip=
le-ext-nodes.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111876v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@drm_mm@all.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6433">i915#6433=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876=
v3/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12502/shard-snb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111876v3/shard-snb5/igt@gem_ctx_isolation@preservation-s3@rcs0.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1=
09271</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12502/shard-skl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111876v3/shard-skl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4793">=
i915#4793</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@gem_exec_balancer@parallel-=
bb-first.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111876v3/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-tglb5/igt@gem_exec_endless@dispatch@vcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876=
v3/shard-tglb5/igt@gem_exec_endless@dispatch@vcs0.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
876v3/shard-tglb7/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@gen7_exec_parse@basic-allo=
cation.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v=
3/shard-apl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@gen9_exec_parse@cmd-crossi=
ng-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl6/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111876v3/shard-skl7/igt@i915_module_load@reload-with-fault-injection=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@i915_pm_rc6_residency@rc6-i=
dle@vcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1804">i915#1804</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@i915_pm_rpm@modeset-lpsp.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111876v3/shard-glk6/igt@kms_async_flips@alternate-sync-=
async-flip@pipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-=
data-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-skl4/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_ccs@pipe-d-ccs-on-anot=
her-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_chamelium@vga-hpd.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10928=
4">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-apl2/igt@kms_content_protection@ueve=
nt@pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_cursor_crc@cursor-rand=
om-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa@legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipa@legacy.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111876v3/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipa@legacy.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_dp_tiled_display@basic=
-test-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/426">i915#426</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111876v3/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@a-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111876v3/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@kms_flip_scaled_crc@flip-64b=
pp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a>) +37 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64=
bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6497">i915#6497</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb8/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_psr@psr2_primary_mmap_=
cpu.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3467">i915#3467</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v=
3/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl7/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl7/igt@=
perf@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@sysfs_clients@fair-3.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@sysfs_clients@sema-10.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-1/igt@fbdev@unaligned-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/=
shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876=
v3/shard-rkl-6/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-dg1-19/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/=
shard-dg1-15/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111876v3/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-glk8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11876v3/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11876v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html">PASS</a> +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_111876v3/shard-rkl-5/igt@gem_partial_pwrite_pread@wri=
tes-after-reads-uncached.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-4/igt@gem_softpin@evict-single-offset.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#41=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111876v3/shard-rkl-2/igt@gem_softpin@evict-single-offset.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#25=
27</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111876v3/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-tglu-8/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11187=
6v3/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111876v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i91=
5#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111876v3/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-1/igt@i915_pm_rpm@i2c.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shar=
d-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i9=
15#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111876v3/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111876v3/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-dg1-19/igt@i915_selftest@live@hangcheck.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4983">i91=
5#4983</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111876v3/shard-dg1-14/igt@i915_selftest@live@hangcheck.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7233">i915#7=
233</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111876v3/shard-skl1/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12502/shard-rkl-4/igt@i915_suspend@forcewake.html">FAIL</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v=
3/shard-rkl-2/igt@i915_suspend@forcewake.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12502/shard-skl1/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7233">i915#7=
233</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111876v3/shard-skl4/igt@i915_suspend@forcewake.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111876v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-curso=
r@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl4/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@kms_flip@flip-vs-absolute-=
wf_vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111876v3/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i9=
15#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111876v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.h=
tml">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-5/igt@kms_plane@pixel-format@pipe-a-planes.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i9=
15#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
58">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111876v3/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.h=
tml">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a-planes.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111876v3/shard-tglb5/igt@kms_plane@plane-pannin=
g-bottom-right-suspend@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-ed=
p-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl6/igt@kms_plane_scaling@plane-upscale-with-modifiers=
-factor-0-25@pipe-c-edp-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl7/igt@kms_p=
lane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-edp-1.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111876v3/shard-rkl-6/igt@kms_properties@plane-properties-atomic.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-1/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v=
3/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html">PASS</a> +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111876v3/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12502/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111876v3/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-susp=
end.html">PASS</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12502/shard-dg1-14/igt@kms_vblank@pipe-b-ts-continuation-suspend.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1033=
75">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111876v3/shard-dg1-12/igt@kms_vblank@pipe-b-ts-continuation-su=
spend.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-busy-hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-rkl-5/igt@kms_vblank@pipe-b-wait-busy-hang.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1=
845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">=
i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111876v3/shard-rkl-6/igt@kms_vblank@pipe-b-wait-busy-hang.html">PAS=
S</a> +23 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl1/igt@dmabuf@all@dma_fence_chain.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#69=
49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111876v3/shard-skl4/igt@dmabuf@all@dma_fence_chain.html">TIMEOUT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</a>)=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111876v3/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11876v3/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111876v3/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111876v3/shard-iclb8/igt@kms_psr2_sf@overlay-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111876v3/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12502/shard-skl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876=
v3/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111876v3/shard-skl1/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12502/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12502/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v3/sha=
rd-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111876v3/shard-apl8/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
876v3/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12502 -&gt; Patchwork_111876v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12502: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7092: 59e3bf83f6bae0918276f880f969a10d279c657a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111876v3: cc44a1e87ea6b788868878295119398966f98a81 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0269216563232085726==--
